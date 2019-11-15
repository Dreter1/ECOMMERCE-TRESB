using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class ProductoService : IProductoService
    {
        private readonly DbConexion conexion;
        private readonly ImagenService serviceImage;
        
        public ProductoService(DbConexion conexion)
        {
            this.conexion = conexion;
            serviceImage = new ImagenService();
        }

        public int CountProductosByCategoriaId (int? IdCategoria)
        {
            if (IdCategoria == null)
                return 0;

            return conexion.Productos.Where(o => o.IdCategoria == IdCategoria && o.Stock > 0 && o.IsActive == true).Count();
        }

        public int GetTotalPages(int? IdCategoria)
        {
            if (IdCategoria == null)
                return 0;

            int TotalProductos = CountProductosByCategoriaId(IdCategoria);

            if (TotalProductos % 12 > 0)
                return TotalProductos / 12 + 1;

            return TotalProductos / 12;
        }

        public Producto GetProductoById(int? IdProducto)
        {
            if (IdProducto == null)
                return null;

            Producto producto = conexion.Productos.Where(o => o.Id == IdProducto).Include(c => c.Categoria).FirstOrDefault();
            return producto;
        }

        public Producto GetProductoByIdIncludeCategorias(int? IdProducto)
        {
            if (IdProducto == null)
                return null;

            Producto producto = conexion.Productos.Where(o => o.Id == IdProducto).Include(c => c.Categoria).FirstOrDefault();
            return producto;
        }

        public List<Producto> GetProductosAsList()
        {
            return conexion.Productos.Include(c => c.Categoria).ToList();
        }

        public Producto ProductViewToProducto(ProductoView ProductoView)
        {
            return new Producto
            {
                Id = ProductoView.Id,
                Nombre = ProductoView.Nombre,
                Descripcion = ProductoView.Descripcion,
                RutaImagen = ProductoView.RutaImagen,
                Stock = ProductoView.Stock,
                PrecioUnitario = ProductoView.PrecioUnitario,
                IsActive = ProductoView.IsActive,
                IdCategoria = ProductoView.IdCategoria
            };
        }

        public ProductoView ProductoToProductView(Producto Producto)
        {
            return new ProductoView
            {
                Id = Producto.Id,
                Nombre = Producto.Nombre,
                Descripcion = Producto.Descripcion,
                RutaImagen = Producto.RutaImagen,
                Stock = Producto.Stock,
                PrecioUnitario = Producto.PrecioUnitario,
                IsActive = Producto.IsActive,
                IdCategoria = Producto.IdCategoria               
            };
        }

        public Producto AsignarRutaDeImagen(ProductoView ProductoView, Producto Producto)
        {
            var RutaImagen = string.Empty;
            var Carpeta = "~/Imagenes/Productos";

            if (ProductoView.RutaImagen != null)
                RutaImagen = ProductoView.RutaImagen;

            if (ProductoView.Imagen != null)
            {
                RutaImagen = serviceImage.GetRutaImagen(ProductoView.Imagen, Carpeta);
                RutaImagen = string.Format("{0}/{1}", Carpeta, RutaImagen);
            }

            Producto.RutaImagen = RutaImagen;
            return Producto;
        }

        public void GuardarProducto(Producto Producto)
        {
            conexion.Productos.Add(Producto);
            conexion.SaveChanges();
        }

        public void EditarProducto(int? IdProducto, Producto Producto)
        {
            var productoDB = GetProductoByIdIncludeCategorias(IdProducto);
            productoDB.Nombre = Producto.Nombre;
            productoDB.Descripcion = Producto.Descripcion;
            productoDB.Stock = Producto.Stock;
            productoDB.PrecioUnitario = Producto.PrecioUnitario;
            productoDB.RutaImagen = Producto.RutaImagen;
            productoDB.IsActive = Producto.IsActive;
            productoDB.IdCategoria = Producto.IdCategoria;
            conexion.SaveChanges();
        }

        public void EliminarProducto(int? IdProducto)
        {
            var producto = GetProductoByIdIncludeCategorias(IdProducto);
            conexion.Productos.Remove(producto);
            conexion.SaveChanges();
        }

        public List<Producto> GetProductsAsListByCategory(int IdCategoria, int Page, int NumItems)
        {

            List<Producto> productos  = conexion.Productos.
                                            Where(o => o.IdCategoria == IdCategoria && o.Stock > 0 && o.IsActive == true).
                                            OrderBy(o => o.Id).
                                            Skip((Page - 1) * NumItems).
                                            Take(NumItems).
                                            ToList();

            return productos;
        }

        public bool SiExistenLosProductos(List<CarritoCompras> productos)
        {
            foreach (var producto in productos)
                if (GetProductoById(producto.IdProducto) == null)
                    return false;

            return true;
        }

        public bool SiHayStockDisponible(List<CarritoCompras> productos)
        {
            Producto productoBd;

            foreach (var producto in productos)
            {
                productoBd = GetProductoById(producto.IdProducto);
                if (productoBd.Stock < producto.Cantidad)
                    return false;
            }

            return true;
        }

        public void ActualizarStock(List<CarritoCompras> productos)
        {
            Producto productoBd;

            foreach (var producto in productos)
            {
                productoBd = conexion.Productos.Where(o => o.Id == producto.IdProducto).FirstOrDefault();
                productoBd.Stock -= producto.Cantidad;
                conexion.SaveChanges();
            }
        }
    }
}