using ECOMMERCE_TRESB.Interfaces;
using ECOMMERCE_TRESB.ModelViews;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace ECOMMERCE_TRESB.Services
{
    public class ValidacionService : IValidacionService
    {
        string LetrasRegex = @"^[a-zA-Z\s]+$";
        string NumerosRegex = @"^(0|[1-9]\d*)$";
        string NumeroDecimalRegex = @"^[0-9]+([.])?([0-9]+)?$";
        string EmailRegex = @"^(('[\w-\s]+')|([\w-]+(?:\.[\w-]+)*)|('[\w-\s]+')([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)";
        public void Categoria(CategoriaView categoriaView, ModelStateDictionary ModelState)
        {
            if (string.IsNullOrEmpty(categoriaView.Nombre))
                ModelState.AddModelError("Nombre", "Campo Obligatorio");
            if (string.IsNullOrEmpty(categoriaView.Nombre) || categoriaView.Nombre.Length <= 0)
                ModelState.AddModelError("Nombre", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(categoriaView.Nombre) || categoriaView.Nombre.Length > 100)
                ModelState.AddModelError("Nombre", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(categoriaView.Nombre) || Regex.IsMatch(categoriaView.Nombre, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombre", "Solo se aceptan letras");
        }

        public void Usuario(UsuarioView usuarioView, ModelStateDictionary ModelState)
        {
            if (string.IsNullOrEmpty(usuarioView.Email))
                ModelState.AddModelError("Email", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Email) || usuarioView.Email.Length <= 0)
                ModelState.AddModelError("Email", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Email) || usuarioView.Email.Length > 100)
                ModelState.AddModelError("Email", "No puede tener mas de 100 caracteres");
            bool isEmailValid = string.IsNullOrEmpty(usuarioView.Email) || Regex.IsMatch(usuarioView.Email, EmailRegex);
            if (!isEmailValid)
                ModelState.AddModelError("Email", "Ingrese un Email Correcto");

            if (string.IsNullOrEmpty(usuarioView.Clave))
                ModelState.AddModelError("Clave", "Campo Obligatorio");

            if (string.IsNullOrEmpty(usuarioView.Nombres))
                ModelState.AddModelError("Nombres", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Nombres) || usuarioView.Nombres.Length <= 0)
                ModelState.AddModelError("Nombres", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Nombres) || usuarioView.Nombres.Length > 100)
                ModelState.AddModelError("Nombres", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(usuarioView.Nombres) || Regex.IsMatch(usuarioView.Nombres, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombres", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioView.Apellidos))
                ModelState.AddModelError("Apellidos", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Apellidos) || usuarioView.Apellidos.Length <= 0)
                ModelState.AddModelError("Apellidos", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Apellidos) || usuarioView.Apellidos.Length > 100)
                ModelState.AddModelError("Apellidos", "No puede tener mas de 100 caracteres");
            bool isApellidosValid = string.IsNullOrEmpty(usuarioView.Apellidos) || Regex.IsMatch(usuarioView.Apellidos, LetrasRegex);
            if (!isApellidosValid)
                ModelState.AddModelError("Apellidos", "Solo se aceptan letras");

            if (usuarioView.FechaNacimiento == null)
                ModelState.AddModelError("FechaNacimiento", "Campo Obligatorio");

            if (string.IsNullOrEmpty(usuarioView.Celular))
                ModelState.AddModelError("Celular", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioView.Celular) || usuarioView.Celular.Length <= 0)
                ModelState.AddModelError("Celular", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioView.Celular) || usuarioView.Celular.Length > 12)
                ModelState.AddModelError("Celular", "No puede tener mas de 12 caracteres");
            bool isCelularValid = string.IsNullOrEmpty(usuarioView.Celular) || Regex.IsMatch(usuarioView.Celular, NumerosRegex);
            if (!isCelularValid)
                ModelState.AddModelError("Celular", "Solo se aceptan numeros");
        }

        public void EditarUsuario(UsuarioEditarView usuarioEditarView, ModelStateDictionary ModelState)
        {
            if (string.IsNullOrEmpty(usuarioEditarView.Nombres))
                ModelState.AddModelError("Nombres", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioEditarView.Nombres) || usuarioEditarView.Nombres.Length <= 0)
                ModelState.AddModelError("Nombres", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioEditarView.Nombres) || usuarioEditarView.Nombres.Length > 100)
                ModelState.AddModelError("Nombres", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(usuarioEditarView.Nombres) || Regex.IsMatch(usuarioEditarView.Nombres, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombres", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioEditarView.Apellidos))
                ModelState.AddModelError("Apellidos", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioEditarView.Apellidos) || usuarioEditarView.Apellidos.Length <= 0)
                ModelState.AddModelError("Apellidos", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioEditarView.Apellidos) || usuarioEditarView.Apellidos.Length > 100)
                ModelState.AddModelError("Apellidos", "No puede tener mas de 100 caracteres");
            bool isApellidosValid = string.IsNullOrEmpty(usuarioEditarView.Apellidos) || Regex.IsMatch(usuarioEditarView.Apellidos, LetrasRegex);
            if (!isApellidosValid)
                ModelState.AddModelError("Apellidos", "Solo se aceptan letras");

            if (usuarioEditarView.FechaNacimiento == null)
                ModelState.AddModelError("FechaNacimiento", "Campo Obligatorio");

            if (string.IsNullOrEmpty(usuarioEditarView.Celular))
                ModelState.AddModelError("Celular", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioEditarView.Celular) || usuarioEditarView.Celular.Length <= 0)
                ModelState.AddModelError("Celular", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioEditarView.Celular) || usuarioEditarView.Celular.Length > 12)
                ModelState.AddModelError("Celular", "No puede tener mas de 12 caracteres");
            bool isCelularValid = string.IsNullOrEmpty(usuarioEditarView.Celular) || Regex.IsMatch(usuarioEditarView.Celular, NumerosRegex);
            if (!isCelularValid)
                ModelState.AddModelError("Celular", "Solo se aceptan numeros");
        }

        public void EditarPerfilUsuario(UsuarioPerfilEditView usuarioPerfilEditView, ModelStateDictionary ModelState)
        {
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Nombres))
                ModelState.AddModelError("Nombres", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Nombres) || usuarioPerfilEditView.Nombres.Length <= 0)
                ModelState.AddModelError("Nombres", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Nombres) || usuarioPerfilEditView.Nombres.Length > 100)
                ModelState.AddModelError("Nombres", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(usuarioPerfilEditView.Nombres) || Regex.IsMatch(usuarioPerfilEditView.Nombres, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombres", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos))
                ModelState.AddModelError("Apellidos", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos) || usuarioPerfilEditView.Apellidos.Length <= 0)
                ModelState.AddModelError("Apellidos", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos) || usuarioPerfilEditView.Apellidos.Length > 100)
                ModelState.AddModelError("Apellidos", "No puede tener mas de 100 caracteres");
            bool isApellidosValid = string.IsNullOrEmpty(usuarioPerfilEditView.Apellidos) || Regex.IsMatch(usuarioPerfilEditView.Apellidos, LetrasRegex);
            if (!isApellidosValid)
                ModelState.AddModelError("Apellidos", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(usuarioPerfilEditView.Celular))
                ModelState.AddModelError("Celular", "Campo Obligatorio");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Celular) || usuarioPerfilEditView.Celular.Length <= 0)
                ModelState.AddModelError("Celular", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(usuarioPerfilEditView.Celular) || usuarioPerfilEditView.Celular.Length > 12)
                ModelState.AddModelError("Celular", "No puede tener mas de 12 caracteres");
            bool isCelularValid = string.IsNullOrEmpty(usuarioPerfilEditView.Celular) || Regex.IsMatch(usuarioPerfilEditView.Celular, NumerosRegex);
            if (!isCelularValid)
                ModelState.AddModelError("Celular", "Solo se aceptan numeros");
        }

        public void Producto(ProductoView productoView, ModelStateDictionary ModelState)
        {
            if (string.IsNullOrEmpty(productoView.Nombre))
                ModelState.AddModelError("Nombre", "Campo Obligatorio");
            if (string.IsNullOrEmpty(productoView.Nombre) || productoView.Nombre.Length <= 0)
                ModelState.AddModelError("Nombre", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(productoView.Nombre) || productoView.Nombre.Length > 100)
                ModelState.AddModelError("Nombre", "No puede tener mas de 100 caracteres");
            bool isNombreValid = string.IsNullOrEmpty(productoView.Nombre) || Regex.IsMatch(productoView.Nombre, LetrasRegex);
            if (!isNombreValid)
                ModelState.AddModelError("Nombre", "Solo se aceptan letras");

            if (string.IsNullOrEmpty(productoView.Descripcion))
                ModelState.AddModelError("Descripcion", "Campo Obligatorio");
            if (string.IsNullOrEmpty(productoView.Descripcion) || productoView.Descripcion.Length <= 0)
                ModelState.AddModelError("Descripcion", "Tiene que tener al menos un caracter");
            if (string.IsNullOrEmpty(productoView.Descripcion) || productoView.Descripcion.Length > 2000)
                ModelState.AddModelError("Descripcion", "No puede tener mas de 2000 caracteres");

            if (productoView.Stock == 0 || string.IsNullOrEmpty(productoView.Stock.ToString()))
                ModelState.AddModelError("Stock", "Campo Obligatorio");
            bool isStockValid = productoView.Stock == 0 || string.IsNullOrEmpty(productoView.Stock.ToString()) || Regex.IsMatch(productoView.Stock.ToString(), NumerosRegex);
            if (!isStockValid)
                ModelState.AddModelError("Stock", "Ingrese un stock valido, solo numeros");

            if (productoView.PrecioUnitario == 0 || string.IsNullOrEmpty(productoView.PrecioUnitario.ToString()))
                ModelState.AddModelError("PrecioUnitario", "Campo Obligatorio");
            bool isPrecioUnitarioValid = productoView.PrecioUnitario == 0 || string.IsNullOrEmpty(productoView.PrecioUnitario.ToString()) || Regex.IsMatch(productoView.PrecioUnitario.ToString(), NumeroDecimalRegex);
            if (!isPrecioUnitarioValid)
                ModelState.AddModelError("PrecioUnitario", "Ingrese un precio valido");
        }
    }
}