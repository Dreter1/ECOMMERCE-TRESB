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
    class CategoriaControllerTest
    {
        [Test]
        public void TestCategoriaListarViewLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Listar();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaListarViewSinLogear()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Listar();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaCrearViewSinLogear()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Crear();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaCrearViewLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Crear();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaCrearFormFailLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Crear(new CategoriaView
            {
                Nombre = "Moqueando"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaCrearFormEmptyLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Crear(new CategoriaView
            {
                Nombre = ""
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaCrearFormNombreExisteLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceCategoriaMock.Setup(o => o.ExisteCategoria("Lala")).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Crear(new CategoriaView
            {
                Nombre = "Lala"
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaCrearFormLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Crear(new CategoriaView
            {
                Nombre = "Moqueando"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarNoLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            serviceCategoriaMock.Setup(o => o.GetCategoriaById(1)).Returns(new Categoria() { Nombre = "mock" });

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceCategoriaMock.Setup(o => o.GetCategoriaById(1)).Returns(new Categoria() { Nombre = "mock" });

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarCategoriaNullLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarFormFailIdLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(null, new CategoriaView
            {
                Nombre = "Moqueando"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarFormFailLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1,new CategoriaView
            {
                Nombre = "Moqueando"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarFormEmptyLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1, new CategoriaView
            {
                Nombre = ""
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarFormNombreExisteLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceCategoriaMock.Setup(o => o.ExisteCategoria("Lala")).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1,new CategoriaView
            {
                Nombre = "Lala"
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestCategoriaEditarFormLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Editar(1,new CategoriaView
            {
                Nombre = "Moqueando"
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEliminarFailIdLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Eliminar(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEliminarCategoriaTieneProductosLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceCategoriaMock.Setup(o => o.CategoriaTieneProducto(1)).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Eliminar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestCategoriaEliminarLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorCategoria = new CategoriaController(serviceCategoriaMock.Object, serviceUsuarioMock.Object, serviceSessionServiceMock.Object);
            var resultado = controladorCategoria.Eliminar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }
    }
}
