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
    class DetalleServiceTest
    {
        [Test]
        public void TestServiceDetalleVentaGetDetalleVentaByIdNull()
        {
            var datos = new List<DetalleVenta> {
                new DetalleVenta { Id = 1, IdVenta = 1, IdProducto = 5, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 2, IdVenta = 1, IdProducto = 2, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 3, IdVenta = 1, IdProducto = 6, Cantidad = 5, PrecioUnitario = 5 },
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<DetalleVenta>>();
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.DetallesVenta).Returns(dbSet.Object);
            var service = new DetalleVentaService(contex.Object);
            var detalleVenta = service.GetDetalleVentaById(null);
            Assert.AreEqual(null, detalleVenta);
        }

        [Test]
        public void TestServiceDetalleVentaGetDetalleVentaByIdNotFound()
        {
            var datos = new List<DetalleVenta> {
                new DetalleVenta { Id = 1, IdVenta = 1, IdProducto = 5, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 2, IdVenta = 1, IdProducto = 2, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 3, IdVenta = 1, IdProducto = 6, Cantidad = 5, PrecioUnitario = 5 },
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<DetalleVenta>>();
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.DetallesVenta).Returns(dbSet.Object);
            var service = new DetalleVentaService(contex.Object);
            var detalleVenta = service.GetDetalleVentaById(4);
            Assert.AreEqual(null, detalleVenta);
        }

        [Test]
        public void TestServiceDetalleVentaGetDetalleVentaByIdFound()
        {
            var datos = new List<DetalleVenta> {
                new DetalleVenta { Id = 1, IdVenta = 1, IdProducto = 5, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 2, IdVenta = 1, IdProducto = 2, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 3, IdVenta = 1, IdProducto = 6, Cantidad = 5, PrecioUnitario = 5 },
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<DetalleVenta>>();
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.DetallesVenta).Returns(dbSet.Object);
            var service = new DetalleVentaService(contex.Object);
            var detalleVenta = service.GetDetalleVentaById(1);
            Assert.AreEqual(1, detalleVenta.Id);
        }

        [Test]
        [Ignore("No funciona el Include")]
        public void TestServiceDetalleVentaGetDetalleVentaAsList()
        {
            var datos = new List<DetalleVenta> {
                new DetalleVenta { Id = 1, IdVenta = 1, IdProducto = 5, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 2, IdVenta = 1, IdProducto = 2, Cantidad = 5, PrecioUnitario = 5 },
                new DetalleVenta { Id = 3, IdVenta = 1, IdProducto = 6, Cantidad = 5, PrecioUnitario = 5 },
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<DetalleVenta>>();
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<DetalleVenta>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.DetallesVenta).Returns(dbSet.Object);
            var service = new DetalleVentaService(contex.Object);
            var detalleVenta = service.GetDetalleVentaAsList();
            Assert.AreEqual(3, detalleVenta.Count);
        }
    }
}
