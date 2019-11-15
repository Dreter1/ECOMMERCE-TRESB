using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.ModelViews
{
    public class UsuarioPerfilEditView
    {
        public int Id { get; set; }

        public string Nombres { get; set; }

        public string Apellidos { get; set; }

        public bool Sexo { get; set; }

        public string Celular { get; set; }
    }
}