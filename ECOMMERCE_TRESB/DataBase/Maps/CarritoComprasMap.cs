using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class CarritoComprasMap : EntityTypeConfiguration<CarritoCompras>
    {
        public CarritoComprasMap()
        {
            ToTable("CarritoCompras");
            HasKey(pk => pk.Id);

            HasRequired(u => u.Usuario)
                .WithMany(cc => cc.CarritoDeCompras)
                .HasForeignKey(fk => fk.IdUsuario);

            HasRequired(p => p.Productos)
                .WithMany(cc => cc.ProductosDeCarritoCompras)
                .HasForeignKey(fk => fk.IdProducto);
        }
    }
}