using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.ModelViews
{
    public class DireccionView
    {
        public string Calle { get; set; }
        public string Pais { get; set; }
        public string Region { get; set; }
        public string Ciudad { get; set; }
        public string CodigoPostal { get; set; }
    }
}