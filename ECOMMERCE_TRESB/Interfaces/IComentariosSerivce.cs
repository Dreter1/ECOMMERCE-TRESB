using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IComentariosSerivce
    {
        Comentarios GetComentarioById(int? IdComentario);
        List<Comentarios> GetComentariosAsList();
        List<Comentarios> GetComentariosAsListByProductId(int? IdProducto);
        void GuardarComentario(Usuario usuario, Producto producto, string Texto);
        void EditarComentario(int? IdComentario, Comentarios Comentario);
        void EliminarComentario(int? IdComentario);
        bool ExisteProductIdAndUserIdEnComentarios(int? IdUsuario, int? IdProducto);
    }
}
