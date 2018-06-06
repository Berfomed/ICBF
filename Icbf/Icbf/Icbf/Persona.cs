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
    public partial class Persona : Form
    {
        public Persona()
        {
            InitializeComponent();
        }
        bool bag = false;

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            //instanciar clase personaDAO
            ClsPersonaDAO objPersonaDAO = new ClsPersonaDAO();
            //invocar el método
            objPersonaDAO.registrarPersona(int.Parse(txtCedula.Text), txtNombrePersona.Text, dateNacimientoPersona.MinDate, txtTelefono.Text, txtCelular.Text, txtDireccion.Text, txtDireccion.Text, txtClave.Text, int.Parse(cmbRol.SelectedValue.ToString()));
            MessageBox.Show("Se ha registrado correctamente");
            mostrarGrilla();
            bag = false;
            habilitarBotones(true);


        }

        public void mostrarGrilla()
        {
            ClsPersonaDAO objPersonaDAO = new ClsPersonaDAO();
            dgvPersonas.DataSource = objPersonaDAO.consultarTodos();

        }

       
        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnEditarPersona_Click(object sender, EventArgs e)
        {
            //instanciar clase personaDAO
            ClsPersonaDAO objPersonaDAO = new ClsPersonaDAO();
            //invocar el método y enviarle los parametros
            objPersonaDAO.actualizarPersona(int.Parse(txtCedula.Text), txtNombrePersona.Text, DateTime.Parse(dateNacimientoPersona.Text), txtTelefono.Text, txtCelular.Text, txtDireccion.Text, txtDireccion.Text, txtClave.Text, int.Parse(cmbRol.SelectedValue.ToString()));
            mostrarGrilla();
            //MessageBox.Show("Se actualizó");

        }

        private void btnEliminarPersona_Click(object sender, EventArgs e)
        {
            ClsPersonaDAO objPersonaDAO = new ClsPersonaDAO();
            objPersonaDAO.eliminarPersona(int.Parse(txtCedula.Text));
            mostrarGrilla();
            //MessageBox.Show("Se eliminó");
        }

        private void dgvPersonas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dgvPersonas.CurrentRow.Index;
            txtCedula.Text = dgvPersonas.Rows[index].Cells[1].Value.ToString();
            txtNombrePersona.Text = dgvPersonas.Rows[index].Cells[2].Value.ToString();
            dateNacimientoPersona.Text = dgvPersonas.Rows[index].Cells[3].Value.ToString();
            txtTelefono.Text = dgvPersonas.Rows[index].Cells[4].Value.ToString();
            txtCelular.Text = dgvPersonas.Rows[index].Cells[5].Value.ToString();
            txtDireccion.Text = dgvPersonas.Rows[index].Cells[6].Value.ToString();
            txtCorreo.Text = dgvPersonas.Rows[index].Cells[7].Value.ToString();
            txtClave.Text = dgvPersonas.Rows[index].Cells[8].Value.ToString();
            cmbRol.Text = dgvPersonas.Rows[index].Cells[9].Value.ToString();
            habilitarCajas(false);
            habilitarBotones(true);
        }

        private void txtNombrePersona_TextChanged(object sender, EventArgs e)
        {
            if(txtNombrePersona.Text != "" && !bag)
            {
                ClsPersonaDAO objPersonaDAO = new ClsPersonaDAO();
                dgvPersonas.DataSource = objPersonaDAO.consultarNombre(txtNombrePersona.Text);
            }
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            mostrarGrilla();
        }
        

        private void btnNuevaPersona_Click(object sender, EventArgs e)
        {
            bag = true;
            habilitarBotones(false);
            habilitarCajas(false);

        }
        public void habilitarBotones(bool activar)
        {
            //btnEditarPersona.Enabled = activar;
            btnEliminarPersona.Enabled = activar;
            btnNuevaPersona.Enabled = activar;
        }

        public void habilitarCajas(bool activar)
        {
            txtCedula.ReadOnly = activar;
            txtNombrePersona.ReadOnly = activar;
            txtTelefono.ReadOnly = activar;
            txtCorreo.ReadOnly = activar;

        }

        private void Persona_Load(object sender, EventArgs e)
        {
            ClsRolDAO objRol = new ClsRolDAO();
            cmbRol.DataSource = objRol.consultarTodos();
            cmbRol.ValueMember = "idRol";//nombres de los campos en la bd
            cmbRol.DisplayMember = "nombreRol";
            mostrarGrilla();
        }
    }
}
