using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{ 
    public class ProductoMap : EntityTypeConfiguration<Producto>
    {
        public ProductoMap()
        {
            ToTable("Producto");
            HasKey(o => o.Id);

            HasRequired(c => c.Categoria)
                .WithMany(p => p.Productos)
                .HasForeignKey(fk => fk.IdCategoria);
        }

    }
}