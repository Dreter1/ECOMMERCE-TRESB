using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Services
{
    public class InfoAtributos
    {
        public struct TipoUsuario
        {
            public const byte CLIENTE = 0;
            public const byte VENDEDOR = 1;
            public const byte ADMINISTRADOR = 2;
        }

        public struct Sexo
        {
            public const bool MASCULINO = true;
            public const bool FEMENINO = false;
        }

        public struct EstadoCuenta
        {
            public const bool ACTIVO = true;
            public const bool INACTIVO = false;
        }

        public struct TipoPago
        {
            public const byte EFECTIVO = 0;
            public const byte TARJETA_DEBITO = 1;
            public const byte TARJETA_CREDITO = 2;
        }

        public struct Error
        {
            public const string CORREO_REGISTRADO = "El correo que ha ingresado ya se encuentra registrado";
            public const string CORREO_O_CLAVE_INCORRECTOS = "El correo o la contraseña son incorrectos";
        }

        public struct Filtros
        {
            public const int MAS_VENDIDOS = 1;
            public const int NEW_ARRIVALS = 2;
        }
    }
}