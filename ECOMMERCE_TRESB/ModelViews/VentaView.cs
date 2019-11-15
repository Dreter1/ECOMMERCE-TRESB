using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.ModelViews
{

    public class ProductoVentaView
    {
        public int id { get; set; }
        public int precio { get; set; }
        public int cantidad { get; set; }
    }

    public class VentaView
    {
        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public Decimal MontoTotal { get; set; }
        public byte TipoPago { get; set; }
        public List<ProductoVentaView> Productos { get; set; }
        public List<int> Cantidad { get; set; }
    }

}