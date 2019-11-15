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
    class CategoriaServiceTest
    {
        [Test]
        public void TestServiceCategoriaGetCategoriaByIdNull()
        {
            var datos = new List<Categoria> {
                new Categoria { Id = 1, Nombre = "Holita"},
                new Categoria { Id = 2, Nombre = "Pel2"},
                new Categoria { Id = 3, Nombre = "Pel3"}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Categoria>>();
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Categorias).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.GetCategoriaById(null);
            Assert.AreEqual(null, categoria);
        }

        [Test]
        public void TestServiceCategoriaGetCategoriaByIdFound()
        {
            var datos = new List<Categoria> {
                new Categoria { Id = 1, Nombre = "Holita"},
                new Categoria { Id = 2, Nombre = "Pel2"},
                new Categoria { Id = 3, Nombre = "Pel3"}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Categoria>>();
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Categorias).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.GetCategoriaById(1);
            Assert.AreEqual(1, categoria.Id);
        }

        [Test]
        public void TestServiceCategoriaGetCategoriaByIdNotFound()
        {
            var datos = new List<Categoria> {
                new Categoria { Id = 1, Nombre = "Holita"},
                new Categoria { Id = 2, Nombre = "Pel2"},
                new Categoria { Id = 3, Nombre = "Pel3"}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Categoria>>();
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Categorias).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.GetCategoriaById(4);
            Assert.AreEqual(null, categoria);
        }

        [Test]
        public void TestServiceCategoriaGetCategoriasAsList()
        {
            var datos = new List<Categoria> {
                new Categoria { Id = 1, Nombre = "Holita"},
                new Categoria { Id = 2, Nombre = "Pel2"},
                new Categoria { Id = 3, Nombre = "Pel3"}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Categoria>>();
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Categorias).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.GetCategoriasAsList();
            Assert.AreEqual(3, categoria.Count);
        }

        [Test]
        public void TestServiceCategoriaExisteCategoriaFalse()
        {
            var datos = new List<Categoria> {
                new Categoria { Id = 1, Nombre = "Holita"},
                new Categoria { Id = 2, Nombre = "Pel2"},
                new Categoria { Id = 3, Nombre = "Pel3"}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Categoria>>();
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Categorias).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.ExisteCategoria("Jeje");
            Assert.AreEqual(false, categoria);
        }

        [Test]
        public void TestServiceCategoriaExisteCategoriaTrue()
        {
            var datos = new List<Categoria> {
                new Categoria { Id = 1, Nombre = "Holita"},
                new Categoria { Id = 2, Nombre = "Pel2"},
                new Categoria { Id = 3, Nombre = "Pel3"}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Categoria>>();
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Categoria>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Categorias).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.ExisteCategoria("Holita");
            Assert.AreEqual(true, categoria);
        }

        [Test]
        public void TestServiceCategoriaCategoriaTieneProductoFalse()
        {
            var datos = new List<Producto> {
                new Producto { Id = 1, IdCategoria = 2, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true },
                new Producto { Id = 1, IdCategoria = 3, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true },
                new Producto { Id = 1, IdCategoria = 2, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true },
                new Producto { Id = 1, IdCategoria = 5, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true }

            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Producto>>();
            dbSet.As<IQueryable<Producto>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Producto>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Producto>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Producto>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Productos).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.CategoriaTieneProducto(1);
            Assert.AreEqual(false, categoria);
        }

        [Test]
        public void TestServiceCategoriaCategoriaTieneProductoTrue()
        {
            var datos = new List<Producto> {
                new Producto { Id = 1, IdCategoria = 1, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true },
                new Producto { Id = 1, IdCategoria = 3, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true },
                new Producto { Id = 1, IdCategoria = 2, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true },
                new Producto { Id = 1, IdCategoria = 5, Nombre = "Holita", Descripcion = "", RutaImagen = "", Stock = 5, PrecioUnitario = 15, IsActive = true }

            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Producto>>();
            dbSet.As<IQueryable<Producto>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Producto>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Producto>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Producto>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Productos).Returns(dbSet.Object);
            var service = new CategoriaService(contex.Object);
            var categoria = service.CategoriaTieneProducto(1);
            Assert.AreEqual(true, categoria);
        }
    }
}
