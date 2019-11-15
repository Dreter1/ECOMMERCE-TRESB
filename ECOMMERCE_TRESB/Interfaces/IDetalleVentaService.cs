using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ECOMMERCE_TRESB.Models;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IDetalleVentaService
    {
        DetalleVenta GetDetalleVentaById(int? IdDetalleVenta);
        List<DetalleVenta> GetDetalleVentaAsList();
    }
}
