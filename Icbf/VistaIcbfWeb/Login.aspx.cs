using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Datos;

namespace VistaIcbfWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            PersonaLoginDAO objlogin = new PersonaLoginDAO();
            Datos.Persona objpersona = objlogin.iniciarSesionweb(Login1.UserName, Login1.Password);
            if (objpersona.Cedula != 0)
            {

               
                Session["Cedula"] = objpersona.Cedula;
                Session["Nombres"] = objpersona.Nombres;
                Session["Rol"] = objpersona.Rol;
                Response.Redirect("Persona.aspx");
                if (objpersona.Rol.Equals(1))
                {
                    Response.Redirect("http://www.microsoft.com");
                }
            }           
            
        }
    }
}