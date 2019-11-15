using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.Services;
using ECOMMERCE_TRESB.Interfaces;
using ECOMMERCE_TRESB.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text.RegularExpressions;

namespace ECOMMERCE_TRESB.Controllers
{
    public class HomeController : Controller
    {
        private readonly IUsuarioService servicio;
        private readonly IAutManager autenticacion;
        private readonly ISessionService session;
        private readonly ICategoriaService categoriaService;

        public HomeController(IUsuarioService servicio, IAutManager autenticacion, ISessionService session, ICategoriaService categoriaService)
        {
            this.servicio = servicio;
            this.autenticacion = autenticacion;
            this.session = session;
            this.categoriaService = categoriaService;
        }

        public ActionResult Index()
        {
            ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();
            return View();
        }

        public ActionResult Nosotros()
        {
            ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();
            return View();
        }

        public ActionResult Contacto()
        {
            ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();
            return View();
        }

        [HttpGet]
        public ActionResult Registrarse()
        {
            return View(new UsuarioView());
        }

        [HttpPost]
        public ActionResult Registrarse(UsuarioView usuarioView)
        {
            Usuario(usuarioView);
            if (!ModelState.IsValid)
                return View(usuarioView);

            if (servicio.ExisteElCorreo(usuarioView.Email))
            {
                ViewBag.CorreoExistente = InfoAtributos.ERROR.CORREO_REGISTRADO;
                ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();
                return View(usuarioView);
            }

            Usuario usuario = servicio.UsuarioViewToUsuario(usuarioView);
            servicio.GuardarUsuario(usuario);

            return RedirectToAction("Login", "Home");
        }

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string Correo, string Clave)
        {
            if (Correo == "" || Clave == "")
            {
                TempData["Error"] = "Usuario o clave incorrecta";
                ViewBag.UsuarioOClaveIncorrecta = TempData["Error"];
                return View();
            }

            Usuario usuario = servicio.GetUsuarioByCorreoAndClave(Correo, Clave);

            if (usuario != null)
            {
                autenticacion.Login(usuario);
                session.GuardarSesion(usuario);
                return RedirectToAction("Index", "Producto");
            }

            TempData["Error"] = "Usuario o clave incorrecta";
            ViewBag.UsuarioOClaveIncorrecta = TempData["Error"];
            return View();
        }

        [HttpGet]
        public ActionResult Productos(int? Categoria, int? pagina)
        {

            if (Categoria == null)
                Categoria = 1;

            if (pagina == null)
                pagina = 1;

            Categoria categoria = categoriaService.GetCategoriaById(Categoria);
            ViewBag.Page = pagina;
            ViewBag.ListaUsuarios = servicio.GetUsuariosAsList();

            return View(categoria);
        }

        public ActionResult LogOut()
        {
            autenticacion.Logout();
            session.LimpiarSesion();
            return RedirectToAction("Index", "Home");
        }

        public bool IsLogged()
        {
            if (Session["UsuarioId"] != null && Session["Cargo"] != null)
                return true;

            return false;
        }

        private void Usuario(UsuarioView usuarioView)
        {
            string LetrasRegex = @"^[a-zA-Z\s]+$";
            string NumerosRegex = @"^(0|[1-9]\d*)$";
            string EmailRegex = @"^(('[\w-\s]+')|([\w-]+(?:\.[\w-]+)*)|('[\w-\s]+')([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)";

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

            if (usuarioView.FechaNacimiento == null)
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
    }
}