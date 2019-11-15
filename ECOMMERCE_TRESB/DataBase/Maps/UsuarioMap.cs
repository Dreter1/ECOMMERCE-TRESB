using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.DataBase.Maps
{
    public class UsuarioMap : EntityTypeConfiguration<Usuario>
    {

        public UsuarioMap()
        {
            ToTable("Usuario");
            HasKey(o => o.Id);
        }

    }
}