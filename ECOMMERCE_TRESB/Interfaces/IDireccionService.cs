using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IDireccionService
    {
        Direccion GetDireccionById(int? IdDireccion);
        List<Direccion> GetDireccionAsList();
        List<Direccion> GetDireccionByUsuarioList(int? IdUsuario);
    }
}
