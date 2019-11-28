using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface IUsuarioService
    {
        Usuario GetUsuarioById(int? IdUsuario);
        List<Usuario> GetUsuariosAsList();
        List<Usuario> GetClienteAsList();
        List<Usuario> GetUsuariosVendedorYAdminAsList();
        Usuario UsuarioViewToUsuario(UsuarioView UsuarioView);
        UsuarioView UsuarioToUsuarioView(Usuario Usuario);
        void GuardarUsuario(Usuario Usuario);
        void GuardarPersonal(Usuario Usuario);
        Usuario UsuarioEditarViewToUsuario(UsuarioEditarView UsuarioEditarView);
        UsuarioEditarView UsuarioToUsuarioEditarView(Usuario Usuario);
        void EditarUsuario(int? IdUsuario, Usuario Usuario);
        void EliminarUsuario(int? IdUsuario);
        bool ExisteElCorreo(string email);
        Usuario GetUsuarioByCorreoAndClave(string Correo, string Clave);
        Usuario UsuarioPerfilEditViewToUsuario(UsuarioPerfilEditView UsuarioPerfilEditView);
        UsuarioPerfilEditView UsuarioToUsuarioPerfilEditView(Usuario Usuario);
        void EditarPerfil(int? IdUsuario, Usuario Usuario);
        void AgregarDireccionUsuario(Usuario usuario, string Calle, string Pais, string Region, string Ciudad, string CodigoPostal);
    }
}
