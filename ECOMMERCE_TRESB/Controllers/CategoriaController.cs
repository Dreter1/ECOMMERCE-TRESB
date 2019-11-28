using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.Services;
using ECOMMERCE_TRESB.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text.RegularExpressions;

namespace ECOMMERCE_TRESB.Controllers
{
    public class CategoriaController : BaseAutController
    {
        private readonly ICategoriaService servicio;
        private readonly ISessionService session;

        public CategoriaController(ICategoriaService servicio, ISessionService session)
        {
            this.servicio = servicio;
            this.session = session;
        }

        [HttpGet]
        public ActionResult Listar()
        {
            if (session.EsAdministrativo())
                return View(servicio.GetCategoriasAsList());

            return RedirectToAction("Index","Error");
        }

        [HttpGet]
        public ActionResult Crear()
        {
            if (session.EsAdministrativo())
                return View(new CategoriaView());

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Crear(CategoriaView categoriaView)
        {
            if (session.EsAdministrativo())
            {
                ValidarCategoria(categoriaView);
                if (!ModelState.IsValid)
                    return View(categoriaView);

                if (servicio.ExisteCategoria(categoriaView.Nombre))
                {
                    ViewBag.ExisteCategoria = "La categoria ya existe, intente con otra";
                    return View(categoriaView);
                }

                Categoria categoria = servicio.CategoriaViewToCategoria(categoriaView);
                servicio.GuardarCategoria(categoria);

                return RedirectToAction("Listar", "Categoria");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Editar(int? IdCategoria)
        {
            if (session.EsAdministrativo())
            {
                if (IdCategoria == null)
                    return RedirectToAction("Index", "Error");

                Categoria categoria = servicio.GetCategoriaById(IdCategoria);

                if (categoria == null)
                    return RedirectToAction("Index", "Error");

                CategoriaView categoriaView = servicio.CategoriaToCategoriaView(categoria);

                return View(categoriaView);
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Editar(int? IdCategoria, CategoriaView categoriaView)
        {
            if (session.EsAdministrativo())
            {
                if (IdCategoria == null)
                    return RedirectToAction("Index", "Error");

                ValidarCategoria(categoriaView);
                if (!ModelState.IsValid)
                    return View(categoriaView);

                if (servicio.ExisteCategoria(categoriaView.Nombre))
                {
                    ViewBag.ExisteCategoria = "La categoria ya existe, intente con otra";
                    return View(categoriaView);
                }

                Categoria categoria = servicio.CategoriaViewToCategoria(categoriaView);
                servicio.EditarCategoria(IdCategoria, categoria);

                return RedirectToAction("Listar", "Categoria");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Eliminar(int? IdCategoria)
        {
            if (session.EsAdministrativo())
            {
                if (IdCategoria == null)
                    return RedirectToAction("Index", "Error");

                if (servicio.CategoriaTieneProducto(IdCategoria))
                    return RedirectToAction("Listar", "Categoria");
                    
                servicio.EliminarCategoria(IdCategoria);
                return RedirectToAction("Listar", "Categoria");
            }

            return RedirectToAction("Index", "Error");
        }

        private void ValidarCategoria(CategoriaView categoriaView)
        {
            string LetrasRegex = @"^[a-zA-Z\s]+$";

            if (string.IsNullOrEmpty(categoriaView.Nombre))
                ModelState.AddModelError("Nombre", "Campo Obligatorio");
            if (string.IsNullOrEmpty(categoriaView.Nombre) || categoriaView.Nombre.Length <= 0)
                ModelState.AddModelError("Nombre", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(categoriaView.Nombre) || categoriaView.Nombre.Length > 100)
                ModelState.AddModelError("Nombre", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(categoriaView.Nombre) || Regex.IsMatch(categoriaView.Nombre, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombre", "Solo se aceptan letras");
        }
    }
}