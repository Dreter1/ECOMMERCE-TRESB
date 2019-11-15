using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class Comentarios
    {
        public int Id { get; set; }
        public string Texto { get; set; }
        public DateTime Fecha { get; set; }
        public int IdUsuario { get; set; }
        public int IdProducto { get; set; }

        public Producto Producto { get; set; }
        public Usuario Usuario { get; set; }
    }
}