using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.DataBase;
using System.ComponentModel.DataAnnotations;

namespace ECOMMERCE_TRESB.ModelViews
{
    public class UsuarioView
    {
        public int Id { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [DataType(DataType.Password)]
        public string Clave { get; set; }

        public string Salt { get; set; }

        public string Nombres { get; set; }

        public string Apellidos { get; set; }

        public bool Sexo { get; set; }

        public DateTime FechaNacimiento { get; set; }

        public string Celular { get; set; }

        public Byte TipoUsuario { get; set; }
        public DateTime FechaRegistro { get; set; }
        public bool IsActive { get; set; }
    }
}