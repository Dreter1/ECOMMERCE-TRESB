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
    class ProductoControllerTest
    {
        [Test]
        public void TestProductoIndexNullView()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceCategoriaMock.Setup(o => o.GetCategoriaById(1)).Returns(new Categoria());
            serviceProductoServiceMock.Setup(o => o.GetTotalPages(1)).Returns(5);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Index(null, null);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoIndexView()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceCategoriaMock.Setup(o => o.GetCategoriaById(1)).Returns(new Categoria());
            serviceProductoServiceMock.Setup(o => o.GetTotalPages(1)).Returns(5);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Index(1, 1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoListarViewNoLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Listar();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoListarViewLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Listar();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoCrearViewNoLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(false);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Crear();
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoCrearViewLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Crear();
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoCrearFormFailLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Crear(new ProductoView()
            {
                Id = 1,
                Nombre = "mock",
                Descripcion = "",
                RutaImagen = "mockRoute",
                Stock = 10,
                PrecioUnitario = 15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoCrearFormFailStockYPrecioLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Crear(new ProductoView()
            {
                Id = 1,
                Nombre = "mock",
                Descripcion = "mock",
                RutaImagen = "mockRoute",
                Stock = -1,
                PrecioUnitario = -15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoCrearFormLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsPersonalDeLaTienda()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Crear(new ProductoView() {
                Id = 1,
                Nombre = "mock",
                Descripcion = "mock",
                RutaImagen = "mockRoute",
                Stock = 10,
                PrecioUnitario = 15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoDetalleIdNullView()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Detalle(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoDetalleProductoNullView()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Detalle(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoDetalleView()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceProductoServiceMock.Setup(o => o.GetProductoById(1)).Returns(new Producto());
            serviceComentariosServiceMock.Setup(o => o.GetComentariosAsListByProductId(1));

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Detalle(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoGuardarComentarioAProductoUsuarioYProductoNull()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.GuardarComentarioAProducto(1, 1, "mock");
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestProductoGuardarComentarioAProductoTextoNull()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.GuardarComentarioAProducto(1, 1, "");
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestProductoGuardarComentarioAProducto()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceUsuarioMock.Setup(o => o.GetUsuarioById(1)).Returns(new Usuario());
            serviceProductoServiceMock.Setup(o => o.GetProductoById(1)).Returns(new Producto());

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.GuardarComentarioAProducto(1,1,"mock");
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestProductoExisteProductoIdYUsuarioIdEnComentariosAllNull()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.ExisteProductoIdYUsuarioIdEnComentarios(null,null);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestProductoExisteProductoIdYUsuarioIdEnComentariosFail()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceComentariosServiceMock.Setup(o => o.ExisteProductIdAndUserIdEnComentarios(1, 1)).Returns(true);
            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.ExisteProductoIdYUsuarioIdEnComentarios(1, 1);
            Assert.AreEqual(false, resultado);
        }

        [Test]
        public void TestProductoExisteProductoIdYUsuarioIdEnComentarios()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceComentariosServiceMock.Setup(o => o.ExisteProductIdAndUserIdEnComentarios(1, 1)).Returns(false);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.ExisteProductoIdYUsuarioIdEnComentarios(1, 1);
            Assert.AreEqual(true, resultado);
        }

        [Test]
        public void TestProductoEditarNoLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(false);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(false);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoEditarIdProductoNullLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);
            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoEditarProductoNullLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoEditarProductoViewLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            serviceProductoServiceMock.Setup(o => o.GetProductoById(1)).Returns(new Producto());
            serviceProductoServiceMock.Setup(o => o.ProductoToProductView(new Producto())).Returns(new ProductoView());

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(1);
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoEditarIdProductoNullFormlLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(null, new ProductoView()
            {
                Id = 1,
                Nombre = "mock",
                Descripcion = "mock",
                RutaImagen = "mockRoute",
                Stock = 10,
                PrecioUnitario = 15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoEditarFormEmptyLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(1, new ProductoView()
            {
                Id = 1,
                Nombre = "",
                Descripcion = "",
                RutaImagen = "mockRoute",
                Stock = 10,
                PrecioUnitario = 15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoEditarFormPrecioYStockMenor0Logeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(1, new ProductoView()
            {
                Id = 1,
                Nombre = "mock",
                Descripcion = "mock",
                RutaImagen = "mockRoute",
                Stock = -10,
                PrecioUnitario = -15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<ViewResult>(resultado);
        }

        [Test]
        public void TestProductoEditarFormLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Editar(1, new ProductoView()
            {
                Id = 1,
                Nombre = "mock",
                Descripcion = "mock",
                RutaImagen = "mockRoute",
                Stock = 10,
                PrecioUnitario = 15,
                IsActive = true,
                IdCategoria = 1
            });
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoEliminarIdProductoNullLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Eliminar(null);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }

        [Test]
        public void TestProductoEliminarLogeado()
        {
            var serviceCategoriaMock = new Mock<ICategoriaService>();
            var serviceUsuarioMock = new Mock<IUsuarioService>();
            var serviceSessionServiceMock = new Mock<ISessionService>();
            var serviceProductoServiceMock = new Mock<IProductoService>();
            var serviceComentariosServiceMock = new Mock<IComentariosSerivce>();

            serviceSessionServiceMock.Setup(o => o.IsLogged()).Returns(true);
            serviceSessionServiceMock.Setup(o => o.EsAdministrativo()).Returns(true);

            var controladorProducto = new ProductoController(
                serviceProductoServiceMock.Object, serviceUsuarioMock.Object,
                serviceCategoriaMock.Object, serviceComentariosServiceMock.Object,
                serviceSessionServiceMock.Object);

            var resultado = controladorProducto.Eliminar(1);
            Assert.IsInstanceOf<RedirectToRouteResult>(resultado);
        }
    }
}
