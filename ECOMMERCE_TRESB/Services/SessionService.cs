﻿using ECOMMERCE_TRESB.Interfaces;
using ECOMMERCE_TRESB.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Services
{
    public class SessionService : ISessionService
    {
        private readonly HttpContext contexto;
        private readonly UsuarioService usuarioService;

        public SessionService()
        {
            contexto = HttpContext.Current;
            DbConexion conexion = new DbConexion();
            usuarioService = new UsuarioService(conexion);
        }
        public void GuardarSesion(Usuario Usuario)
        {
            contexto.Session["UsuarioId"] = Usuario.Id.ToString();
            contexto.Session["Nombres"] = Usuario.Nombres.ToString();
            contexto.Session["Apellidos"] = Usuario.Apellidos.ToString();
            contexto.Session["Cargo"] = Usuario.TipoUsuario.ToString();
            contexto.Session["Contador"] = null;
        }

        public void LimpiarSesion()
        {
            contexto.Session.Clear();
        }

        public bool IsLogged()
        {
            if (contexto.Session["UsuarioId"] != null && contexto.Session["Cargo"] != null)
                return true;

            return false;
        }

        public bool EsAdministrativo()
        {
            if (IsLogged())
            {
                int UsuarioId = Convert.ToInt32(contexto.Session["UsuarioId"]);
                Usuario usuario = usuarioService.GetUsuarioById(UsuarioId);
                if (usuario.TipoUsuario == InfoAtributos.TipoUsuario.ADMINISTRADOR)
                    return true;
            }

            return false;
        }

        public bool EsPersonalDeLaTienda()
        {
            if (IsLogged())
            {
                int UsuarioId = Convert.ToInt32(contexto.Session["UsuarioId"]);
                Usuario usuario = usuarioService.GetUsuarioById(UsuarioId);
                if (usuario.TipoUsuario == InfoAtributos.TipoUsuario.VENDEDOR || usuario.TipoUsuario == InfoAtributos.TipoUsuario.ADMINISTRADOR)
                    return true;
            }

            return false;
        }

        public bool EsSuSession(int? IdUsuario)
        {
            if (IsLogged())
            {
                int UsuarioId = Convert.ToInt32(contexto.Session["UsuarioId"]);
                if (UsuarioId != IdUsuario)
                    return false;
            }
            return true;
        }

        public int ConvertirSessionIdAIntId()
        {
            int UsuarioId = Convert.ToInt32(contexto.Session["UsuarioId"]);
            return UsuarioId;
        }

        public void GuardarCarritoEnSession(List<CarritoCompras> carritoCompras)
        {
            contexto.Session["carritoCompras"] = carritoCompras;
        }

        public List<CarritoCompras> RetornarProductosDelCarritoSession()
        {
            List<CarritoCompras> productosDelCarrito = (List<CarritoCompras>)contexto.Session["carritoCompras"];
            return productosDelCarrito;

        }
    }
}