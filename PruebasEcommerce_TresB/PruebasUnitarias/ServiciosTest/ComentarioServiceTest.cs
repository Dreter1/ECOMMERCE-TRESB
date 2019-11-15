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
    class ComentarioServiceTest
    {
        [Test]
        public void TestServiceComentarioGetComentarioByIdNull()
        {
            var datos = new List<Comentarios> {
                new Comentarios { Id = 1, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 1},
                new Comentarios { Id = 2, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 2},
                new Comentarios { Id = 3, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 3}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Comentarios>>();
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Comentario).Returns(dbSet.Object);
            var service = new ComentariosSerivce(contex.Object);
            var comentario = service.GetComentarioById(null);
            Assert.AreEqual(null, comentario);
        }

        [Test]
        public void TestServiceComentarioGetComentarioByIdNotFound()
        {
            var datos = new List<Comentarios> {
                new Comentarios { Id = 1, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 1},
                new Comentarios { Id = 2, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 2},
                new Comentarios { Id = 3, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 3}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Comentarios>>();
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Comentario).Returns(dbSet.Object);
            var service = new ComentariosSerivce(contex.Object);
            var comentario = service.GetComentarioById(4);
            Assert.AreEqual(null, comentario);
        }

        [Test]
        public void TestServiceComentarioGetComentarioByIdFound()
        {
            var datos = new List<Comentarios> {
                new Comentarios { Id = 1, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 1},
                new Comentarios { Id = 2, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 2},
                new Comentarios { Id = 3, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 3}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Comentarios>>();
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Comentario).Returns(dbSet.Object);
            var service = new ComentariosSerivce(contex.Object);
            var comentario = service.GetComentarioById(2);
            Assert.AreEqual(2, comentario.Id);
        }

        [Test]
        [Ignore("Ignorar no sale Include")]
        public void TestServiceComentarioGetComentariosAsList()
        {
            var datos = new List<Comentarios> {
                new Comentarios { Id = 1, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 1},
                new Comentarios { Id = 2, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 2},
                new Comentarios { Id = 3, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 3}
            }.AsQueryable();
             
            var dbSetIncludeUser = new Mock<IDbSet<Usuario>>();
            var dbSet = new Mock<IDbSet<Comentarios>>();
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());
            //dbSet.Setup(m => m.Include(It.IsAny<string>())).Returns(dbSetIncludeUser.Object);

            

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Comentario).Returns(dbSet.Object);
            var service = new ComentariosSerivce(contex.Object);
            var comentario = service.GetComentariosAsList();
            Assert.AreEqual(3, comentario.Count);
        }

        [Test]
        [Ignore("Ignorar no sale Include")]
        public void TestServiceComentarioGetComentariosAsListByProductId()
        {
            var datos = new List<Comentarios> {
                new Comentarios { Id = 1, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 1},
                new Comentarios { Id = 2, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 2},
                new Comentarios { Id = 3, Texto = "Holita",Fecha = new DateTime(1996,05,01),IdProducto = 1 , IdUsuario = 3}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Comentarios>>();
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Comentarios>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Comentario).Returns(dbSet.Object);
            var service = new ComentariosSerivce(contex.Object);

            dbSet.Setup(o => o.Include(It.IsAny<string>())).Returns(dbSet.Object);
            var comentario = service.GetComentariosAsListByProductId(1);
            Assert.AreEqual(1, comentario.Count);
        }
    }
}
