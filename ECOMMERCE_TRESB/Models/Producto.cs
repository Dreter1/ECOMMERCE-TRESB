using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class Producto
    {
        public int Id { get; set; }
        public int IdCategoria { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string RutaImagen { get; set; }
        public int Stock { get; set; }
        public Decimal PrecioUnitario { get; set; }
        public bool IsActive { get; set; }

        public Categoria Categoria { get; set; }
        public List<DetalleVenta> DetallesVenta { get; set; }
        public List<ListaFavoritos> ProductosFavoritos { get; set; }
        public List<CarritoCompras> ProductosDeCarritoCompras { get; set; }
        public List<Comentarios> Comentarios { get; set; }
    }
}