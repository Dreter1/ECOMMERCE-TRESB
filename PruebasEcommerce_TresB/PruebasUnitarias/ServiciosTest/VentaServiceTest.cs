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
using System.Data.Entity;
using ECOMMERCE_TRESB;
using ECOMMERCE_TRESB.Services;

namespace PruebasEcommerce_TresB.PruebasUnitarias.ServiciosTest
{
    [TestFixture]
    class VentaServiceTest
    {
        [Test]
        public void TestVentaServiceTGetVentaIdNull()
        {
            var datos = new List<Venta> {
                new Venta { Id = 1, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 2, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 3, IdUsuario = 3, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Venta>>();
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Ventas).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var venta = service.GetVentaById(null);
            Assert.AreEqual(null, venta);
        }

        [Test]
        public void TestVentaServiceTGetVentaIdNotFound()
        {
            var datos = new List<Venta> {
                new Venta { Id = 1, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 2, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 3, IdUsuario = 3, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Venta>>();
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Ventas).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var venta = service.GetVentaById(4);
            Assert.AreEqual(null, venta);
        }

        [Test]
        public void TestVentaServiceTGetVentaIdFound()
        {
            var datos = new List<Venta> {
                new Venta { Id = 1, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 2, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 3, IdUsuario = 3, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Venta>>();
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Ventas).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var venta = service.GetVentaById(1);
            Assert.AreEqual(1, venta.Id);
        }

        [Test]
        [Ignore("Ignorar Prueba")]
        public void TestVentaServiceGetVentaAsList()
        {
            var datos = new List<Venta> {
                new Venta { Id = 1, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 2, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 3, IdUsuario = 3, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Venta>>();
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Ventas).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var venta = service.GetVentasAsList();
            Assert.AreEqual(3, venta.Count);
        }

        [Test]
        [Ignore("Ignorar Prueba")]
        public void TestVentaServiceGetVentasDeUsuarioByIdFound()
        {
            var datos = new List<Venta> {
                new Venta { Id = 1, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 2, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 3, IdUsuario = 3, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Venta>>();
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Ventas).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var venta = service.GetVentasDeUsuarioById(1);
            Assert.AreEqual(1, venta.Count);
        }

        [Test]
        [Ignore("Ignorar Prueba")]
        public void TestVentaServiceGetVentasDeUsuarioByIdNotFound()
        {
            var datos = new List<Venta> {
                new Venta { Id = 1, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 2, IdUsuario = 1, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 },
                new Venta { Id = 3, IdUsuario = 3, Fecha = new DateTime(1995,06,05), MontoTotal = 50, TipoPago = 1, IdDireccion = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Venta>>();
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Venta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Ventas).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var venta = service.GetVentasDeUsuarioById(4);
            Assert.AreEqual(0, venta.Count);
        }

        [Test]
        [Ignore("Ignorar Prueba")]
        public void TestVentaServiceGetDetalleVentasAsList()
        {
            var datos = new List<DetalleVenta> {
                new DetalleVenta { Id = 1, IdVenta = 1, IdProducto = 1, Subtotal = 50, Cantidad = 1, PrecioUnitario = 5 },
                new DetalleVenta { Id = 2, IdVenta = 3, IdProducto = 1, Subtotal = 50, Cantidad = 1, PrecioUnitario = 5 },
                new DetalleVenta { Id = 3, IdVenta = 1, IdProducto = 1, Subtotal = 50, Cantidad = 1, PrecioUnitario = 5 }
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<DetalleVenta>>();
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.DetallesVenta).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var DetalleVenta = service.GetDetalleVentasAsList();
            Assert.AreEqual(3, DetalleVenta.Count);
        }

        [Test]
        [Ignore("Ignorar Prueba")]
        public void TestVentaServiceGetListaFavoritosByUserAsList()
        {

            var datos = new List<ListaFavoritos> {
                new ListaFavoritos { Id = 1, IdUsuario = 1, IdProducto = 1},
                new ListaFavoritos { Id = 2, IdUsuario = 1, IdProducto = 2},
                new ListaFavoritos { Id = 3, IdUsuario = 2, IdProducto = 1},
                new ListaFavoritos { Id = 4, IdUsuario = 2, IdProducto = 51},
                new ListaFavoritos { Id = 5, IdUsuario = 3, IdProducto = 1},
                new ListaFavoritos { Id = 6, IdUsuario = 3, IdProducto = 60}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<ListaFavoritos>>();
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.ListaDeFavoritos).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var ListaFavoritos = service.GetListaFavoritosByUserAsList(1);
            Assert.AreEqual(2, ListaFavoritos.Count);
        }

        [Test]
        public void TestVentaServiceGetListaFavoritosByProductIdAndUserIdNulls()
        {

            var datos = new List<ListaFavoritos> {
                new ListaFavoritos { Id = 1, IdUsuario = 1, IdProducto = 1},
                new ListaFavoritos { Id = 2, IdUsuario = 1, IdProducto = 2},
                new ListaFavoritos { Id = 3, IdUsuario = 2, IdProducto = 1},
                new ListaFavoritos { Id = 4, IdUsuario = 2, IdProducto = 51},
                new ListaFavoritos { Id = 5, IdUsuario = 3, IdProducto = 1},
                new ListaFavoritos { Id = 6, IdUsuario = 3, IdProducto = 60}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<ListaFavoritos>>();
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.ListaDeFavoritos).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var ListaFavoritos = service.GetListaFavoritosByProductIdAndUserId(null,null);
            Assert.AreEqual(null, ListaFavoritos);
        }

        [Test]
        public void TestVentaServiceGetListaFavoritosByProductIdAndUserIdNotFound()
        {

            var datos = new List<ListaFavoritos> {
                new ListaFavoritos { Id = 1, IdUsuario = 1, IdProducto = 1},
                new ListaFavoritos { Id = 2, IdUsuario = 1, IdProducto = 2},
                new ListaFavoritos { Id = 3, IdUsuario = 2, IdProducto = 1},
                new ListaFavoritos { Id = 4, IdUsuario = 2, IdProducto = 51},
                new ListaFavoritos { Id = 5, IdUsuario = 3, IdProducto = 1},
                new ListaFavoritos { Id = 6, IdUsuario = 3, IdProducto = 60}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<ListaFavoritos>>();
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.ListaDeFavoritos).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var ListaFavoritos = service.GetListaFavoritosByProductIdAndUserId(7, 10);
            Assert.AreEqual(null, ListaFavoritos);
        }

        [Test]
        public void TestVentaServiceGetListaFavoritosByProductIdAndUserIdFound()
        {

            var datos = new List<ListaFavoritos> {
                new ListaFavoritos { Id = 1, IdUsuario = 1, IdProducto = 1},
                new ListaFavoritos { Id = 2, IdUsuario = 1, IdProducto = 2},
                new ListaFavoritos { Id = 3, IdUsuario = 2, IdProducto = 1},
                new ListaFavoritos { Id = 4, IdUsuario = 2, IdProducto = 51},
                new ListaFavoritos { Id = 5, IdUsuario = 3, IdProducto = 1},
                new ListaFavoritos { Id = 6, IdUsuario = 3, IdProducto = 60}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<ListaFavoritos>>();
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.ListaDeFavoritos).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var ListaFavoritos = service.GetListaFavoritosByProductIdAndUserId(1,1);
            Assert.AreEqual(1, ListaFavoritos.IdUsuario);
        }

        [Test]
        public void TestVentaServiceExisteProductIdAndUserIdEnListaFavoritosNoExiste()
        {

            var datos = new List<ListaFavoritos> {
                new ListaFavoritos { Id = 1, IdUsuario = 1, IdProducto = 1},
                new ListaFavoritos { Id = 2, IdUsuario = 1, IdProducto = 2},
                new ListaFavoritos { Id = 3, IdUsuario = 2, IdProducto = 1},
                new ListaFavoritos { Id = 4, IdUsuario = 2, IdProducto = 51},
                new ListaFavoritos { Id = 5, IdUsuario = 3, IdProducto = 1},
                new ListaFavoritos { Id = 6, IdUsuario = 3, IdProducto = 60}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<ListaFavoritos>>();
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.ListaDeFavoritos).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var ListaFavoritos = service.ExisteProductIdAndUserIdEnListaFavoritos(1, 4);
            Assert.AreEqual(false, ListaFavoritos);
        }

        [Test]
        public void TestVentaServiceExisteProductIdAndUserIdEnListaFavoritosSiExiste()
        {

            var datos = new List<ListaFavoritos> {
                new ListaFavoritos { Id = 1, IdUsuario = 1, IdProducto = 1},
                new ListaFavoritos { Id = 2, IdUsuario = 1, IdProducto = 2},
                new ListaFavoritos { Id = 3, IdUsuario = 2, IdProducto = 1},
                new ListaFavoritos { Id = 4, IdUsuario = 2, IdProducto = 51},
                new ListaFavoritos { Id = 5, IdUsuario = 3, IdProducto = 1},
                new ListaFavoritos { Id = 6, IdUsuario = 3, IdProducto = 60}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<ListaFavoritos>>();
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<ListaFavoritos>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.ListaDeFavoritos).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var ListaFavoritos = service.ExisteProductIdAndUserIdEnListaFavoritos(1, 1);
            Assert.AreEqual(true, ListaFavoritos);
        }

        [Test]
        [Ignore("Ignorar Prueba")]
        public void TestVentaServiceGetCarritoComprasByUserAsList()
        {

            var datos = new List<CarritoCompras> {
                new CarritoCompras { Id = 1, IdUsuario = 1, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 2, IdUsuario = 1, IdProducto = 2, Cantidad = 5},
                new CarritoCompras { Id = 3, IdUsuario = 2, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 4, IdUsuario = 2, IdProducto = 51, Cantidad = 5},
                new CarritoCompras { Id = 5, IdUsuario = 3, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 6, IdUsuario = 3, IdProducto = 60, Cantidad = 5}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<CarritoCompras>>();
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.CarritoDeCompras).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var CarritoCompras = service.GetCarritoComprasByUserAsList(1);
            Assert.AreEqual(2, CarritoCompras.Count);
        }

        [Test]
        public void TestVentaServiceGetCarritoComprasByProductIdAndUserIdNull()
        {
            var datos = new List<CarritoCompras> {
                new CarritoCompras { Id = 1, IdUsuario = 1, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 2, IdUsuario = 1, IdProducto = 2, Cantidad = 5},
                new CarritoCompras { Id = 3, IdUsuario = 2, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 4, IdUsuario = 2, IdProducto = 51, Cantidad = 5},
                new CarritoCompras { Id = 5, IdUsuario = 3, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 6, IdUsuario = 3, IdProducto = 60, Cantidad = 5}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<CarritoCompras>>();
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.CarritoDeCompras).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var CarritoCompras = service.GetCarritoComprasByProductIdAndUserId(null, null);
            Assert.AreEqual(null, CarritoCompras);
        }

        [Test]
        public void TestVentaServiceGetCarritoComprasByProductIdAndUserIdNotFound()
        {
            var datos = new List<CarritoCompras> {
                new CarritoCompras { Id = 1, IdUsuario = 1, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 2, IdUsuario = 1, IdProducto = 2, Cantidad = 5},
                new CarritoCompras { Id = 3, IdUsuario = 2, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 4, IdUsuario = 2, IdProducto = 51, Cantidad = 5},
                new CarritoCompras { Id = 5, IdUsuario = 3, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 6, IdUsuario = 3, IdProducto = 60, Cantidad = 5}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<CarritoCompras>>();
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.CarritoDeCompras).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var CarritoCompras = service.GetCarritoComprasByProductIdAndUserId(9, 8);
            Assert.AreEqual(null, CarritoCompras);
        }

        [Test]
        public void TestVentaServiceGetCarritoComprasByProductIdAndUserIdFound()
        {
            var datos = new List<CarritoCompras> {
                new CarritoCompras { Id = 1, IdUsuario = 1, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 2, IdUsuario = 1, IdProducto = 2, Cantidad = 5},
                new CarritoCompras { Id = 3, IdUsuario = 2, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 4, IdUsuario = 2, IdProducto = 51, Cantidad = 5},
                new CarritoCompras { Id = 5, IdUsuario = 3, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 6, IdUsuario = 3, IdProducto = 60, Cantidad = 5}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<CarritoCompras>>();
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.CarritoDeCompras).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var CarritoCompras = service.GetCarritoComprasByProductIdAndUserId(1,1);
            Assert.AreEqual(1, CarritoCompras.IdUsuario);
        }

        [Test]
        public void TestVentaServiceExisteProductIdAndUserIdEnCarritoComprasNoExiste()
        {
            var datos = new List<CarritoCompras> {
                new CarritoCompras { Id = 1, IdUsuario = 1, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 2, IdUsuario = 1, IdProducto = 2, Cantidad = 5},
                new CarritoCompras { Id = 3, IdUsuario = 2, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 4, IdUsuario = 2, IdProducto = 51, Cantidad = 5},
                new CarritoCompras { Id = 5, IdUsuario = 3, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 6, IdUsuario = 3, IdProducto = 60, Cantidad = 5}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<CarritoCompras>>();
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.CarritoDeCompras).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var CarritoCompras = service.ExisteProductIdAndUserIdEnCarritoCompras(1, 10);
            Assert.AreEqual(false, CarritoCompras);
        }

        [Test]
        public void TestVentaServiceExisteProductIdAndUserIdEnCarritoComprasSiExiste()
        {
            var datos = new List<CarritoCompras> {
                new CarritoCompras { Id = 1, IdUsuario = 1, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 2, IdUsuario = 1, IdProducto = 2, Cantidad = 5},
                new CarritoCompras { Id = 3, IdUsuario = 2, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 4, IdUsuario = 2, IdProducto = 51, Cantidad = 5},
                new CarritoCompras { Id = 5, IdUsuario = 3, IdProducto = 1, Cantidad = 5},
                new CarritoCompras { Id = 6, IdUsuario = 3, IdProducto = 60, Cantidad = 5}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<CarritoCompras>>();
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<CarritoCompras>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.CarritoDeCompras).Returns(dbSet.Object);
            var service = new VentaService(contex.Object);
            var CarritoCompras = service.ExisteProductIdAndUserIdEnCarritoCompras(1, 1);
            Assert.AreEqual(true, CarritoCompras);
        }
    }
}
