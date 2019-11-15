using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.ModelViews
{
    public class ProductoView
    {
        public int Id { get; set; }

        public string Nombre { get; set; }

        public string Descripcion { get; set; }

        public int Stock { get; set; }

        public Decimal PrecioUnitario { get; set; }

        public string RutaImagen { get; set; }

        public bool IsActive { get; set; }

        public int IdCategoria { get; set; }

        public HttpPostedFileBase Imagen { get; set; }

    }
}