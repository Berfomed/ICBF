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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            PersonaLoginDAO personaDAO = new PersonaLoginDAO();
            //los parametros son las cajas de texto donde el usuario ingresa los datos
            if(personaDAO.iniciarSesion(txtNombreUsuario.Text, txtClave.Text))
            {
                //si hay sesión muestra el menú y dependiendo el rol muestra un menú
                Menu menu = new Menu();
                menu.Show();
                this.Hide();
            }else
            {
                MessageBox.Show("Usuario y/o clave incorrectos");
            }
        }
    }
}
