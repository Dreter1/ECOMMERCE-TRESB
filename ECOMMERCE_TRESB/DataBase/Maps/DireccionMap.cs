using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class DireccionMap : EntityTypeConfiguration<Direccion>
    {
        public DireccionMap()
        {
            ToTable("Direccion");
            HasKey(pk => pk.Id);

            HasRequired(u => u.Usuario)
                .WithMany(d => d.Direcciones)
                .HasForeignKey(fk => fk.IdUsuario);
        }
    }
}