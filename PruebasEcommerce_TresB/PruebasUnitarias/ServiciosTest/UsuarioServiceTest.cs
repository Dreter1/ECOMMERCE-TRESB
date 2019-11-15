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
    class UsuarioServiceTest
    {
        [Test]
        public void TestServiceUsuarioGetUsuarioByIdNull()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.GetUsuarioById(null);
            Assert.AreEqual(null, usuario);
        }

        [Test]
        public void TestServiceUsuarioGetUsuarioByIdNotFound()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.GetUsuarioById(5);
            Assert.AreEqual(null, usuario);
        }

        [Test]
        public void TestServiceUsuarioGetUsuarioByIdFound()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.GetUsuarioById(1);
            Assert.AreEqual(1, usuario.Id);
        }

        [Test]
        public void TestServiceUsuarioGetUsuariosAsList()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.GetUsuariosAsList();
            Assert.AreEqual(4, usuario.Count);
        }

        [Test]
        public void TestServiceUsuarioGetClienteAsList()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.GetClienteAsList();
            Assert.AreEqual(2, usuario.Count);
        }

        [Test]
        public void TestServiceUsuarioGetUsuariosVendedorYAdminAsList()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 5, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.GetUsuariosVendedorYAdminAsList();
            Assert.AreEqual(3, usuario.Count);
        }

        [Test]
        public void TestServiceUsuarioExisteElCorreoFalse()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock1", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock2", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock3", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 5, Nombres = "mock", Apellidos = "mock" , Email = "mock4", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.ExisteElCorreo("dreter");
            Assert.AreEqual(false, usuario);
        }

        [Test]
        public void TestServiceUsuarioExisteElCorreoTrue()
        {
            var datos = new List<Usuario> {
                new Usuario { Id = 1, Nombres = "mock", Apellidos = "mock" , Email = "mock", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 2, Nombres = "mock", Apellidos = "mock" , Email = "mock1", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 1},
                new Usuario { Id = 3, Nombres = "mock", Apellidos = "mock" , Email = "mock2", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 2},
                new Usuario { Id = 4, Nombres = "mock", Apellidos = "mock" , Email = "mock3", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0},
                new Usuario { Id = 5, Nombres = "mock", Apellidos = "mock" , Email = "mock4", Clave = "mock", Celular = "12345678", Sexo = true , FechaNacimiento = new DateTime(1996,05,06), Salt= "mock", FechaRegistro = new DateTime(2019,05,05), IsActive = true, TipoUsuario = 0}
            }.AsQueryable();

            var dbSet = new Mock<IDbSet<Usuario>>();
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Provider).Returns(datos.Provider);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.Expression).Returns(datos.Expression);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.ElementType).Returns(datos.ElementType);
            dbSet.As<IQueryable<Usuario>>().Setup(m => m.GetEnumerator()).Returns(datos.GetEnumerator());

            var contex = new Mock<DbConexion>();
            contex.Setup(o => o.Usuarios).Returns(dbSet.Object);
            var service = new UsuarioService(contex.Object);
            var usuario = service.ExisteElCorreo("mock");
            Assert.AreEqual(true, usuario);
        }
    }
}
