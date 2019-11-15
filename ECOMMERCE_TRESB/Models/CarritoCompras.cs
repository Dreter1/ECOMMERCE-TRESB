using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class CarritoCompras
    {
        public int Id { get; set; }
        public int IdProducto { get; set; }
        public int Cantidad { get; set; }
        public int IdUsuario { get; set; }

        public Producto Productos { get; set; }
        public Usuario Usuario { get; set; }
    }
}