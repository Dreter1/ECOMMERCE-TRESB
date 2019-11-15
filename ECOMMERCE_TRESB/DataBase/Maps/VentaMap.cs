using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class VentaMap : EntityTypeConfiguration<Venta>
    {

        public VentaMap()
        {
            ToTable("Venta");
            HasKey(pk => pk.Id);

            HasRequired(u => u.Usuario)
                .WithMany(v => v.Ventas)
                .HasForeignKey(fk => fk.IdUsuario);

            HasRequired(d => d.Direccion)
                .WithMany(v => v.Ventas).
                HasForeignKey(fk => fk.IdDireccion);
        }
    }
}