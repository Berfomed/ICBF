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
            if (!IsPostBack)
            {


                try
                {
                    String nombre = Session["Nombres"].ToString();
                    String cedula = Session["Cedula"].ToString();
                    Label1.Text = "Bienvenido " + nombre;
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

                ClsJardinDAO objjardin = new ClsJardinDAO();
                ddlNiñosJardin.DataSource = objjardin.consultarTodos();
                ddlNiñosJardin.DataTextField = "NombreJardin";
                ddlNiñosJardin.DataValueField = "IdJardin";
                ddlNiñosJardin.DataBind();


                lbfecha.Text = DateTime.Now.ToString();

                dgNoAprobados.DataSource = objjardin.jardinNoAprobado();
                dgNoAprobados.DataBind();

                ClsAsistenciaDAO objasistencia = new ClsAsistenciaDAO();
                dgNinosEnfermos.DataSource = objasistencia.ninosEnfermos();
                dgNinosEnfermos.DataBind();

                dgInasistencia.DataSource = objasistencia.Inasistencia();
                dgInasistencia.DataBind();




                //ClsEnvioCorreo objcorreo = new ClsEnvioCorreo();
                //if (objcorreo.Estado)
                //{
                //    Response.Write("El correo se envio exitosamente");
                //}
                //else
                //{
                //    Response.Write("error al enviar correo electronico, verifique...<br>"+objcorreo.MensajeError);
                //}

            }
            
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            int año = DateTime.Now.Year;
            int añoingresado = int.Parse(ddlAño.SelectedValue.ToString());
            int diferenciaaños = año - añoingresado;

            if (diferenciaaños < 6)
            {
                MenorDAO objmenor = new MenorDAO();
                objmenor.registrarMenor(int.Parse(txtRegistro.Text),
                                        txtNombre.Text,
                                      DateTime.Parse(ddlAño.SelectedValue.ToString() + "-" + ddlMes.SelectedValue.ToString() + "-" + ddlDia.SelectedValue.ToString()),
                                        ddlTpoSangre.SelectedValue.ToString(),
                                        txtCiudad.Text,
                                        int.Parse(ddlDocumentoAcudiente.SelectedValue.ToString()),
                                        txtTelefono.Text,
                                        txtDireccion.Text,
                                        txtEps.Text,
                                        int.Parse(ddlJardin.SelectedValue.ToString()));
            }
            else
            {
                Response.Write("No es posible registrar al Menor, excede la edad limite");                
            }
           
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
                                        DateTime.Parse(ddlAñoAcu.SelectedValue.ToString()+"-"+ddlMesAcu.SelectedValue.ToString()+"-"+ddlDiaAcu.SelectedValue.ToString()), 
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
                                      DateTime.Parse(ddlAñoMadre.SelectedValue.ToString()+"-"+ddlMesMadre.SelectedValue.ToString()+"-"+ddlDiaMadre.SelectedValue.ToString()), 
                                      txtTelefonoMadre.Text, 
                                      txtCedulaMadre.Text, 
                                      txtDireccionMadre.Text, 
                                      txtCorreoMadre.Text, 
                                      "Madre" + txtCedulaMadre.Text, 
                                      2);
        }

        protected void btnRegistroJardin_Click(object sender, EventArgs e)
        {
            ClsJardinDAO objjardin = new ClsJardinDAO();
            objjardin.registrarJardin(txtNombreJardin.Text, 
                                      txtDireccionJardin.Text, 
                                      ddlJardin.SelectedValue, 
                                      int.Parse(ddlMadreComunitaria.SelectedValue.ToString()));
        }

        protected void btnComunicado_Click(object sender, EventArgs e)
        {
            ClsAnunciosDAO objanuncio = new ClsAnunciosDAO();
            objanuncio.PublicarComunicado(txtdescripcion.Text, ddlEstado.SelectedValue.ToString());
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            MenorDAO objmenor = new MenorDAO();
            
            lbResultadoConsulta.Text= "Hay: " + objmenor.niñosporJardin(int.Parse(ddlNiñosJardin.SelectedValue.ToString())).ToString() + " Niños Registrados este Jardin";
        }
    }
}