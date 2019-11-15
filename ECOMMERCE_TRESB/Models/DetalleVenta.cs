using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class DetalleVenta
    {
        public int Id { get; set; }
        public int IdVenta { get; set; }
        public int IdProducto { get; set; }
        public Decimal Subtotal { get; set; }
        public int Cantidad { get; set; }
        public Decimal PrecioUnitario { get; set; }

        public Venta Venta { get; set; }
        public Producto Producto { get; set; }
    }
}