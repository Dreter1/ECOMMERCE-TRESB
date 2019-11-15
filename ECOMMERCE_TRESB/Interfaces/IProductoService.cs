using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECOMMERCE_TRESB.Interfaces
{

    public interface IProductoService
    {
        int CountProductosByCategoriaId(int? IdCategoria);
        int GetTotalPages(int? IdCategoria);
        Producto GetProductoById(int? IdProducto);
        Producto GetProductoByIdIncludeCategorias(int? IdProducto);
        List<Producto> GetProductosAsList();
        Producto ProductViewToProducto(ProductoView ProductoView);
        ProductoView ProductoToProductView(Producto Producto);
        Producto AsignarRutaDeImagen(ProductoView ProductoView, Producto Producto);
        void GuardarProducto(Producto Producto);
        void EditarProducto(int? IdProducto, Producto Producto);
        void EliminarProducto(int? IdProducto);
        List<Producto> GetProductsAsListByCategory(int IdCategoria, int Page, int NumItems);
        bool SiExistenLosProductos(List<CarritoCompras> productos);
        bool SiHayStockDisponible(List<CarritoCompras> productos);
        void ActualizarStock(List<CarritoCompras> productos);

    }

}
