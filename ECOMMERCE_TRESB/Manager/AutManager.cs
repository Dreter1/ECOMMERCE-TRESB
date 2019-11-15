using ECOMMERCE_TRESB.Models;
using ECOMMERCE_TRESB.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace ECOMMERCE_TRESB.Manager
{
    public class AutManager : IAutManager
    {
        public void Login(Usuario Usuario)
        {
            FormsAuthentication.SetAuthCookie(Usuario.Email, false);
            HttpContext.Current.Session["Usuario"] = Usuario;
        }

        public void Logout()
        {
            FormsAuthentication.SignOut();
        }

        public Usuario GetLoggedUser()
        {
            return (Usuario)HttpContext.Current.Session["Usuario"];
        }

    }
}