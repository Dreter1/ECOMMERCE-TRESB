using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface ISessionService
    {
        void GuardarSesion(Usuario Usuario);
        void LimpiarSesion();
        bool IsLogged();
        bool EsAdministrativo();
        bool EsPersonalDeLaTienda();
        bool ValidarPerfil(int? IdUsuario);
        bool EsSuListaDeFavoritos(int? IdUsuario);
        bool EsSuCarritoDeCompras(int? IdUsuario);
        int ConvertirSessionIdAIntId();
        void GuardarCarritoEnSession(List<CarritoCompras> carritoCompras);
        List<CarritoCompras> RetornarProductosDelCarritoSession();
    }
}
