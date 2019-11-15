using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebasEcommerce_TresB.Selenium
{
    [TestFixture(Ignore = "true")]
    class TresBTests
    {
        string RutaGlobal = "http://localhost:63901/";
        ChromeOptions opciones = new ChromeOptions();

        [Test]
        public void HomeIndexTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            var pageId = navegador.FindElementById("home");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeEmpresaTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("NosotrosMenuClic").Click();
            var pageId = navegador.FindElementById("HomeNosotrosClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeProductoTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("ProductosMenuClic").Click();
            var pageId = navegador.FindElementById("ProductosIndexClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeContactoTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("ContactoMenuClic").Click();
            var pageId = navegador.FindElementById("HomeContactoClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeContactoFormTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("ContactoMenuClic").Click();
            var pageId = navegador.FindElementById("HomeContactoClic");
            Assert.IsNotNull(pageId);

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,500)");

            navegador.FindElementById("NombreClic").SendKeys("Fernando");
            navegador.FindElementById("EmailClic").SendKeys("dreter100@gmail.com");
            navegador.FindElementById("AsuntoClic").SendKeys("Holitas");
            navegador.FindElementById("MensajeClic").SendKeys("Prueba");
            navegador.FindElementById("EnviarContactoClic").Click();

            var pageIdForm = navegador.FindElementById("HomeContactoClic");
            Assert.IsNotNull(pageIdForm);
            navegador.Close();

        }

        [Test]
        public void HomeLoginTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();
            var pageId = navegador.FindElementById("RegistrarseLoginClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeLoginFormTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            var pageId = navegador.FindElementById("PerfilMenuClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeLoginFormEmptyTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("IngresarLoginClic").Click();

            var pageId = navegador.FindElementById("CerrarAlertaClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeLoginFormOnlyEmailTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("IngresarLoginClic").Click();

            var pageId = navegador.FindElementById("CerrarAlertaClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeRegisterTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("RegisterMenuClic").Click();
            var pageId = navegador.FindElementById("HomeRegistrarseClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeRegisterFormTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("RegisterMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,350)");

            navegador.FindElementById("EmailClic").SendKeys("calidad@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");

            navegador.FindElementById("NombresClic").SendKeys("Calidad");
            navegador.FindElementById("ApellidosClic").SendKeys("Probando");
            navegador.FindElementById("SexoClic").SendKeys("Masculino");
            navegador.FindElementById("CelularClic").SendKeys("12345678");
            navegador.FindElementById("FechaNacimientoClic").SendKeys("06/10/1996");
            navegador.FindElementById("RegistrarseFormClic").Click();

            var pageId = navegador.FindElementById("CerrarAlertaClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeRegisterFormEmailDuplicatedTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("RegisterMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,600)");

            navegador.FindElementById("EmailClic").SendKeys("calidad@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");

            navegador.FindElementById("NombresClic").SendKeys("Calidad");
            navegador.FindElementById("ApellidosClic").SendKeys("Probando");
            navegador.FindElementById("SexoClic").SendKeys("Masculino");
            navegador.FindElementById("CelularClic").SendKeys("12345678");
            navegador.FindElementById("FechaNacimientoClic").SendKeys("06/10/1996");
            navegador.FindElementById("RegistrarseFormClic").Click();
            navegador.FindElementById("RegistrarseFormClic").Click();

            var validacion = navegador.FindElementsById("HomeRegistrarseClic");
            Assert.IsNotNull(validacion);
            navegador.Close();
        }

        [Test]
        public void HomeRegisterFormEmptyTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("RegisterMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,600)");

            navegador.FindElementById("RegistrarseFormClic").Click();

            var validacion = navegador.FindElementsById("HomeRegistrarseClic");
            Assert.IsNotNull(validacion);

            //Assert.NotNull(validacion.ElementAt(0).Text);
            //Assert.NotNull(validacion.ElementAt(1).Text);
            //Assert.NotNull(validacion.ElementAt(2).Text);
            navegador.Close();
        }

        [Test]
        public void CarritoClicTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("CarritoComprasClic").Click();
            var pageId = navegador.FindElementById("RegistrarseLoginClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeAgregarCarritoSinLogearTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,850)");

            navegador.FindElementById("AgregarCarritoProductoClic_26").Click();

            var pageId = navegador.FindElementByXPath("//button[contains(.,'Iniciar sesión')]");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeAgregarListaDeseosSinLogearTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,850)");

            navegador.FindElementById("AgregarListaDeseosClic_26").Click();

            var pageId = navegador.FindElementByXPath("//button[contains(.,'Iniciar sesión')]");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void HomeDetalleProductoSinLogearAgregarCarritoClic()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,850)");

            navegador.FindElementById("DetalleProductoClic_26").Click();
            var pageId = navegador.FindElementById("ProductoDetalleClic");
            Assert.IsNotNull(pageId);

            scroll.ExecuteScript("window.scrollBy(0,450)");

            navegador.FindElementById("AgregarProductoCarritoClic").Click();

            var verificacion = navegador.FindElementByXPath("//button[contains(.,'Iniciar sesión')]");
            Assert.IsNotNull(verificacion);

            navegador.Close();
        }

        [Test]
        public void HomeDetalleProductoSinLogearAgregarListaClic()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,850)");

            navegador.FindElementById("DetalleProductoClic_26").Click();
            var pageId = navegador.FindElementById("ProductoDetalleClic");
            Assert.IsNotNull(pageId);

            scroll.ExecuteScript("window.scrollBy(0,450)");

            navegador.FindElementById("AgregarListaDeseosClic").Click();

            var verificacion = navegador.FindElementByXPath("//button[contains(.,'Iniciar sesión')]");
            Assert.IsNotNull(verificacion);

            navegador.Close();
        }

        [Test]
        public void UsuarioPanelIndexTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();

            var pageId = navegador.FindElementById("UsuarioIndexClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelListarTest()
        {
            ChromeDriver navegador = new ChromeDriver();
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();

            var pageId = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelCrearTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("AgregarPersonalClic").Click();

            var verificacion = navegador.FindElementById("VerificacionCrearUsuarioTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelCrearFormCompleteTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("AgregarPersonalClic").Click();

            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("usuario2@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("usuario1");

            navegador.FindElementById("NombresClic").SendKeys("Usuario");
            navegador.FindElementById("ApellidosClic").SendKeys("Usuario");
            navegador.FindElementById("SexoClic").SendKeys("Masculino");
            navegador.FindElementById("CelularClic").SendKeys("12345678");
            navegador.FindElementById("FechaNacimientoClic").SendKeys("06/10/1996");
            navegador.FindElementById("TipoUsuarioClic").SendKeys("Vendedor");
            navegador.FindElementById("IsActiveClic").SendKeys("Activo");

            navegador.FindElementById("RegistrarEmpleadoClic").Click();

            var verificacion = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelCrearFormEmptyTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("AgregarPersonalClic").Click();

            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("RegistrarEmpleadoClic").Click();

            var verificacion = navegador.FindElementById("VerificacionCrearUsuarioTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelCrearFormEmailDuplicatedTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("AgregarPersonalClic").Click();

            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("usuario1@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("usuario1");

            navegador.FindElementById("NombresClic").SendKeys("Usuario");
            navegador.FindElementById("ApellidosClic").SendKeys("Usuario");
            navegador.FindElementById("SexoClic").SendKeys("Masculino");
            navegador.FindElementById("CelularClic").SendKeys("12345678");
            navegador.FindElementById("FechaNacimientoClic").SendKeys("06/10/1996");
            navegador.FindElementById("TipoUsuarioClic").SendKeys("Vendedor");
            navegador.FindElementById("IsActiveClic").SendKeys("Activo");

            navegador.FindElementById("RegistrarEmpleadoClic").Click();

            var verificacion = navegador.FindElementById("ErrorClic");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelCrearFormBackList()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("AgregarPersonalClic").Click();

            scroll.ExecuteScript("window.scrollBy(0,550)");

            navegador.FindElementById("RegresarListarUsuarioClic").Click();

            var verificacion = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelDetalleUserTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("DetallePersonalClic_8").Click();

            var verificacion = navegador.FindElementById("VerificacionDetalleUsuarioTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelDetalleUserBackTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("DetallePersonalClic_8").Click();

            scroll.ExecuteScript("window.scrollBy(0,650)");

            navegador.FindElementById("RegresarListarUsuarioClic").Click();

            var verificacion = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void UsuarioPanelEditarUserTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("EditarPersonalClic_8").Click();

            var verificacion = navegador.FindElementById("VerificacionEditarUsuarioTag");
            Assert.IsNotNull(verificacion);

            navegador.Close();
        }

        [Test]
        public void UsuarioPanelEditarUserFormTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("EditarPersonalClic_8").Click();

            var verificacion = navegador.FindElementById("VerificacionEditarUsuarioTag");
            Assert.IsNotNull(verificacion);

            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("NombresClic").Clear();
            navegador.FindElementById("NombresClic").SendKeys("UsuarioPrueba");
            navegador.FindElementById("ActualizarUsuarioClic").Click();

            var pageId = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void UsuarioPanelEditarUserFormEmptyTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("EditarPersonalClic_8").Click();

            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("NombresClic").Clear();
            navegador.FindElementById("ApellidosClic").Clear();
            navegador.FindElementById("ActualizarUsuarioClic").Click();

            var pageId = navegador.FindElementById("VerificacionEditarUsuarioTag");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void UsuarioPanelEditarUserFormBackTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("EditarPersonalClic_8").Click();

            var verificacion = navegador.FindElementById("VerificacionEditarUsuarioTag");
            Assert.IsNotNull(verificacion);

            scroll.ExecuteScript("window.scrollBy(0,350)");

            navegador.FindElementById("RegresarListarUsuarioClic").Click();

            var pageId = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void UsuarioPanelEliminarUserTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Empleados").Click();
            navegador.FindElementById("EliminarPersonalClic_10").Click();

            var pageId = navegador.FindElementById("UsuarioListarClic");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void CategoriaPanelListarTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();

            var pageId = navegador.FindElementById("VerificacionListarCategoriasTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void CategoriaPanelCrearTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            navegador.FindElementById("AgregarCategoriaClic").Click();

            var verificacion = navegador.FindElementById("VerificacionCrearCategoriasTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void CategoriaPanelCrearFormCompleteTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            navegador.FindElementById("AgregarCategoriaClic").Click();

            navegador.FindElementById("NombreClic").SendKeys("Probando");

            navegador.FindElementById("AgregarCateogiraClic").Click();

            var verificacion = navegador.FindElementById("VerificacionListarCategoriasTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void CategoriaPanelCrearFormEmptyTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            navegador.FindElementById("AgregarCategoriaClic").Click();

            navegador.FindElementById("AgregarCateogiraClic").Click();

            var verificacion = navegador.FindElementById("VerificacionCrearCategoriasTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void CategoriaPanelCrearFormNombreDuplicatedTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            navegador.FindElementById("AgregarCategoriaClic").Click();

            navegador.FindElementById("NombreClic").SendKeys("Probando");

            navegador.FindElementById("AgregarCateogiraClic").Click();

            var verificacion = navegador.FindElementById("CerrarAlertaClic");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void CategoriaPanelCrearFormBackList()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            navegador.FindElementById("AgregarCategoriaClic").Click();

            navegador.FindElementById("RegresarListarClic").Click();

            var verificacion = navegador.FindElementById("VerificacionListarCategoriasTag");
            Assert.IsNotNull(verificacion);
            navegador.Close();
        }

        [Test]
        public void CategoriaPanelEditarCategoriaTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();

            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("EditarCategoriaClic_11").Click();

            var verificacion = navegador.FindElementById("VerificacionEditarCategoriasTag");
            Assert.IsNotNull(verificacion);

            navegador.Close();
        }

        [Test]
        public void CategoriaPanelEditarCategoriaFormTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("EditarCategoriaClic_11").Click();

            navegador.FindElementById("NombreClic").Clear();
            navegador.FindElementById("NombreClic").SendKeys("Pruebita");
            navegador.FindElementById("ActualizarCateogiraClic").Click();

            var verificacion = navegador.FindElementById("VerificacionListarCategoriasTag");
            Assert.IsNotNull(verificacion);

            navegador.Close();
        }

        [Test]
        public void CategoriaPanelEditarCategoriaFormEmptyTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("EditarCategoriaClic_11").Click();

            navegador.FindElementById("NombreClic").Clear();
            navegador.FindElementById("ActualizarCateogiraClic").Click();

            var pageId = navegador.FindElementById("VerificacionEditarCategoriasTag");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void CategoriaPanelEditarCategoriaFormBackTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("EditarCategoriaClic_11").Click();

            navegador.FindElementById("RegresarListarClic").Click();

            var pageId = navegador.FindElementById("VerificacionListarCategoriasTag");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void CategoriaPanelEliminarCategoriaTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Categorias").Click();
            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("EliminarCategoriaClic_11").Click();

            var pageId = navegador.FindElementById("VerificacionListarCategoriasTag");
            Assert.IsNotNull(pageId);

            navegador.Close();
        }

        [Test]
        public void VentaPanelIndexTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Ventas").Click();

            var pageId = navegador.FindElementById("VerificacionIndexVentasTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void VentaPanelDetalleTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Ventas").Click();
            navegador.FindElementById("DetalleVentaClic_1").Click();

            var pageId = navegador.FindElementById("VerificacionDetalleVentaTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void VentaPanelDetalleBackTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Ventas").Click();
            navegador.FindElementById("DetalleVentaClic_1").Click();

            scroll.ExecuteScript("window.scrollBy(0,250)");
            navegador.FindElementById("RegresarVentaClic").Click();

            var pageId = navegador.FindElementById("VerificacionIndexVentasTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelIndexTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();

            var pageId = navegador.FindElementById("VerificacionListarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelCrearTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("AgregarProductoClic").Click();

            var pageId = navegador.FindElementById("VerificacionCrearProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelCrearFormCompleteTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("AgregarProductoClic").Click();

            navegador.FindElementById("NombreClic").SendKeys("PruebaProducto");
            navegador.FindElementById("DescripcionClic").SendKeys("Descripcion Sencilla como sea");
            navegador.FindElementById("StockClic").Clear();
            navegador.FindElementById("PrecioClic").Clear();
            navegador.FindElementById("StockClic").SendKeys("10");
            navegador.FindElementById("PrecioClic").SendKeys("205");
            scroll.ExecuteScript("window.scrollBy(0,250)");
            navegador.FindElementById("IsActiveClic").SendKeys("Activo");
            navegador.FindElementById("CategoriaClic").SendKeys("Moda");

            navegador.FindElementById("AgregarProductoClic").Click();

            var pageId = navegador.FindElementById("VerificacionListarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelCrearFormEmptyTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("AgregarProductoClic").Click();

            navegador.FindElementById("StockClic").Clear();
            navegador.FindElementById("PrecioClic").Clear();

            scroll.ExecuteScript("window.scrollBy(0,550)");

            navegador.FindElementById("AgregarProductoClic").Click();

            var pageId = navegador.FindElementById("VerificacionCrearProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelCrearFormPrecioStock0Test()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("AgregarProductoClic").Click();

            navegador.FindElementById("NombreClic").SendKeys("PruebaProducto");
            navegador.FindElementById("DescripcionClic").SendKeys("Descripcion Sencilla como sea");
            navegador.FindElementById("StockClic").SendKeys("0");
            navegador.FindElementById("PrecioClic").SendKeys("0");
            scroll.ExecuteScript("window.scrollBy(0,250)");
            navegador.FindElementById("IsActiveClic").SendKeys("Activo");
            navegador.FindElementById("CategoriaClic").SendKeys("Moda");

            navegador.FindElementById("AgregarProductoClic").Click(); ;

            var pageId = navegador.FindElementById("ErrorClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }
        [Test]
        public void ProductoPanelCrearFormBackTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("AgregarProductoClic").Click();

            scroll.ExecuteScript("window.scrollBy(0,550)");

            navegador.FindElementById("RegresarListarClic").Click();

            var pageId = navegador.FindElementById("VerificacionListarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelEditarTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("EditarProductoClic_1").Click();

            var pageId = navegador.FindElementById("VerificacionEditarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelEditarFormTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("EditarProductoClic_1").Click();

            scroll.ExecuteScript("window.scrollBy(0,250)");
            navegador.FindElementById("NombreClic").Clear();
            navegador.FindElementById("DescripcionClic").Clear();
            navegador.FindElementById("NombreClic").SendKeys("Nuevo Nombre del producto");
            navegador.FindElementById("DescripcionClic").SendKeys("Una descripcion breve");

            scroll.ExecuteScript("window.scrollBy(0,450)");
            navegador.FindElementById("ActualizarProductoClic").Click();

            var pageId = navegador.FindElementById("VerificacionListarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelEditarFormEmptyTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("EditarProductoClic_1").Click();

            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("NombreClic").Clear();
            navegador.FindElementById("DescripcionClic").Clear();
            navegador.FindElementById("StockClic").Clear();
            navegador.FindElementById("PrecioClic").Clear();

            scroll.ExecuteScript("window.scrollBy(0,650)");
            navegador.FindElementById("ActualizarProductoClic").Click();

            var pageId = navegador.FindElementById("VerificacionEditarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelEditarFormStockPrecio0Test()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("EditarProductoClic_1").Click();

            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("StockClic").Clear();
            navegador.FindElementById("PrecioClic").Clear();

            scroll.ExecuteScript("window.scrollBy(0,350)");
            navegador.FindElementById("ActualizarProductoClic").Click();

            var pageId = navegador.FindElementById("ErrorClic");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }

        [Test]
        public void ProductoPanelEditarFormBackTest()
        {
            opciones.AddArguments("--start-maximized");
            ChromeDriver navegador = new ChromeDriver(opciones);
            navegador.Url = RutaGlobal;
            navegador.FindElementById("LogInMenuClic").Click();

            IJavaScriptExecutor scroll = (IJavaScriptExecutor)navegador;
            scroll.ExecuteScript("window.scrollBy(0,250)");

            navegador.FindElementById("EmailClic").SendKeys("admin@gmail.com");
            navegador.FindElementById("ClaveClic").SendKeys("admin");
            navegador.FindElementById("IngresarLoginClic").Click();

            navegador.FindElementById("PanelMenuClic").Click();
            navegador.FindElementByLinkText("Productos").Click();
            navegador.FindElementById("EditarProductoClic_1").Click();

            scroll.ExecuteScript("window.scrollBy(0,650)");
            navegador.FindElementById("RegresarListarClic").Click();

            var pageId = navegador.FindElementById("VerificacionListarProductosTag");
            Assert.IsNotNull(pageId);
            navegador.Close();
        }
    }
}
