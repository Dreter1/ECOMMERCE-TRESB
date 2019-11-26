using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IVentaService
    {
        Venta GetVentaById(int? IdVenta);
        List<Venta> GetVentasAsList();
        void EliminarVenta(int? IdVenta);
        List<Venta> GetVentasDeUsuarioById(int? IdUsuario);
        List<DetalleVenta> GetDetalleVentasAsList();
        void GuardarVenta(Usuario usuario, List<CarritoCompras> productos, Direccion direccion, byte TipoDePago);
        List<ListaFavoritos> GetListaFavoritosByUserAsList(int? IdUsuario);
        bool ExisteProductIdAndUserIdEnListaFavoritos(int? IdUsuario, int? IdProducto);
        void AgregarProductoALista(Usuario usuario, Producto producto);
        void EliminarProductoDeLista(int? IdProducto, int? IdUsuario);
        List<CarritoCompras> GetCarritoComprasByUserAsList(int? IdUsuario);
        CarritoCompras GetCarritoComprasByProductIdAndUserId(int? IdUsuario, int? IdProducto);
        bool ExisteProductIdAndUserIdEnCarritoCompras(int? IdUsuario, int? IdProducto);
        void AgregarProductoACarritoCompras(Usuario usuario, Producto producto, int cantidad);
        void ActualizarCantidadByIdProductoCarrito(int? IdProducto, int? IdUsuario, int NuevaCantidad);
        void EliminarProductoDeCarritoCompras(int? IdProducto, int? IdUsuario);
    }
}
