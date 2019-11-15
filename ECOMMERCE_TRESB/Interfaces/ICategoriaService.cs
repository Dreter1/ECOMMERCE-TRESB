using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.ModelViews;

namespace ECOMMERCE_TRESB.Interfaces
{
    public interface ICategoriaService
    {
        Categoria GetCategoriaById(int? IdCategoria);
        List<Categoria> GetCategoriasAsList();
        Categoria CategoriaViewToCategoria(CategoriaView CategoriaView);
        CategoriaView CategoriaToCategoriaView(Categoria Categoria);
        bool ExisteCategoria(string nombre);
        void GuardarCategoria(Categoria Categoria);
        void EditarCategoria(int? IdCategoria, Categoria Categoria);
        void EliminarCategoria(int? IdCategoria);
        bool CategoriaTieneProducto(int? IdCategoria);
    }
}
