using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;
using ECOMMERCE_TRESB.DataBase;
using ECOMMERCE_TRESB.Interfaces;

namespace ECOMMERCE_TRESB.Services
{
    public class CategoriaService : ICategoriaService
    {
        private readonly DbConexion conexion;

        public CategoriaService(DbConexion conexion)
        {
            this.conexion = conexion;
        }

        public Categoria GetCategoriaById(int? IdCategoria)
        {
            if (IdCategoria == null)
                return null;

            Categoria categoria = conexion.Categorias.Where(o => o.Id == IdCategoria).FirstOrDefault();
            return categoria;
        }

        public List<Categoria> GetCategoriasAsList()
        {
            return conexion.Categorias.ToList();
        }

        public Categoria CategoriaViewToCategoria(CategoriaView CategoriaView)
        {
            return new Categoria
            {
                Id = CategoriaView.Id,
                Nombre = CategoriaView.Nombre
            };
        }

        public CategoriaView CategoriaToCategoriaView(Categoria Categoria)
        {
            return new CategoriaView
            {
                Id = Categoria.Id,
                Nombre = Categoria.Nombre
            };
        }

        public bool ExisteCategoria(string nombre)
        {
            if (conexion.Categorias.Any(u => u.Nombre == nombre))
                return true;
            return false;
        }

        public void GuardarCategoria(Categoria Categoria)
        {
            conexion.Categorias.Add(Categoria);
            conexion.SaveChanges();
        }

        public void EditarCategoria(int? IdCategoria, Categoria Categoria)
        {
            var CategoriaDB = GetCategoriaById(IdCategoria);
            CategoriaDB.Nombre = Categoria.Nombre;
            conexion.SaveChanges();
        }

        public void EliminarCategoria(int? IdCategoria)
        {
            var categoria = GetCategoriaById(IdCategoria);
            conexion.Categorias.Remove(categoria);
            conexion.SaveChanges();
        }

        public bool CategoriaTieneProducto(int? IdCategoria)
        {
            if (conexion.Productos.Any(p => p.IdCategoria == IdCategoria))
                return true;

            return false;
        }
    }
}