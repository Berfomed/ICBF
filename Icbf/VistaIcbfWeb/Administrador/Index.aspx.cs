using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace VistaIcbfWeb.Administrador
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String nombre = Session["Nombres"].ToString();
                String cedula = Session["Cedula"].ToString();
                Label1.Text = "Bienvenido" + nombre;
            }
            catch (Exception)
            {
                Response.Redirect("~/Default.aspx");
            }
            MenorDAO objmenor = new MenorDAO();
            ddlDocumentoAcudiente.DataSource = objmenor.consultarPersonas();
            ddlDocumentoAcudiente.DataTextField = "Nombres";
            ddlDocumentoAcudiente.DataValueField = "Cedula";
            ddlDocumentoAcudiente.DataBind();

            ddlJardin.DataSource = objmenor.consultarJardines();
            ddlJardin.DataTextField = "NombreJardin";
            ddlJardin.DataValueField = "IdJardin";
            ddlJardin.DataBind();

            ClsPersonaDAO objmadre = new ClsPersonaDAO();
            ddlMadreComunitaria.DataSource = objmadre.seleccionarMadre();
            ddlMadreComunitaria.DataTextField = "Nombres";
            ddlMadreComunitaria.DataValueField = "Cedula";
            ddlMadreComunitaria.DataBind();

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            MenorDAO objmenor = new MenorDAO();
            objmenor.registrarMenor(int.Parse(txtRegistro.Text),
                                    txtNombre.Text,
                                  DateTime.Parse(clFechaNacimiento.SelectedDate.ToString()),
                                    ddlTpoSangre.SelectedValue.ToString(),
                                    txtCiudad.Text,
                                    int.Parse(ddlDocumentoAcudiente.SelectedValue.ToString()),
                                    txtTelefono.Text,
                                    txtDireccion.Text,
                                    txtEps.Text,
                                    int.Parse(ddlJardin.SelectedValue.ToString()));
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("Nombres");
            Response.Redirect("~/Login.aspx");

        }

        protected void btnAcudiente_Click(object sender, EventArgs e)
        {
         
            ClsPersonaDAO objpersona = new ClsPersonaDAO();
            objpersona.registrarPersona(int.Parse(txtCedula.Text), 
                                        txtNombreAcu.Text, 
                                        DateTime.Parse(ClFechaNacimientoAcu.SelectedDate.ToString()), 
                                        txtTelefonoAcu.Text, 
                                        txtCelular.Text, 
                                        txtDireccionAcu.Text, 
                                        txtCorreo.Text, 
                                        "Acu"+txtCedula.Text, 
                                        3);
            
        }

        protected void btnRegistrarMadre_Click(object sender, EventArgs e)
        {
            ClsPersonaDAO objmadre = new ClsPersonaDAO();
            objmadre.registrarPersona(int.Parse(txtCedulaMadre.Text), 
                                      txtNombreMadre.Text, 
                                      DateTime.Parse(clFechaMadre.SelectedDate.ToString()), 
                                      txtTelefonoMadre.Text, 
                                      txtCedulaMadre.Text, 
                                      txtDireccionMadre.Text, 
                                      txtCorreo.Text, 
                                      "Madre" + txtCedulaMadre.Text, 
                                      2);
        }

        protected void btnRegistroJardin_Click(object sender, EventArgs e)
        {
            ClsJardinDAO objjardin = new ClsJardinDAO();
            objjardin.registrarJardin(txtNombreJardin.Text, 
                                      txtDireccionJardin.Text, 
                                      ddlJardin.SelectedValue.ToString(), 
                                      int.Parse(ddlMadreComunitaria.SelectedValue.ToString()));
        }
    }
}