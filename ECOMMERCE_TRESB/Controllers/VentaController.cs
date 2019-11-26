using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.Services;
using ECOMMERCE_TRESB.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ECOMMERCE_TRESB.Controllers
{
    public class VentaController : BaseAutController
    {
        private readonly IUsuarioService UsuarioSession;
        private readonly IDireccionService servicioDireccion;
        private readonly IProductoService productoServicio;
        private readonly IVentaService servicio;
        private readonly ISessionService session; 

        public VentaController(IUsuarioService UsuarioSession, IDireccionService servicioDireccion, IProductoService productoServicio, IVentaService servicio, ISessionService session)
        {
            this.UsuarioSession = UsuarioSession;
            this.servicioDireccion = servicioDireccion;
            this.productoServicio = productoServicio;
            this.servicio = servicio;
            this.session = session;
        }

        [HttpGet]
        public ActionResult Index()
        {
            if (session.EsPersonalDeLaTienda())
            {
                ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                ViewBag.ListaDireccionUsuario = servicioDireccion.GetDireccionAsList();
                return View(servicio.GetVentasAsList());
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Compras(int? IdUsuario)
        {
            if (session.IsLogged())
            {
                if (IdUsuario != null)
                {
                    var ListaVentas = servicio.GetVentasDeUsuarioById(IdUsuario);
                    ViewBag.ListaDetalleVentas = servicio.GetDetalleVentasAsList();
                    ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                    int UsuarioId = session.ConvertirSessionIdAIntId();
                    ViewBag.ListaDireccionUsuario = servicioDireccion.GetDireccionByUsuarioList(UsuarioId);

                    return View(ListaVentas);
                }
                return RedirectToAction("Index", "Error");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult DetalleCompras(int? IdVenta)
        {
            if (session.IsLogged())
            {
                if (IdVenta == null)
                    return RedirectToAction("Index", "Error");

                Venta venta = servicio.GetVentaById(IdVenta);

                ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                ViewBag.ListaDetalleVentas = servicio.GetDetalleVentasAsList();
                

                if (venta == null)
                {
                    return RedirectToAction("Index", "Error");
                }

                return View(venta);
            }
            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Carrito(int? IdUsuario)
        {
            if (session.IsLogged())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                if (!session.EsSuSession(IdUsuario))
                    return RedirectToAction("Index", "Error");

                var CarritoCompras = servicio.GetCarritoComprasByUserAsList(IdUsuario);
                ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                session.GuardarCarritoEnSession(CarritoCompras);

                return View(CarritoCompras);
            }

            return RedirectToAction("Login", "Home");
        }

        [HttpPost]
        public bool ExisteProductoIdYUsuarioIdEnCarritoCompras(int? IdUsuario, int? IdProducto)
        {
            if (IdUsuario == null && IdProducto == null)
                return false;

            var existeEnCarrito = servicio.ExisteProductIdAndUserIdEnCarritoCompras(IdUsuario, IdProducto);

            if (!existeEnCarrito)
                return true;

            return false;
        }

        [HttpPost]
        public bool GuardarProductoACarrito(int IdUsuario, int IdProducto, int Cantidad)
        {

            Usuario usuario = UsuarioSession.GetUsuarioById(IdUsuario);
            Producto producto = productoServicio.GetProductoById(IdProducto);

            if (usuario == null && producto == null)
                return false;

            servicio.AgregarProductoACarritoCompras(usuario, producto,Cantidad);

            return true;
        }

        [HttpPost]
        public bool ActualizarCantidadProductoCarrito(int? IdUsuario, int? IdProducto, int NuevaCantidad)
        {
            if (IdUsuario == null && IdProducto == null && NuevaCantidad <= 0)
                return false;

            if (NuevaCantidad > 0)
            {
                servicio.ActualizarCantidadByIdProductoCarrito(IdProducto, IdUsuario, NuevaCantidad);
                return true;
            }
        
            return false;

        }

        [HttpGet]
        public ActionResult EliminarProductoDeCarrito(int? IdProducto, int? IdUsuario)
        {
            if (session.IsLogged())
            {
                if (IdProducto == null && IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                servicio.EliminarProductoDeCarritoCompras(IdProducto, IdUsuario);
                return RedirectToAction("Carrito", "Venta", new { IdUsuario = IdUsuario });
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult CompletarOrden()
        {
            if (session.IsLogged())
            {
                List<CarritoCompras> carrito = session.RetornarProductosDelCarritoSession();
                ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                int UsuarioId = session.ConvertirSessionIdAIntId();
                ViewBag.ListaDireccionUsuario = servicioDireccion.GetDireccionByUsuarioList(UsuarioId);
                return View(carrito);
            }
            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public bool Guardar(int IdUsuario, int IdCalle, byte TipoPago)
        {
            if (session.IsLogged())
            {
                Usuario usuario = UsuarioSession.GetUsuarioById(IdUsuario);
                Direccion direccion = servicioDireccion.GetDireccionById(IdCalle);
                List<CarritoCompras> productosDelCarrito = session.RetornarProductosDelCarritoSession();

                if (usuario == null && direccion == null)
                    return false;

                if (!productoServicio.SiExistenLosProductos(productosDelCarrito))
                    return false;

                if (!productoServicio.SiHayStockDisponible(productosDelCarrito))
                {
                    ViewBag.NoHayStockDisponible = "No contamos con el stock que solicita, vuelva a intentarlo";
                    return false;
                }

                productoServicio.ActualizarStock(productosDelCarrito);

                servicio.GuardarVenta(usuario, productosDelCarrito, direccion, TipoPago);

                return true;
            }
            return false;
        }

        [HttpGet]
        public ActionResult Detalle(int? IdVenta)
        {
            if (session.EsPersonalDeLaTienda())
            {
                if (IdVenta == null)
                    return RedirectToAction("Index", "Error");

                ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                ViewBag.ListaDetalleVentas = servicio.GetDetalleVentasAsList();
                Venta venta = servicio.GetVentaById(IdVenta);

                if (venta == null)
                {
                    return RedirectToAction("Index", "Error");
                }

                return View(venta);
            }
            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult Eliminar(int? IdVenta)
        {
            if (session.EsAdministrativo())
            {
                if (IdVenta == null)
                    return RedirectToAction("Index", "Error");

                servicio.EliminarVenta(IdVenta);
                return RedirectToAction("Index", "Venta");
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpGet]
        public ActionResult ListaFavoritos(int? IdUsuario)
        {
            if (session.IsLogged())
            {
                if (IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                if (!session.EsSuSession(IdUsuario))
                    return RedirectToAction("Index", "Error");

                var lista = servicio.GetListaFavoritosByUserAsList(IdUsuario);
                ViewBag.ListaUsuarios = UsuarioSession.GetUsuariosAsList();
                return View(lista);
            }

            return RedirectToAction("Index", "Error");
        }

        [HttpPost]
        public bool GuardarProductoALista(int IdUsuario, int IdProducto)
        {
            Usuario usuario = UsuarioSession.GetUsuarioById(IdUsuario);
            Producto producto = productoServicio.GetProductoById(IdProducto);

            if (usuario == null && producto == null)
                return false;

            servicio.AgregarProductoALista(usuario, producto);

            return true;
        }

        [HttpPost]
        public bool ExisteProductoIdYUsuarioIdEnListaFavoritos(int? IdUsuario, int? IdProducto)
        {
            if (IdUsuario == null && IdProducto == null)
                return false;

            var existeEnLista = servicio.ExisteProductIdAndUserIdEnListaFavoritos(IdUsuario, IdProducto);

            if (!existeEnLista) 
                return true;

            return false;
        }

        [HttpGet]
        public ActionResult EliminarProductoDeLista(int? IdProducto, int? IdUsuario)
        {
            if (session.IsLogged())
            {
                if (IdProducto == null && IdUsuario == null)
                    return RedirectToAction("Index", "Error");

                servicio.EliminarProductoDeLista(IdProducto, IdUsuario);
                return RedirectToAction("ListaFavoritos", "Venta", new { IdUsuario = IdUsuario });
            }

            return RedirectToAction("Index", "Error");
        }
    }
}