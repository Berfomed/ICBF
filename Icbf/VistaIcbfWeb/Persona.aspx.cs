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
                ClsRolDAO objrol = new ClsRolDAO();
                ddlRol.DataSource = objrol.consultarTodos();
                ddlRol.DataTextField = "nombreRol";
                ddlRol.DataValueField = "idRol";
                ddlRol.DataBind();
            }
           
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            ClsPersonaDAO objpersona = new ClsPersonaDAO();
            objpersona.registrarPersona(Int32.Parse(txtCedula.Text), 
                                        txtNombre.Text, DateTime.Parse(clFechaNaci.SelectedDate.ToString()), 
                                        txtTelefono.Text, txtCelular.Text, 
                                        txtDireccion.Text, txtCorreo.Text, 
                                        txtClave.Text, int.Parse(ddlRol.SelectedValue.ToString()));


        }
    }
}