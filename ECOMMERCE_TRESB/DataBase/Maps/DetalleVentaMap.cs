using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class DetalleVentaMap : EntityTypeConfiguration<DetalleVenta>
    {
        public DetalleVentaMap()
        {
            ToTable("DetalleVenta");

            HasKey(pk => pk.Id);

            HasRequired(v => v.Venta)
                .WithMany(dv => dv.DetallesVenta)
                .HasForeignKey(fk => fk.IdVenta);

            HasRequired(p => p.Producto)
                .WithMany(dv => dv.DetallesVenta)
                .HasForeignKey(fk => fk.IdProducto);
        }
    }
}