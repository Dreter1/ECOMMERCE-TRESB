using ECOMMERCE_TRESB.DataBase.Maps;
using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB
{
    public class DbConexion : DbContext
    {
        public virtual IDbSet<Usuario> Usuarios { get; set; }
        public virtual IDbSet<Venta> Ventas { get; set; }
        public virtual IDbSet<DetalleVenta> DetallesVenta { get; set; }
        public virtual IDbSet<Producto> Productos { get; set; }
        public virtual IDbSet<Categoria> Categorias { get; set; }
        public virtual IDbSet<ListaFavoritos> ListaDeFavoritos { get; set; }
        public virtual IDbSet<CarritoCompras> CarritoDeCompras { get; set; }
        public virtual IDbSet<Direccion> Direccion { get; set; }
        public virtual IDbSet<Comentarios> Comentario { get; set; }

        public DbConexion()
        {
            Database.SetInitializer<DbConexion>(null);
        }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Configurations.Add(new UsuarioMap());
            modelBuilder.Configurations.Add(new VentaMap()); 
            modelBuilder.Configurations.Add(new DetalleVentaMap());
            modelBuilder.Configurations.Add(new ProductoMap());
            modelBuilder.Configurations.Add(new CategoriaMap());
            modelBuilder.Configurations.Add(new ListaFavoritosMap());
            modelBuilder.Configurations.Add(new CarritoComprasMap());
            modelBuilder.Configurations.Add(new DireccionMap());
            modelBuilder.Configurations.Add(new ComentariosMap());
        }
    }
}