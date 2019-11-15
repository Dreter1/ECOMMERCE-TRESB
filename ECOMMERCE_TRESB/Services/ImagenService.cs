using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class ImagenService : IImagenService
    {
        public string GetRutaImagen(HttpPostedFileBase Archivo, string Carpeta)
        {
            var Ruta = string.Empty;
            var Imagen = string.Empty;

            if (Archivo != null)
            {
                Imagen = Path.GetFileName(Archivo.FileName);
                Ruta = Path.Combine(HttpContext.Current.Server.MapPath(Carpeta), Imagen);
                Archivo.SaveAs(Ruta);
            }

            return Imagen;
        }
    }
}