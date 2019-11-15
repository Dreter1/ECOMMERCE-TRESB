using ECOMMERCE_TRESB.Interfaces;
using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Services
{
    public class ComentariosSerivce : IComentariosSerivce
    {
        private readonly DbConexion conexion;

        public ComentariosSerivce(DbConexion conexion)
        {
            this.conexion = conexion;
        }
        public Comentarios GetComentarioById(int? IdComentario)
        {
            if (IdComentario == null)
                return null;

            Comentarios comentario = conexion.Comentario.Where(o => o.Id == IdComentario).FirstOrDefault();
            return comentario;
        }
        public List<Comentarios> GetComentariosAsList()
        {
            return conexion.Comentario.Include(u => u.Usuario).Include(p => p.Producto).ToList();
        }
        public List<Comentarios> GetComentariosAsListByProductId(int? IdProducto)
        {
            return conexion.Comentario.Where(p => p.IdProducto == IdProducto).Include(u => u.Usuario).ToList();

        }
        public void GuardarComentario(Usuario usuario, Producto producto, string Texto)
        {
            Comentarios comentario = new Comentarios
            {
                Texto = Texto,
                Fecha = DateTime.Now,
                IdUsuario = usuario.Id,
                IdProducto = producto.Id
            };

            conexion.Comentario.Add(comentario);
            conexion.SaveChanges();
        }
        public void EditarComentario(int? IdComentario, Comentarios Comentario)
        {
            var ComentarioDB = GetComentarioById(IdComentario);
            Comentario.Texto = Comentario.Texto;
            conexion.SaveChanges();
        }
        public void EliminarComentario(int? IdComentario)
        {
            var comentario = GetComentarioById(IdComentario);
            conexion.Comentario.Remove(comentario);
            conexion.SaveChanges();
        }

        public bool ExisteProductIdAndUserIdEnComentarios(int? IdUsuario, int? IdProducto)
        {
            var ComentariosDB = GetComentariosAsList();
            foreach (var comentario in ComentariosDB)
            {
                if (comentario.IdProducto == IdProducto && comentario.IdUsuario == IdUsuario)
                    return true;
            }
            return false;
        }
    }
}