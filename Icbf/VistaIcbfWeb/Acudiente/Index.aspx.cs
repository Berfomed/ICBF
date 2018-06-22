using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaIcbfWeb.Acudiente
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["Nombres"].ToString();
                Label1.Text = "Bienvenido" + nombre;
            }
            catch (Exception)
            {
                Response.Redirect("~/Default.aspx");
            }


            //Label1.Text = (String)Session["Nombres"];
        }
    }
    }
