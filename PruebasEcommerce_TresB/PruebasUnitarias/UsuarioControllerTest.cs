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
    class UsuarioControllerTest
    {
        [Test]
        public void TestUsuarioIndexNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Index();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioIndexLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Index();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioListarNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Listar();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioListarLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Listar();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioCrearNoLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Crear();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioCrearLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Crear();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioCrearFormEmptyLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Crear(new UsuarioView() {
                Id = 1,
                Email = "",
                Clave = "",
                Salt = "salt",
                Nombres = "",
                Apellidos = "",
                Sexo = true,
                FechaNacimiento = new DateTime(),
                Celular = "",
                TipoUsuario = 0,
                IsActive = true,
                FechaRegistro = new DateTime(1996, 05, 05)
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioCrearFormCorreoExisteLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceUsuarioMock.Setup(o => o.ExisteElCorreo("correo@gmail.com")).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Crear(new UsuarioView()
            {
                Id = 1,
                Email = "",
                Clave = "",
                Salt = "salt",
                Nombres = "",
                Apellidos = "",
                Sexo = true,
                FechaNacimiento = new DateTime(),
                Celular = "",
                TipoUsuario = 0,
                IsActive = true,
                FechaRegistro = new DateTime(1996, 05, 05)
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioCrearFormLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Crear(new UsuarioView()
            {
                Id = 1,
                Email = "correo@gmail.com",
                Clave = "clave",
                Salt = "salt",
                Nombres = "mock",
                Apellidos = "mock",
                Sexo = true,
                FechaNacimiento = new DateTime(1996, 05, 05),
                Celular = "983265964",
                TipoUsuario = 0,
                IsActive = true,
                FechaRegistro = new DateTime(1996, 05, 05)
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioDetalleLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Detalle(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioDetalleUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Detalle(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioDetalleViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Detalle(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioEditarIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Editar(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioEditarUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Editar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioEditarViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Editar(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioEditarFormIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Editar(null, new UsuarioEditarView()
            {
                Id = 1,
                Nombres = "mock",
                Apellidos = "mock",
                Sexo = true,
                FechaNacimiento = new DateTime(1996, 05, 05),
                Celular = "983265964",
                TipoUsuario = 0,
                IsActive = true
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioEditarFormEmptyLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Editar(1, new UsuarioEditarView()
            {
                Id = 1,
                Nombres = "",
                Apellidos = "",
                Sexo = true,
                FechaNacimiento = new DateTime(),
                Celular = "",
                TipoUsuario = 0,
                IsActive = true
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioEditarFormLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Editar(1, new UsuarioEditarView()
            {
                Id = 1,
                Nombres = "mock",
                Apellidos = "mock",
                Sexo = true,
                FechaNacimiento = new DateTime(1996, 05, 05),
                Celular = "983265964",
                TipoUsuario = 0,
                IsActive = true
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioEliminarIdUsuarioNullLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Eliminar(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioEliminarViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Eliminar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }


        [Test]
        public void TestUsuarioPerfilIdUsuarioNullViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilUsuarioNullViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilPerfilFailViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsSuSession(1)).Returns(false);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilViewLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceSessionServiceMock.Setup(o => o.EsSuSession(1)).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilIdUsuarioNullFormLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(null, new UsuarioPerfilEditView()
            {
                Id = 1,
                Nombres = "mock",
                Apellidos = "mock",
                Sexo = true,
                Celular = "983265964"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilFormEmptyLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(1, new UsuarioPerfilEditView()
            {
                Id = 1,
                Nombres = "",
                Apellidos = "",
                Sexo = true,
                Celular = ""
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilIdUsuario0FormLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(1, new UsuarioPerfilEditView()
            {
                Id = 1,
                Nombres = "mock",
                Apellidos = "mock",
                Sexo = true,
                Celular = "123456789"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioPerfilFormLogeado()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.Perfil(1, new UsuarioPerfilEditView()
            {
                Id = 1,
                Nombres = "mock",
                Apellidos = "mock",
                Sexo = true,
                Celular = "983265964"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestUsuarioGuardarDireccionDeUsuarioAnyDataEmptyForm()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.GuardarDireccionDeUsuario(1, "", "mock", "mock", "mock", "mock");
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestUsuarioGuardarDireccionDeUsuarioEmptyForm()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.GuardarDireccionDeUsuario(1, "mock", "mock", "mock", "mock", "mock");
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestUsuarioGuardarDireccionDeUsuarioForm()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());

            var controladorUsuario = new UsuarioController(serviceUsuarioMock.Object, serviceSessionServiceMock.Object);

            var resultado = controladorUsuario.GuardarDireccionDeUsuario(1,"mock", "mock", "mock", "mock", "mock");
            Assert.AreEqual(true, resultado);
        }
    }
}
