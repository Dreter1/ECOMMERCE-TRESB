using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ECOMMERCE_TRESB.ModelViews;
using System.Web.Mvc;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IValidacionService
    {
        void Categoria(CategoriaView categoriaView, ModelStateDictionary ModelState);
        void Usuario(UsuarioView usuarioView, ModelStateDictionary ModelState);
        void EditarUsuario(UsuarioEditarView usuarioEditarView, ModelStateDictionary ModelState);
        void EditarPerfilUsuario(UsuarioPerfilEditView usuarioPerfilEditView, ModelStateDictionary ModelState);
        void Producto(ProductoView productoView, ModelStateDictionary ModelState);
    }
}
