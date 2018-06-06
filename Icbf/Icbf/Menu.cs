using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Modelo;

namespace Icbf
{
    public partial class Menu : Form
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void Menu_Load(object sender, EventArgs e)
        {
            //validar que rol es para así mostrarle el menú correspondiente

            if (Sesion.idRol ==1 )
            {
                menu1Admin.Visible = true;
            }else if (Sesion.idRol==2)
            {
                archivo.Visible = true;
            }
        }

        private void acudienteToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void crearToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void personaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // se llama el formulario para crear persona y que se muestre
            //instanciar la clase del formulario
            Persona frmPersona = new Persona();
            frmPersona.Show();
            // se le dice que este es hijo de 
            frmPersona.MdiParent = this;//this es la clase actual
        }

        private void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            //cerrar sesión se deben inicializar variables y debe devolver al form de login 
            // this.Close(); // cerró todo los formularios
            Form1 login = new Form1();
            login.Show();
            this.Hide();
            
        }

        private void ninioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //cerrar sesión se deben inicializar variables y debe devolver al form de login 
            // this.Close(); // cerró todo los formularios
            Menor login = new Menor();
            login.Show();
            this.Hide();
        }
    }
}
