using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace VistaIcbfWeb
{
    public partial class ListaPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClsPersonaDAO objpersona = new ClsPersonaDAO();
               // dgvListarPersonas.DataSource = objpersona.consultarTodos();
                //dgvListarPersonas.DataBind();
            }
        }

        protected void dgvListarPersonas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvListarPersonas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "Edit")
            //{
            //    ClsPersonaDAO per = new ClsPersonaDAO();
            //    int index = dgvListarPersonas.SelectedRow.RowIndex;


            }
        }
    }
