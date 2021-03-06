﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace VistaIcbfWeb.MadreComunitaria
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
                    Label1.Text = "Bienvenido " + nombre;
                }
                catch (Exception)
                {
                    Response.Redirect("~/Default.aspx");
                }

                ClsAsistenciaDAO objasistencia = new ClsAsistenciaDAO();
                ddlNombreNiño.DataSource = objasistencia.seleccionarNiño();
                ddlNombreNiño.DataTextField = "Nombre";
                ddlNombreNiño.DataValueField = "RegistroNIUP";
                ddlNombreNiño.DataBind();

                ClsAvanceDAO objAvance = new ClsAvanceDAO();
                ddlNiñoAsistencia.DataSource = objAvance.seleccionarNinos();
                ddlNiñoAsistencia.DataTextField = "Nombre";
                ddlNiñoAsistencia.DataValueField = "RegistroNIUP";
                ddlNiñoAsistencia.DataBind();

                lbfecha.Text = DateTime.Now.ToString();
            }
            }

        protected void btnRegistroAsistencia_Click(object sender, EventArgs e)
        {
            DateTime fecha = DateTime.Now;
            int hora = fecha.Hour;

            if (ModelState.IsValid)
            {
                if (hora < 8 && hora < 10)
                {

                    Response.Write("Solo se permiten registros de 8:am hasta las 10:am");
                }
                else
                {

                    ClsAsistenciaDAO objasistencia = new ClsAsistenciaDAO();
                    objasistencia.registrarAsistencia(int.Parse(ddlNombreNiño.SelectedValue.ToString()),
                                                        DateTime.Parse(DateTime.Now.ToString()),
                                                        ddlEstadoNiño.SelectedValue.ToString());
                    Response.Write("registro exitoso");
                }
            }
           
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("Nombres");
            Response.Redirect("~/Login.aspx");

        }

        protected void btnRegistrarAvance_Click(object sender, EventArgs e)
        {
            ClsAvanceDAO objasistecia = new ClsAvanceDAO();
            objasistecia.RegistrarAvance(int.Parse(ddlNombreNiño.SelectedValue.ToString()),
                                        int.Parse(ddlAño.SelectedValue.ToString()),
                                        ddlArea.SelectedValue.ToString(),
                                        ddlNota.SelectedValue.ToString(),
                                        ddlDescripcion.SelectedValue.ToString(),
                                        DateTime.Now);

        }
    }
}