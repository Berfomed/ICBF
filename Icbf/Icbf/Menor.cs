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
    public partial class Menor : Form
    {
        public Menor()
        {
            InitializeComponent();
        }
        bool bandera = false;


        private void btnNuevo_Click(object sender, EventArgs e)
        {
            bandera = true;
            habilitarBotones(false);
            habilitarCajas(false);
        }

        private void txtNombreNiño_TextChanged(object sender, EventArgs e)
        {
            if (txtNombreNiño.Text != "" && !bandera)
            {
                MenorDAO objmenordao = new MenorDAO();
            }
        }

        private void dgvNinos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dgvNinos.CurrentRow.Index;
            txtNUIP.Text = dgvNinos.Rows[index].Cells[1].Value.ToString();
            txtNombreNiño.Text = dgvNinos.Rows[index].Cells[2].Value.ToString();
            dateNacimientoNinio.Value = DateTime.Parse(dgvNinos.Rows[index].Cells[3].Value.ToString());
            txtTipoSangre.Text = dgvNinos.Rows[index].Cells[4].Value.ToString();
            txtCiudadNacimiento.Text = dgvNinos.Rows[index].Cells[5].Value.ToString();

            cmbDocAcudiente.Text = dgvNinos.Rows[index].Cells[6].Value.ToString();

            txtTelefono.Text = dgvNinos.Rows[index].Cells[7].Value.ToString();
            txtDireccion.Text = dgvNinos.Rows[index].Cells[8].Value.ToString();
            txtEPS.Text = dgvNinos.Rows[index].Cells[9].Value.ToString();
            cmbJardin.Text = dgvNinos.Rows[index].Cells[10].Value.ToString();
            habilitarCajas(false);
            habilitarBotones(true);
        }

        public void habilitarCajas(bool activar)
        {
            txtNUIP.ReadOnly = activar;
            txtNombreNiño.ReadOnly = activar;
            txtTelefono.ReadOnly = activar;
            txtTipoSangre.ReadOnly = activar;
        }
        public void habilitarBotones(bool activar)
        {
            //btnEditarPersona.Enabled = activar;
            btnEliminar.Enabled = activar;
            btnNuevo.Enabled = activar;
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
         
            MenorDAO objmenor = new MenorDAO();

            objmenor.registrarMenor(int.Parse(txtNUIP.Text), txtNombreNiño.Text,
                                            dateNacimientoNinio.MinDate, 
                                            txtTipoSangre.Text, 
                                            txtCiudadNacimiento.Text,
                                            //cmbDocAcudiente.SelectedValue.ToString(),
                                            int.Parse(cmbDocAcudiente.Text), txtTelefono.Text, 
                                            txtDireccion.Text, txtEPS.Text, 
                                            int.Parse(cmbJardin.SelectedValue.ToString()));
            MessageBox.Show("Se ha registrado correctamente");
            listarenGrilla();
            bandera = false;
            habilitarBotones(true);

        }

        public void listarenGrilla()
        {
            MenorDAO objmenor = new MenorDAO();
            dgvNinos.DataSource = objmenor.consultarTodos();

        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            //instanciar clase personaDAO
            MenorDAO objmenor = new MenorDAO();
            //invocar el método y enviarle los parametros
            objmenor.actualizarRegistroNino(int.Parse(txtNUIP.Text), txtNombreNiño.Text,
                                            dateNacimientoNinio.MinDate, txtTipoSangre.Text, txtCiudadNacimiento.Text,
                                            int.Parse(cmbDocAcudiente.Text), txtTelefono.Text,
                                            txtDireccion.Text, txtEPS.Text,
                                            int.Parse(cmbJardin.SelectedValue.ToString()));
            listarenGrilla();         

        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            MenorDAO objmenor = new MenorDAO();
            objmenor.eliminarRegistroNino(int.Parse(txtNUIP.Text));
            listarenGrilla();
            //MessageBox.Show("Se eliminó");
        }

        private void Menor_Load(object sender, EventArgs e)
        {
            ClsJardinDAO objjardin = new ClsJardinDAO();
            cmbJardin.DataSource = objjardin.consultarTodos();
            cmbJardin.ValueMember = "IdJardin";
            cmbJardin.DisplayMember = "NombreJardin";
            listarenGrilla();

            ClsPersonaDAO objpersona = new ClsPersonaDAO();
            cmbDocAcudiente.DataSource = objpersona.consultarTodos();
            cmbDocAcudiente.ValueMember = "Cedula";
            cmbDocAcudiente.DisplayMember = "Nombre";
            listarenGrilla();
        }

        private void cmbDocAcudiente_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }








    }
