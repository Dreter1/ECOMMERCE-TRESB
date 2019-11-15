using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IImagenService
    {
        string GetRutaImagen(HttpPostedFileBase Archivo, string Carpeta);
    }
}
