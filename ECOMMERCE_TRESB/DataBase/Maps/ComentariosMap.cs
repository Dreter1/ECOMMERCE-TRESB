using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class ComentariosMap : EntityTypeConfiguration<Comentarios>
    {
        public ComentariosMap()
        {
            ToTable("Comentarios");
            HasKey(pk => pk.Id);

            HasRequired(u => u.Usuario)
                .WithMany(c => c.Comentarios)
                .HasForeignKey(fk => fk.IdUsuario);

            HasRequired(p => p.Producto)
                .WithMany(c => c.Comentarios)
                .HasForeignKey(fk => fk.IdProducto);
        }
    }
}