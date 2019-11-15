using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class Direccion
    {
        public int Id { get; set; }
        public string Calle { get; set; }
        public string Pais { get; set; }
        public string Region { get; set; }
        public string Ciudad { get; set; }
        public string CodigoPostal { get; set; }
        public int IdUsuario { get; set; }
        public Usuario Usuario { get; set; }
        public List<Venta> Ventas { get; set; }
    }
}