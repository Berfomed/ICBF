using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace VistaIcbfWeb
{
    public partial class Persona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //valido que la primara vez que carga lapagna, llene el combo list de rol
            if (!IsPostBack)
            {
                ClsRolDAO objRol = new ClsRolDAO();

                ddlRol.DataSource = objRol.consultarTodos();
                ddlRol.DataTextField = "nombreRol";
                ddlRol.DataValueField = "idRol";
                ddlRol.DataBind();
            }
              
           
        }

        

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClsPersonaDAO objPersona = new ClsPersonaDAO();

            objPersona.registrarPersona(int.Parse(TxtCedula.Text),
                                        TxtNombres.Text, DateTime.Parse(ClFechaNa.SelectedDate.ToString()),
                                        TxtTelefono.Text,
                                        TxtCelular.Text,
                                        TxtDireccion.Text,
                                        TxtCorreo.Text,
                                        "USUARIO" + TxtCedula,
                                        int.Parse(ddlRol.SelectedValue.ToString()));
        }
    }
}