using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class DireccionService : IDireccionService
    {
        private readonly DbConexion conexion;

        public DireccionService(DbConexion conexion)
        {
            this.conexion = conexion;
        }

        public Direccion GetDireccionById(int? IdDireccion)
        {
            if (IdDireccion == null)
                return null;

            Direccion direccion = conexion.Direccion.Where(o => o.Id == IdDireccion).FirstOrDefault();
            return direccion;
        }

        public List<Direccion> GetDireccionAsList()
        {
            return conexion.Direccion.Include(u => u.Usuario).ToList();
        }

        public List<Direccion> GetDireccionByUsuarioList(int? IdUsuario)
        {
            return conexion.Direccion.Where(d => d.IdUsuario == IdUsuario).Include(u => u.Usuario).ToList();
        }
    }
}