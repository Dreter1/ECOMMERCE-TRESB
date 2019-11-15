using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class Venta
    {
        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public DateTime Fecha { get; set; }
        public Decimal MontoTotal { get; set; }
        public byte TipoPago { get; set; }
        public int IdDireccion { get; set; }
        public Usuario Usuario { get; set; }
        public List<DetalleVenta> DetallesVenta { get; set; }
        public Direccion Direccion { get; set; }
    }
}