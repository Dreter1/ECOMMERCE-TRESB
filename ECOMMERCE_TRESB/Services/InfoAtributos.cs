using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Services
{
    public class InfoAtributos
    {
        public struct TIPO_USUARIO
        {
            public const byte CLIENTE = 0;
            public const byte VENDEDOR = 1;
            public const byte ADMINISTRADOR = 2;
        }

        public struct SEXO
        {
            public const bool MASCULINO = true;
            public const bool FEMENINO = false;
        }

        public struct ESTADO_CUENTA
        {
            public const bool ACTIVO = true;
            public const bool INACTIVO = false;
        }

        public struct TIPO_PAGO
        {
            public const byte EFECTIVO = 0;
            public const byte TARJETA_DEBITO = 1;
            public const byte TARJETA_CREDITO = 2;
        }

        public struct ERROR
        {
            public const string CORREO_REGISTRADO = "El correo que ha ingresado ya se encuentra registrado";
            public const string CORREO_O_CLAVE_INCORRECTOS = "El correo o la contraseña son incorrectos";
        }

        public struct FILTROS
        {
            public const int MAS_VENDIDOS = 1;
            public const int NEW_ARRIVALS = 2;
        }
    }
}