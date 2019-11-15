using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.DataBase;
using SimpleCrypto;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class UsuarioService : IUsuarioService
    {
        private readonly DbConexion conexion;

        public UsuarioService(DbConexion conexion)
        {
            this.conexion = conexion;
        }

        public Usuario GetUsuarioById(int? IdUsuario)
        {
            if (IdUsuario == null)
                return null;

            Usuario usuario = conexion.Usuarios.Where(o => o.Id == IdUsuario).FirstOrDefault();
            return usuario;
        }

        public List<Usuario> GetUsuariosAsList()
        {
            return conexion.Usuarios.ToList();
        }

        public List<Usuario> GetClienteAsList()
        {
            return conexion.Usuarios.Where(u => u.TipoUsuario == InfoAtributos.TIPO_USUARIO.CLIENTE).ToList();
        }

        public List<Usuario> GetUsuariosVendedorYAdminAsList()
        {
            return conexion.Usuarios.Where(u => u.TipoUsuario != InfoAtributos.TIPO_USUARIO.CLIENTE).ToList();
        }

        public Usuario UsuarioViewToUsuario(UsuarioView UsuarioView)
        {
            return new Usuario
            {
                Id = UsuarioView.Id,
                Email = UsuarioView.Email,
                Clave = UsuarioView.Clave,
                Salt = UsuarioView.Salt,
                Nombres = UsuarioView.Nombres,
                Apellidos = UsuarioView.Apellidos,
                Sexo = UsuarioView.Sexo,
                FechaNacimiento = UsuarioView.FechaNacimiento,
                Celular = UsuarioView.Celular,
                TipoUsuario = UsuarioView.TipoUsuario,
                IsActive = UsuarioView.IsActive,
                FechaRegistro = UsuarioView.FechaRegistro
            };
        }

        public UsuarioView UsuarioToUsuarioView(Usuario Usuario)
        {
            return new UsuarioView
            {
                Id = Usuario.Id,
                Email = Usuario.Email,
                Clave = Usuario.Clave,
                Salt = Usuario.Salt,
                Nombres = Usuario.Nombres,
                Apellidos = Usuario.Apellidos,
                Sexo = Usuario.Sexo,
                FechaNacimiento = Usuario.FechaNacimiento,
                Celular = Usuario.Celular,
                TipoUsuario = Usuario.TipoUsuario,
                IsActive = Usuario.IsActive,
                FechaRegistro = Usuario.FechaRegistro
            };
        }

        public void GuardarUsuario(Usuario Usuario)
        {
            Usuario.FechaRegistro = DateTime.Now;
            ICryptoService cryptoService = new PBKDF2();

            Usuario.Salt = cryptoService.GenerateSalt();
            Usuario.Clave = cryptoService.Compute(Usuario.Clave);

            Usuario.TipoUsuario = InfoAtributos.TIPO_USUARIO.CLIENTE;
            Usuario.IsActive = true;

            conexion.Usuarios.Add(Usuario);
            conexion.SaveChanges();
        }

        public Usuario UsuarioEditarViewToUsuario(UsuarioEditarView UsuarioEditarView)
        {
            return new Usuario
            {
                Id = UsuarioEditarView.Id,
                Nombres = UsuarioEditarView.Nombres,
                Apellidos = UsuarioEditarView.Apellidos,
                Sexo = UsuarioEditarView.Sexo,
                FechaNacimiento = UsuarioEditarView.FechaNacimiento,
                Celular = UsuarioEditarView.Celular,
                IsActive = UsuarioEditarView.IsActive,
                TipoUsuario = UsuarioEditarView.TipoUsuario
            };
        }

        public UsuarioEditarView UsuarioToUsuarioEditarView(Usuario Usuario)
        {
            return new UsuarioEditarView
            {
                Id = Usuario.Id,
                Nombres = Usuario.Nombres,
                Apellidos = Usuario.Apellidos,
                Sexo = Usuario.Sexo,
                FechaNacimiento = Usuario.FechaNacimiento,
                Celular = Usuario.Celular,
                IsActive = Usuario.IsActive,
                TipoUsuario = Usuario.TipoUsuario,
            };
        }

        public void EditarUsuario(int? IdUsuario, Usuario Usuario)
        {
            var UsuarioDB = GetUsuarioById(IdUsuario);
            UsuarioDB.Nombres = Usuario.Nombres;
            UsuarioDB.Apellidos = Usuario.Apellidos;
            UsuarioDB.Sexo = Usuario.Sexo;
            UsuarioDB.Celular = Usuario.Celular;
            UsuarioDB.IsActive = Usuario.IsActive;
            conexion.SaveChanges();
        }

        public void EliminarUsuario(int? IdUsuario)
        {
            var usuario = GetUsuarioById(IdUsuario);
            conexion.Usuarios.Remove(usuario);
            conexion.SaveChanges();
        }

        public bool ExisteElCorreo(string email)
        {
            if (conexion.Usuarios.Any(u => u.Email == email))
                return true;
            return false;
        }

        public Usuario GetUsuarioByCorreoAndClave(string Correo, string Clave)
        {

            Usuario usuario = conexion.Usuarios.Where(u => u.Email == Correo).FirstOrDefault();

            if (usuario == null)
                return null;

            ICryptoService cryptoService = new PBKDF2();

            if (cryptoService.Compare(cryptoService.Compute(Clave, usuario.Salt), usuario.Clave))
                return usuario;

            return null;
        }


        public Usuario UsuarioPerfilEditViewToUsuario(UsuarioPerfilEditView UsuarioPerfilEditView)
        {
            return new Usuario
            {
                Id = UsuarioPerfilEditView.Id,
                Nombres = UsuarioPerfilEditView.Nombres,
                Apellidos = UsuarioPerfilEditView.Apellidos,
                Sexo = UsuarioPerfilEditView.Sexo,
                Celular = UsuarioPerfilEditView.Celular
            };
        }

        public UsuarioPerfilEditView UsuarioToUsuarioPerfilEditView(Usuario Usuario)
        {
            return new UsuarioPerfilEditView
            {
                Id = Usuario.Id,
                Nombres = Usuario.Nombres,
                Apellidos = Usuario.Apellidos,
                Sexo = Usuario.Sexo,
                Celular = Usuario.Celular
            };
        }

        public void EditarPerfil(int? IdUsuario, Usuario Usuario)
        {
            var UsuarioDB = GetUsuarioById(IdUsuario);
            UsuarioDB.Nombres = Usuario.Nombres;
            UsuarioDB.Apellidos = Usuario.Apellidos;
            UsuarioDB.Sexo = Usuario.Sexo;
            UsuarioDB.Celular = Usuario.Celular;
            conexion.SaveChanges();
        }

        public void AgregarDireccionUsuario(Usuario usuario, string Calle, string Pais, string Region, string Ciudad, string CodigoPostal)
        {
            Direccion NuevaDireccion = new Direccion
            {
                Calle = Calle,
                Pais = Pais,
                Region = Region,
                Ciudad = Ciudad,
                CodigoPostal = CodigoPostal,
                IdUsuario = usuario.Id
            };
            conexion.Direccion.Add(NuevaDireccion);
            conexion.SaveChanges();
        }

    }
}