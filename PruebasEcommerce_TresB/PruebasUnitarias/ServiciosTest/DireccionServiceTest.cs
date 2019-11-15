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
    class DireccionServiceTest
    {
        [Test]
        public void TestServiceDireccionGetDireccionByIdNull()
        {
            var datos = new List<Direccion> {
                new Direccion { Id = 1, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 2, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 3, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Direccion>>();
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Direccion).Returns(dbSet.Object);
            var service = new DireccionService(contex.Object);
            var direccion = service.GetDireccionById(null);
            Assert.AreEqual(null, direccion);
        }

        [Test]
        public void TestServiceDireccionGetDireccionByIdNotFound()
        {
            var datos = new List<Direccion> {
                new Direccion { Id = 1, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 2, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 3, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Direccion>>();
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Direccion).Returns(dbSet.Object);
            var service = new DireccionService(contex.Object);
            var direccion = service.GetDireccionById(4);
            Assert.AreEqual(null, direccion);
        }

        [Test]
        public void TestServiceDireccionGetDireccionByIdFound()
        {
            var datos = new List<Direccion> {
                new Direccion { Id = 1, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 2, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 3, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Direccion>>();
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Direccion).Returns(dbSet.Object);
            var service = new DireccionService(contex.Object);
            var direccion = service.GetDireccionById(1);
            Assert.AreEqual(1, direccion.Id);
        }

        [Test]
        [Ignore("Ignorar no sale Include")]
        public void TestServiceDireccionGetDireccionAsList()
        {
            var datos = new List<Direccion> {
                new Direccion { Id = 1, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 2, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 3, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Direccion>>();
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(m => m.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Direccion).Returns(dbSet.Object);
            var service = new DireccionService(contex.Object);
            var direccion = service.GetDireccionAsList();
            Assert.AreEqual(3, direccion.Count);
        }

        [Test]
        [Ignore("Ignorar no sale Include")]
        public void TestServiceDireccionGetDireccionByUsuarioList()
        {
            var datos = new List<Direccion> {
                new Direccion { Id = 1, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 2, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
                new Direccion { Id = 3, Calle = "mock", Ciudad = "mock", Pais = "Peru", Region = "mock", CodigoPostal = "mock"},
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Direccion>>();
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Direccion>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            dbSet.Setup(m => m.Include(It.IsAny<string>())).Returns(dbSet.Object);

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Direccion).Returns(dbSet.Object);
            var service = new DireccionService(contex.Object);
            var direccion = service.GetDireccionByUsuarioList(1);
            Assert.AreEqual(1, direccion.Count);
        }
    }
}
