using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using ECOMMERCE_TRESB.Controllers;
using ECOMMERCE_TRESB.Interfaces;
using ECOMMERCE_TRESB.Manager;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using Moq;
using System.Web;
using System.Web.Mvc;

namespace PruebasEcommerce_TresB.PruebasUnitarias
{
    [TestFixture]
    class VentaControllerTest
    {
        [Test]
        public void TestVentaIndexNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object,serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Index();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaIndexLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Index();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaComprasNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Compras(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaComprasIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Compras(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaComprasLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Compras(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleComprasNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.DetalleCompras(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleComprasNoIdVentaNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.DetalleCompras(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleComprasNoVentaNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            serviceSessionServiceMock.Setup(o => o.ConvertirSessionIdAIntId()).Returns(1);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.DetalleCompras(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleComprasLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            serviceVentanMock.Setup(o => o.GetVentaById(1)).Returns(new Venta());

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Compras(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaCarritoNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);


            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Carrito(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaCarritoIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Carrito(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaCarritoNoEsSuCarritoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            serviceSessionServiceMock.Setup(o => o.EsSuCarritoDeCompras(1)).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Carrito(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaCarritoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            serviceSessionServiceMock.Setup(o => o.ConvertirSessionIdAIntId()).Returns(1);
            serviceSessionServiceMock.Setup(o => o.EsSuCarritoDeCompras(1)).Returns(true);
            serviceSessionServiceMock.Setup(o => o.GuardarCarritoEnSession(new List<CarritoCompras>()));

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Carrito(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaExisteProductoIdYUsuarioIdEnCarritoComprasIdProductoYIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceVentanMock.Setup(o => o.ExisteProductIdAndUserIdEnCarritoCompras(1, 1)).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ExisteProductoIdYUsuarioIdEnCarritoCompras(null, null);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaExisteProductoIdYUsuarioIdEnCarritoComprasSiExisteLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceVentanMock.Setup(o => o.ExisteProductIdAndUserIdEnCarritoCompras(1, 1)).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ExisteProductoIdYUsuarioIdEnCarritoCompras(1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaExisteProductoIdYUsuarioIdEnCarritoComprasLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceVentanMock.Setup(o => o.ExisteProductIdAndUserIdEnCarritoCompras(1, 1)).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ExisteProductoIdYUsuarioIdEnCarritoCompras(1,1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestVentaGuardarProductoACarritoProductoYUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.GuardarProductoACarrito(1, 1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaGuardarProductoACarritoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceProductoMock.Setup(o => o.GetProductoById(1)).Returns(new Producto());

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.GuardarProductoACarrito(1, 1, 1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestVentaActualizarCantidadProductoCarritoIdsNullCantidadMenor0Logeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ActualizarCantidadProductoCarrito(null, null, -1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaActualizarCantidadProductoCarritoCantidad0Logeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ActualizarCantidadProductoCarrito(1, 1, 0);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaActualizarCantidadProductoCarritoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ActualizarCantidadProductoCarrito(1, 1, 1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestVentaEliminarProductoDeCarritoNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.EliminarProductoDeCarrito(1, 1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarProductoDeCarritoIdsNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.EliminarProductoDeCarrito(null, null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarProductoDeCarritoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.EliminarProductoDeCarrito(1,1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaCompletarOrdenNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.CompletarOrden();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaCompletarOrdenLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.RetornarProductosDelCarritoSession()).Returns(new List<CarritoCompras>());
            serviceSessionServiceMock.Setup(o => o.ConvertirSessionIdAIntId()).Returns(1);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.CompletarOrden();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaGuardarNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Guardar(1, 1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaGuardarUsuarioDireccionCarritoNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Guardar(1, 1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaGuardarNoExistenLosProductosLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.RetornarProductosDelCarritoSession()).Returns(new List<CarritoCompras>());

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceDireccionMock.Setup(o => o.GetDireccionById(1)).Returns(new Direccion());

            serviceProductoMock.Setup(o => o.SiExistenLosProductos(new List<CarritoCompras>())).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Guardar(1, 1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaGuardarNoHayStockLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.RetornarProductosDelCarritoSession()).Returns(new List<CarritoCompras>());

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceDireccionMock.Setup(o => o.GetDireccionById(1)).Returns(new Direccion());

            serviceProductoMock.Setup(o => o.SiExistenLosProductos(new List<CarritoCompras>())).Returns(false);
            serviceProductoMock.Setup(o => o.SiHayStockDisponible(new List<CarritoCompras>())).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Guardar(1, 1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaGuardarLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.RetornarProductosDelCarritoSession()).Returns(new List<CarritoCompras>());

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceDireccionMock.Setup(o => o.GetDireccionById(1)).Returns(new Direccion());

            serviceProductoMock.Setup(o => o.SiExistenLosProductos(new List<CarritoCompras>())).Returns(true);
            serviceProductoMock.Setup(o => o.SiHayStockDisponible(new List<CarritoCompras>())).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Guardar(1,1,1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestVentaDetalleNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Detalle(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleIdVentaNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Detalle(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleVentaNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Detalle(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaDetalleLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            serviceVentanMock.Setup(o => o.GetVentaById(1)).Returns(new Venta());

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Detalle(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Eliminar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarIdVentaNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Eliminar(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.Eliminar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaListaFavoritosNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ListaFavoritos(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaListaFavoritosIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ListaFavoritos(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaListaFavoritosNoEsSuListaFavoritosLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            serviceSessionServiceMock.Setup(o => o.EsSuListaDeFavoritos(1)).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ListaFavoritos(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaListaFavoritosLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            serviceSessionServiceMock.Setup(o => o.EsSuListaDeFavoritos(1)).Returns(true);

            serviceVentanMock.Setup(o => o.GetListaFavoritosByUserAsList(1));

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ListaFavoritos(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestVentaGuardarProductoAListaUsuarioProductoNull()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.GuardarProductoALista(1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaGuardarProductoALista()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceProductoMock.Setup(o => o.GetProductoById(1)).Returns(new Producto());

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.GuardarProductoALista(1,1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestVentaExisteProductoIdYUsuarioIdEnListaFavoritosIdsNull()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ExisteProductoIdYUsuarioIdEnListaFavoritos(null, null);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaExisteProductoIdYUsuarioIdEnListaFavoritosExiste()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceVentanMock.Setup(o => o.ExisteProductIdAndUserIdEnListaFavoritos(1, 1)).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ExisteProductoIdYUsuarioIdEnListaFavoritos(1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestVentaExisteProductoIdYUsuarioIdEnListaFavoritos()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceVentanMock.Setup(o => o.ExisteProductIdAndUserIdEnListaFavoritos(1, 1)).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.ExisteProductoIdYUsuarioIdEnListaFavoritos(1, 1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestVentaEliminarProductoDeListaNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.EliminarProductoDeLista(1, 1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarProductoDeListaIdsNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.EliminarProductoDeLista(null, null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestVentaEliminarProductoDeListaLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceDireccionMock = new Mock<IDireccionService>();
            var serviceProductoMock = new Mock<IProductoService>();
            var serviceVentanMock = new Mock<IVentaService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);

            var controladorVenta = new VentaController(serviceUsuarioMock.Object, serviceDireccionMock.Object,
                serviceProductoMock.Object, serviceVentanMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorVenta.EliminarProductoDeLista(1,1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }
    }
}
