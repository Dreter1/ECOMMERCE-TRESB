using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class ListaFavoritosMap : EntityTypeConfiguration<ListaFavoritos>
    {
        public ListaFavoritosMap()
        {
            ToTable("ListaFavoritos");
            HasKey(pk => pk.Id);

            HasRequired(u => u.Usuario)
                .WithMany(lf => lf.Favoritos)
                .HasForeignKey(fk => fk.IdUsuario);

            HasRequired(p => p.Productos)
                .WithMany(lf => lf.ProductosFavoritos)
                .HasForeignKey(fk => fk.IdProducto);
        }
    }
}