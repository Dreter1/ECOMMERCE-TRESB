using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.DataBase;
using System.Data.Entity;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class DetalleVentaService : IDetalleVentaService
    {
        private readonly DbConexion conexion;

        public DetalleVentaService(DbConexion conexion)
        {
            this.conexion = conexion;
        }

        public DetalleVenta GetDetalleVentaById(int? IdDetalleVenta)
        {
            if (IdDetalleVenta == null)
                return null;

            DetalleVenta DetalleDeVenta = conexion.DetallesVenta.Where(o => o.Id == IdDetalleVenta).FirstOrDefault();
            return DetalleDeVenta;
        }

        public List<DetalleVenta> GetDetalleVentaAsList()
        {
            return conexion.DetallesVenta.Include(v => v.Venta).ToList();
        }
    }
}