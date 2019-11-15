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
    class HomeControllerTest
    {
        public ControllerContext FakeHttpContext()
        {
            var cContext = new Mock<ControllerContext>();
            var context = new Mock<HttpContextBase>();
            var request = new Mock<HttpRequestBase>();
            var response = new Mock<HttpResponseBase>();
            var session = new MockHttpSession();
            var server = new Mock<HttpServerUtilityBase>();

            context.Setup(ctx => ctx.Request).Returns(request.Object);
            context.Setup(ctx => ctx.Response).Returns(response.Object);
            context.Setup(ctx => ctx.Session).Returns(session);
            context.Setup(ctx => ctx.Server).Returns(server.Object);

            cContext.Setup(p => p.HttpContext).Returns(context.Object);
            return cContext.Object;
        }

        public class MockHttpSession : HttpSessionStateBase
        {
            Dictionary<string, object> m_SessionStorage = new Dictionary<string, object>();

            public override object this[string name]
            {
                get { return m_SessionStorage[name]; }
                set { m_SessionStorage[name] = value; }
            }
        }

        [Test]
        public void TestHomeIndexView()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var vista = controlador.Index();
            Assert.IsInstanceOf<ViewResult>(vista);
        }

        [Test]
        public void TestHomeNosotrosView()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var vista = controlador.Nosotros();
            Assert.IsInstanceOf<ViewResult>(vista);
        }

        [Test]
        public void TestHomeContactoView()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var vista = controlador.Contacto();
            Assert.IsInstanceOf<ViewResult>(vista);
        }

        [Test]
        public void TestHomeRegistrarView()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var vista = controlador.Registrarse();
            Assert.IsInstanceOf<ViewResult>(vista);
        }

        [Test]
        public void TestHomeRegistrarViewForm()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var resultado = controlador.Registrarse(new UsuarioView
            {
                Email = "fernando@gmail.com",
                Clave = "admin",
                Nombres = "Fernando",
                Apellidos = "Guerrero",
                Sexo = true,
                FechaNacimiento = new DateTime(1996, 05, 06),
                Celular = "983265964"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestHomeRegistrarViewFormEmpty()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var resultado = controlador.Registrarse(new UsuarioView
            {
                Email = "",
                Clave = "",
                Nombres = "",
                Apellidos = "",
                Sexo = false,
                FechaNacimiento = new DateTime(),
                Celular = ""
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestHomeLogin()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var vista = controlador.Login();
            Assert.IsInstanceOf<ViewResult>(vista);
        }

        [Test]
        public void TestHomeLoginFormEmpty()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var resultado = controlador.Login("", "");
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestHomeLoginFormEmailOrPassEmpty()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            var resultado = controlador.Login("admin@gmail.com", "");
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestHomeLoginForm()
        {
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceAutManagerMock = new Mock<IAutManager>();
            var serviceSessionMock = new Mock<ISessionService>();
            var serviceCategoriaMock = new Mock<ICategoriaService>();

            serviceUsuarioMock.Setup(u => u.GetUsuarioByCorreoAndClave("admin@gmail.com", "admin")).Returns(new Usuario() { Nombres = "fake", Apellidos = "fake", TipoUsuario = 0 });
            var controlador = new HomeController(serviceUsuarioMock.Object, serviceAutManagerMock.Object, serviceSessionMock.Object, serviceCategoriaMock.Object);
            controlador.ControllerContext = FakeHttpContext();
            var resultado = controlador.Login("admin@gmail.com", "admin");
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }
    }
}
