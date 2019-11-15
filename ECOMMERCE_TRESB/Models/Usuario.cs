using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECOMMERCE_TRESB.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Clave { get; set; }
        public string Salt { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public bool Sexo { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Celular { get; set; }
        public Byte TipoUsuario { get; set; }
        public bool IsActive { get; set; }
        public DateTime FechaRegistro { get; set; }

        public List<Venta> Ventas { get; set; }
        public List<ListaFavoritos> Favoritos { get; set; }
        public List<CarritoCompras> CarritoDeCompras { get; set; }
        public List<Direccion> Direcciones { get; set; }
        public List<Comentarios> Comentarios { get; set; }
    }
}