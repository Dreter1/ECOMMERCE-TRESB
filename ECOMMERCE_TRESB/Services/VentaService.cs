using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.DataBase;
using System.Data.Entity;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class VentaService : IVentaService
    {
        private readonly DbConexion conexion;
        private readonly IProductoService serviceProducto;

        public VentaService(DbConexion conexion)
        {
            this.conexion = conexion;
            serviceProducto = new ProductoService(conexion);
        }

        public Venta GetVentaById(int? IdVenta)
        {
            if (IdVenta == null)
                return null;

            Venta venta = conexion.Ventas.Where(o => o.Id == IdVenta).FirstOrDefault();
            return venta;
        }

        public List<Venta> GetVentasAsList()
        {
            return conexion.Ventas.Include(u => u.Usuario).ToList();
        }

        public List<Venta> GetVentasDeUsuarioById(int? IdUsuario)
        {
            return conexion.Ventas.Where(v => v.IdUsuario == IdUsuario).Include(u => u.Usuario).ToList();
        }

        public void EliminarVenta(int? IdVenta)
        {
            var VentaDB = GetVentaById(IdVenta);
            conexion.Ventas.Remove(VentaDB);
            conexion.SaveChanges();
        }

        public List<DetalleVenta> GetDetalleVentasAsList()
        {
            return conexion.DetallesVenta.Include(v => v.Venta).Include(p => p.Producto).ToList();
        }

        public void GuardarVenta(Usuario usuario, List<CarritoCompras> productos, Direccion direccion, byte TipoDePago)
        {
            var venta = new Venta
            {
                TipoPago = TipoDePago,
                Fecha = DateTime.Now,
                IdUsuario = usuario.Id,
                IdDireccion = direccion.Id
            };
            conexion.Ventas.Add(venta);
            conexion.SaveChanges();

            foreach (var producto in productos)
            {
                Producto productoBd = serviceProducto.GetProductoById(producto.IdProducto);
                DetalleVenta detalle = new DetalleVenta
                {
                    IdProducto = productoBd.Id,
                    IdVenta = venta.Id,
                    PrecioUnitario = productoBd.PrecioUnitario,
                    Cantidad = producto.Cantidad,
                    Subtotal = productoBd.PrecioUnitario * producto.Cantidad
                };

                venta.MontoTotal += detalle.Subtotal;
                conexion.DetallesVenta.Add(detalle);

                EliminarProductoDeCarritoCompras(producto.IdProducto, usuario.Id);
                conexion.SaveChanges();
            }
        }

        public List<ListaFavoritos> GetListaFavoritosByUserAsList(int? IdUsuario)
        {
            return conexion.ListaDeFavoritos.Where(lf => lf.IdUsuario == IdUsuario).Include(u => u.Usuario).Include(p => p.Productos).ToList();
        }

        public ListaFavoritos GetListaFavoritosByProductIdAndUserId(int? IdProducto, int? IdUsuario)
        {
            if (IdProducto == null && IdUsuario == null)
                return null;

            ListaFavoritos ListaFavoritos = conexion.ListaDeFavoritos.Where(o => o.IdProducto == IdProducto && o.IdUsuario == IdUsuario).FirstOrDefault();
            return ListaFavoritos;
        }

        public bool ExisteProductIdAndUserIdEnListaFavoritos(int? IdUsuario, int? IdProducto)
        {
            var ListaFavoritos = GetListaFavoritosByUserAsList(IdUsuario);
            foreach (var producto in ListaFavoritos)
            {
                if (producto.IdProducto == IdProducto)
                    return true;
            }
            return false;
        }

        public void AgregarProductoALista(Usuario usuario, Producto producto)
        {
            ListaFavoritos agregarProducto = new ListaFavoritos
            {
                IdProducto = producto.Id,
                IdUsuario = usuario.Id
            };
            conexion.ListaDeFavoritos.Add(agregarProducto);
            conexion.SaveChanges();
        }

        public void EliminarProductoDeLista(int? IdProducto, int? IdUsuario)
        {
            var ListaDeseosDB = GetListaFavoritosByProductIdAndUserId(IdProducto, IdUsuario);
            conexion.ListaDeFavoritos.Remove(ListaDeseosDB);
            conexion.SaveChanges();
        }

        public List<CarritoCompras> GetCarritoComprasByUserAsList(int? IdUsuario)
        {
            return conexion.CarritoDeCompras.Where(lf => lf.IdUsuario == IdUsuario).Include(u => u.Usuario).Include(p => p.Productos).ToList();
        }

        public CarritoCompras GetCarritoComprasByProductIdAndUserId(int? IdUsuario, int? IdProducto)
        {
            if (IdProducto == null && IdUsuario == null)
                return null;

            CarritoCompras CarritoDeCompras = conexion.CarritoDeCompras.Where(o => o.IdProducto == IdProducto && o.IdUsuario == IdUsuario).FirstOrDefault();
            return CarritoDeCompras;
        }

        public bool ExisteProductIdAndUserIdEnCarritoCompras(int? IdUsuario, int? IdProducto)
        {
            var CarritoComprasDB = GetCarritoComprasByUserAsList(IdUsuario);
            foreach (var producto in CarritoComprasDB)
            {
                if (producto.IdProducto == IdProducto)
                    return true;
            }
            return false;
        }

        public void AgregarProductoACarritoCompras(Usuario usuario, Producto producto, int cantidad)
        {
            CarritoCompras agregarProducto = new CarritoCompras
            {
                IdProducto = producto.Id,
                Cantidad = cantidad,
                IdUsuario = usuario.Id
            };
            conexion.CarritoDeCompras.Add(agregarProducto);
            conexion.SaveChanges();
        }

        public void ActualizarCantidadByIdProductoCarrito(int? IdProducto, int? IdUsuario,int NuevaCantidad)
        {
            var CarritoComprasDB = GetCarritoComprasByProductIdAndUserId(IdUsuario, IdProducto);
            CarritoComprasDB.Cantidad = NuevaCantidad;
            conexion.SaveChanges();
        }

        public void EliminarProductoDeCarritoCompras(int? IdProducto, int? IdUsuario)
        {
            var CarritoComprasDB = GetCarritoComprasByProductIdAndUserId(IdUsuario, IdProducto);
            conexion.CarritoDeCompras.Remove(CarritoComprasDB);
            conexion.SaveChanges();
        }

    }
}