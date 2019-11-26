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
    public class ProductoController : BaseAutController
    {
        private readonly IProductoService servicio;
        private readonly IUsuarioService UsarioSession;
        private readonly ICategoriaService categoriaService;
        private readonly IComentariosSerivce comentarios;
        private readonly ISessionService session;

        public ProductoController(IProductoService servicio, IUsuarioService UsarioSession, ICategoriaService categoriaService, IComentariosSerivce comentarios, ISessionService session)
        {
            this.servicio = servicio;
            this.UsarioSession = UsarioSession;
            this.categoriaService = categoriaService;
            this.comentarios = comentarios;
            this.session = session;
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Index(int? IdCategoria, int? page)
        {

            if (IdCategoria == null)
                IdCategoria = 1;
            if (page == null)
                page = 1;

            ViewBag.ListaCategoria = categoriaService.GetCategoriasAsList();
            ViewBag.IdCategoria = IdCategoria;
            ViewBag.Categoria = categoriaService.GetCategoriaById(IdCategoria).Nombre;
            ViewBag.Page = page;
            ViewBag.TotalPages = servicio.GetTotalPages(IdCategoria);
            ViewBag.ListaUsuarios = UsarioSession.GetUsuariosAsList();

            return View();
        }

        [HttpGet]
        public ActionResult Listar()
        {
            if (session.EsPersonalDeLaTienda())
                return View(servicio.GetProductosAsList());

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Crear()
        {
            if (session.EsPersonalDeLaTienda())
            {
                ViewBag.ListaCategoria = categoriaService.GetCategoriasAsList();
                return View(new ProductoView());
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Crear(ProductoView productoView)
        {
            if (session.EsPersonalDeLaTienda())
            {
                validarProducto(productoView);
                if (!ModelState.IsValid)
                {
                    ViewBag.ListaCategoria = categoriaService.GetCategoriasAsList();
                    return View(productoView);
                }

                if (productoView.Stock > 0 && productoView.PrecioUnitario > 0)
                {
                    Producto producto = servicio.ProductViewToProducto(productoView);
                    servicio.AsignarRutaDeImagen(productoView, producto);
                    servicio.GuardarProducto(producto);
                    return RedirectToAction("Listar", "Producto");
                }
                ViewBag.ListaCategoria = categoriaService.GetCategoriasAsList();
                ViewBag.StockPrecio = "El precio o stock no puede ser 0, intentelo de nuevo";
                return View(productoView);
            }

            return RedirectToAction("Index", "Error");
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Detalle(int? IdProducto)
        {
            if (IdProducto == null)
                return RedirectToAction("Index", "Error");

            Producto producto = servicio.GetProductoById(IdProducto);

            if (producto == null)
            {
                return RedirectToAction("Index", "Error");
            }

            ViewBag.ListaUsuarios = UsarioSession.GetUsuariosAsList();
            ViewBag.ComentariosUsuarios = comentarios.GetComentariosAsListByProductId(IdProducto);

            return View(producto);
        }

        [HttpPost]
        public bool GuardarComentarioAProducto(int IdUsuario, int IdProducto, string Texto)
        {

            Usuario usuario = UsarioSession.GetUsuarioById(IdUsuario);
            Producto producto = servicio.GetProductoById(IdProducto);

            if (usuario == null && producto == null)
                return false;

            if (string.IsNullOrEmpty(Texto))
                return false;

            comentarios.GuardarComentario(usuario, producto, Texto);
            return true;
        }

        [HttpPost]
        public bool ExisteProductoIdYUsuarioIdEnComentarios(int? IdUsuario, int? IdProducto)
        {
            if (IdUsuario == null && IdProducto == null)
                return false;

            var existeEnProductoComentario = comentarios.ExisteProductIdAndUserIdEnComentarios(IdUsuario, IdProducto);

            if (!existeEnProductoComentario)
                return true;

            return false;
        }

        [HttpGet]
        public ActionResult Editar(int? IdProducto)
        {
            if (session.EsAdministrativo())
            {
                if (IdProducto == null)
                    return RedirectToAction("Index", "Error");

                Producto producto = servicio.GetProductoById(IdProducto);

                if (producto == null)
                    return RedirectToAction("Index", "Error");

                ProductoView productoView = servicio.ProductoToProductView(producto);

                ViewBag.ListaCategoria = categoriaService.GetCategoriasAsList();
                return View(productoView);
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public ActionResult Editar(int? IdProducto, ProductoView productoView)
        {
            if (session.EsAdministrativo())
            {
                if (IdProducto == null)
                    return RedirectToAction("Index", "Error");

                validarProducto(productoView);
                if (ModelState.IsValid && productoView.Stock > 0 && productoView.PrecioUnitario > 0)
                {
                    Producto producto = servicio.ProductViewToProducto(productoView);
                    servicio.AsignarRutaDeImagen(productoView, producto);
                    servicio.EditarProducto(IdProducto, producto);
                    return RedirectToAction("Listar", "Producto");
                }
                ViewBag.StockPrecio = "El precio o stock no puede ser 0, intentelo de nuevo";
                ViewBag.ListaCategoria = categoriaService.GetCategoriasAsList();
                return View(productoView);

            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Eliminar(int? IdProducto)
        {
            if (session.EsAdministrativo())
            {
                if (IdProducto == null)
                    return RedirectToAction("Index", "Error");

                servicio.EliminarProducto(IdProducto);
                return RedirectToAction("Listar", "Producto");
            }

            return RedirectToAction("Index", "Error");
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult GetProductByIdAsJson(int idProducto)
        {

            Producto producto = servicio.GetProductoById(idProducto);

            return Json(new
            {
                producto.Id,
                producto.Nombre,
                producto.PrecioUnitario,
                producto.Stock
            }, JsonRequestBehavior.AllowGet);
        }

        [AllowAnonymous]
        [HttpGet]
        public ActionResult _GetProductosAsView(int IdCategoria, int index, int NumItems)
        {
            List<Producto> productos = servicio.GetProductsAsListByCategory(IdCategoria, index, NumItems);

            return View(productos);
        }

        private void validarProducto(ProductoView productoView)
        {
            string LetrasRegex = @"^[a-zA-Z\s]+$";
            string NumerosRegex = @"^(0|[1-9]\d*)$";
            string NumeroDecimalRegex = @"^[0-9]+([.])?([0-9]+)?$";

            if (string.IsNullOrEmpty(productoView.Nombre))
                ModelState.AddModelError("Nombre", "Campo Obligatorio");
            if (string.IsNullOrEmpty(productoView.Nombre) || productoView.Nombre.Length <= 0)
                ModelState.AddModelError("Nombre", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(productoView.Nombre) || productoView.Nombre.Length > 100)
                ModelState.AddModelError("Nombre", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(productoView.Nombre) || Regex.IsMatch(productoView.Nombre, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombre", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(productoView.Descripcion))
                ModelState.AddModelError("Descripcion", "Campo Obligatorio");
            if (string.IsNullOrEmpty(productoView.Descripcion) || productoView.Descripcion.Length <= 0)
                ModelState.AddModelError("Descripcion", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(productoView.Descripcion) || productoView.Descripcion.Length > 2000)
                ModelState.AddModelError("Descripcion", "No puede tener mas de 2000 caracteres");

            if (productoView.Stock == 0 || string.IsNullOrEmpty(productoView.Stock.ToString()))
                ModelState.AddModelError("Stock", "Campo Obligatorio");
            bool isStockValid = productoView.Stock == 0 || string.IsNullOrEmpty(productoView.Stock.ToString()) || Regex.IsMatch(productoView.Stock.ToString(), NumerosRegex);
            if (!isStockValid)
                ModelState.AddModelError("Stock", "Ingrese un stock valido, solo numeros");

            if (productoView.PrecioUnitario == 0 || string.IsNullOrEmpty(productoView.PrecioUnitario.ToString()))
                ModelState.AddModelError("PrecioUnitario", "Campo Obligatorio");
            bool isPrecioUnitarioValid = productoView.PrecioUnitario == 0 || string.IsNullOrEmpty(productoView.PrecioUnitario.ToString()) || Regex.IsMatch(productoView.PrecioUnitario.ToString(), NumeroDecimalRegex);
            if (!isPrecioUnitarioValid)
                ModelState.AddModelError("PrecioUnitario", "Ingrese un precio valido");
        }
    }
}