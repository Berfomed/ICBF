﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaIcbfWeb.Administrador
{
    public partial class EditarEliminarJardin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbfecha.Text = DateTime.Now.ToString();
        }
    }
}