using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace VistaIcbfWeb.Acudiente
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //muestra el avance del niño
                ClsAvanceDAO objavance = new ClsAvanceDAO();
                dgvAvanceNino.DataSource = objavance.consultarAvanceNiño(int.Parse(Session["Cedula"].ToString()));
                dgvAvanceNino.DataBind();

                //ClsAnunciosDAO objanuncio = new ClsAnunciosDAO();
                //dgvAnuncios.DataSource = objanuncio.mostrarAnuncios();
                //dgvAnuncios.DataBind();

                lbfecha.Text = DateTime.Now.ToString();        
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("Nombres");
            Response.Redirect("~/Login.aspx");
        }
    }
}