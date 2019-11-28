using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.Services;
using ECOMMERCE_TRESB.Interfaces;
using System.Text.RegularExpressions;

namespace ECOMMERCE_TRESB.Controllers
{
    public class UsuarioController : BaseAutController
    {
        private readonly IUsuarioService servicio;
        private readonly ISessionService session;

        public UsuarioController(IUsuarioService servicio, ISessionService session)
        {
            this.servicio = servicio;
            this.session = session;
        }
        public ActionResult Index()
        {
            if (session.EsPersonalDeLaTienda())
                return View();

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Listar()
        {
            if (session.EsAdministrativo())
                return View(servicio.GetUsuariosVendedorYAdminAsList());

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Crear()
        {
            if (session.EsAdministrativo())
                return View(new UsuarioView());

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Crear(UsuarioView UsuarioView)
        {
            if (session.EsAdministrativo())
            {
                ValidarUsuario(UsuarioView);
                if (!ModelState.IsValid)
                    return View(UsuarioView);

                if (servicio.ExisteElCorreo(UsuarioView.Email))
                {
                    ViewBag.ExisteCorreo = InfoAtributos.Error.CORREO_REGISTRADO;
                    ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();
                    return View(UsuarioView);
                }

                Usuario usuario = servicio.UsuarioViewToUsuario(UsuarioView);
                servicio.GuardarPersonal(usuario);

                return RedirectToAction("Listar", "Usuario");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Detalle(int? IdUsuario)
        {
            if (session.EsAdministrativo())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                Usuario usuario = servicio.GetUsuarioById(IdUsuario);

                if (usuario == null)
                    return RedirectToAction("Index", "Error");

                return View(usuario);
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Editar(int? IdUsuario)
        {
            if (session.EsAdministrativo())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                Usuario usuario = servicio.GetUsuarioById(IdUsuario);

                if (usuario == null)
                    return RedirectToAction("Index", "Error");

                UsuarioEditarView usuarioEditarView = servicio.UsuarioToUsuarioEditarView(usuario);

                return View(usuarioEditarView);
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Editar(int? IdUsuario, UsuarioEditarView usuarioEditarView)
        {
            if (session.EsAdministrativo())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                ValidarEditarUsuario(usuarioEditarView);
                if (!ModelState.IsValid)
                    return View(usuarioEditarView);

                Usuario usuario = servicio.UsuarioEditarViewToUsuario(usuarioEditarView);
                servicio.EditarUsuario(IdUsuario, usuario);

                return RedirectToAction("Listar", "Usuario");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Eliminar(int? IdUsuario)
        {
            if (session.EsAdministrativo())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                servicio.EliminarUsuario(IdUsuario);
                return RedirectToAction("Listar", "Usuario");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Perfil(int? IdUsuario)
        {
            if (session.IsLogged())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                Usuario usuario = servicio.GetUsuarioById(IdUsuario);

                if (usuario == null)
                    return RedirectToAction("Index", "Error");

                if (!session.EsSuSession(IdUsuario))
                    return RedirectToAction("Index", "Error");

                UsuarioPerfilEditView usuarioPerfilEditView = servicio.UsuarioToUsuarioPerfilEditView(usuario);
                ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();

                return View(usuarioPerfilEditView);
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Perfil(int? IdUsuario, UsuarioPerfilEditView usuarioPerfilEditView)
        {
            if (session.IsLogged())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                ValidarEditarPerfilUsuario(usuarioPerfilEditView);
                if (!ModelState.IsValid) { 
                    ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();
                    return View(usuarioPerfilEditView);
                }

                if (IdUsuario != 0)
                {
                    Usuario usuario = servicio.UsuarioPerfilEditViewToUsuario(usuarioPerfilEditView);
                    servicio.EditarUsuario(IdUsuario, usuario);
                    ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();

                    return RedirectToAction("Perfil", "Usuario", new { IdUsuario = IdUsuario });
                }

                return RedirectToAction("Index", "Error");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public bool GuardarDireccionDeUsuario(int? IdUsuario, string Calle, string Pais, string Region, string Ciudad, string CodigoPostal)
        {
            if (string.IsNullOrEmpty(Calle) || string.IsNullOrEmpty(Pais) || string.IsNullOrEmpty(Ciudad) || string.IsNullOrEmpty(CodigoPostal))
                return false;

            Usuario usuario = servicio.GetUsuarioById(IdUsuario);

            if (usuario == null)
                return false;

            servicio.AgregarDireccionUsuario(usuario, Calle, Pais, Region, Ciudad, CodigoPostal);
            return true;
        }


        readonly string LetrasRegex = @"^[a-zA-Z\s]+$";
        readonly string NumerosRegex = @"^(0|[1-9]\d*)$";
        readonly string EmailRegex = @"^(('[\w-\s]+')|([\w-]+(?:\.[\w-]+)*)|('[\w-\s]+')([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)";

        private void ValidarUsuario(UsuarioView usuarioView)
        {
            if (string.IsNullOrEmpty(usuarioView.Email))
                ModelState.AddModelError("Email", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Email) || usuarioView.Email.Length <= 0)
                ModelState.AddModelError("Email", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Email) || usuarioView.Email.Length > 100)
                ModelState.AddModelError("Email", "No puede tener mas de 100 caracteres");
            bool isEmailValid = string.IsNullOrEmpty(usuarioView.Email) || Regex.IsMatch(usuarioView.Email, EmailRegex);
            if (!isEmailValid)
                ModelState.AddModelError("Email", "Ingrese un Email Correcto");

            if (string.IsNullOrEmpty(usuarioView.Clave))
                ModelState.AddModelError("Clave", "Campo Obligatorio");

            if (string.IsNullOrEmpty(usuarioView.Nombres))
                ModelState.AddModelError("Nombres", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Nombres) || usuarioView.Nombres.Length <= 0)
                ModelState.AddModelError("Nombres", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Nombres) || usuarioView.Nombres.Length > 100)
                ModelState.AddModelError("Nombres", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(usuarioView.Nombres) || Regex.IsMatch(usuarioView.Nombres, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombres", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioView.Apellidos))
                ModelState.AddModelError("Apellidos", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Apellidos) || usuarioView.Apellidos.Length <= 0)
                ModelState.AddModelError("Apellidos", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Apellidos) || usuarioView.Apellidos.Length > 100)
                ModelState.AddModelError("Apellidos", "No puede tener mas de 100 caracteres");
            bool isApellidosValid = string.IsNullOrEmpty(usuarioView.Apellidos) || Regex.IsMatch(usuarioView.Apellidos, LetrasRegex);
            if (!isApellidosValid)
                ModelState.AddModelError("Apellidos", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioView.FechaNacimiento.ToString()))
                ModelState.AddModelError("FechaNacimiento", "Campo Obligatorio");

            if (string.IsNullOrEmpty(usuarioView.Celular))
                ModelState.AddModelError("Celular", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Celular) || usuarioView.Celular.Length <= 0)
                ModelState.AddModelError("Celular", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Celular) || usuarioView.Celular.Length > 12)
                ModelState.AddModelError("Celular", "No puede tener mas de 12 caracteres");
            bool isCelularValid = string.IsNullOrEmpty(usuarioView.Celular) || Regex.IsMatch(usuarioView.Celular, NumerosRegex);
            if (!isCelularValid)
                ModelState.AddModelError("Celular", "Solo se aceptan numeros");
        }

        private void ValidarEditarUsuario(UsuarioEditarView usuarioEditarView)
        {
            if (string.IsNullOrEmpty(usuarioEditarView.Nombres))
                ModelState.AddModelError("Nombres", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioEditarView.Nombres) || usuarioEditarView.Nombres.Length <= 0)
                ModelState.AddModelError("Nombres", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioEditarView.Nombres) || usuarioEditarView.Nombres.Length > 100)
                ModelState.AddModelError("Nombres", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(usuarioEditarView.Nombres) || Regex.IsMatch(usuarioEditarView.Nombres, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombres", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioEditarView.Apellidos))
                ModelState.AddModelError("Apellidos", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioEditarView.Apellidos) || usuarioEditarView.Apellidos.Length <= 0)
                ModelState.AddModelError("Apellidos", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioEditarView.Apellidos) || usuarioEditarView.Apellidos.Length > 100)
                ModelState.AddModelError("Apellidos", "No puede tener mas de 100 caracteres");
            bool isApellidosValid = string.IsNullOrEmpty(usuarioEditarView.Apellidos) || Regex.IsMatch(usuarioEditarView.Apellidos, LetrasRegex);
            if (!isApellidosValid)
                ModelState.AddModelError("Apellidos", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioEditarView.FechaNacimiento.ToString()))
                ModelState.AddModelError("FechaNacimiento", "Campo Obligatorio");

            if (string.IsNullOrEmpty(usuarioEditarView.Celular))
                ModelState.AddModelError("Celular", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioEditarView.Celular) || usuarioEditarView.Celular.Length <= 0)
                ModelState.AddModelError("Celular", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioEditarView.Celular) || usuarioEditarView.Celular.Length > 12)
                ModelState.AddModelError("Celular", "No puede tener mas de 12 caracteres");
            bool isCelularValid = string.IsNullOrEmpty(usuarioEditarView.Celular) || Regex.IsMatch(usuarioEditarView.Celular, NumerosRegex);
            if (!isCelularValid)
                ModelState.AddModelError("Celular", "Solo se aceptan numeros");
        }

        private void ValidarEditarPerfilUsuario(UsuarioPerfilEditView usuarioPerfilEditView)
        {
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Nombres))
                ModelState.AddModelError("Nombres", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Nombres) || usuarioPerfilEditView.Nombres.Length <= 0)
                ModelState.AddModelError("Nombres", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Nombres) || usuarioPerfilEditView.Nombres.Length > 100)
                ModelState.AddModelError("Nombres", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(usuarioPerfilEditView.Nombres) || Regex.IsMatch(usuarioPerfilEditView.Nombres, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombres", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos))
                ModelState.AddModelError("Apellidos", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos) || usuarioPerfilEditView.Apellidos.Length <= 0)
                ModelState.AddModelError("Apellidos", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos) || usuarioPerfilEditView.Apellidos.Length > 100)
                ModelState.AddModelError("Apellidos", "No puede tener mas de 100 caracteres");
            bool isApellidosValid = string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos) || Regex.IsMatch(usuarioPerfilEditView.Apellidos, LetrasRegex);
            if (!isApellidosValid)
                ModelState.AddModelError("Apellidos", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioPerfilEditView.Celular))
                ModelState.AddModelError("Celular", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Celular) || usuarioPerfilEditView.Celular.Length <= 0)
                ModelState.AddModelError("Celular", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Celular) || usuarioPerfilEditView.Celular.Length > 12)
                ModelState.AddModelError("Celular", "No puede tener mas de 12 caracteres");
            bool isCelularValid = string.IsNullOrEmpty(usuarioPerfilEditView.Celular) || Regex.IsMatch(usuarioPerfilEditView.Celular, NumerosRegex);
            if (!isCelularValid)
                ModelState.AddModelError("Celular", "Solo se aceptan numeros");
        }
    }
}