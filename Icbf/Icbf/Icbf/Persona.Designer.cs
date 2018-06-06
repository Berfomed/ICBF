namespace Icbf
{
    partial class Persona
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.btnEliminarPersona = new System.Windows.Forms.Button();
            this.btnEditarPersona = new System.Windows.Forms.Button();
            this.btnNuevaPersona = new System.Windows.Forms.Button();
            this.btnConsultar = new System.Windows.Forms.Button();
            this.cmbRol = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtCorreo = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtDireccion = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtCelular = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTelefono = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtNombrePersona = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtCedula = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.dateNacimientoPersona = new System.Windows.Forms.DateTimePicker();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.txtClave = new System.Windows.Forms.TextBox();
            this.dgvPersonas = new System.Windows.Forms.DataGridView();
            this.finalICBFDataSet = new Icbf.FinalICBFDataSet();
            this.finalICBFDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPersonas)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.finalICBFDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.finalICBFDataSetBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // btnEliminarPersona
            // 
            this.btnEliminarPersona.Location = new System.Drawing.Point(389, 225);
            this.btnEliminarPersona.Name = "btnEliminarPersona";
            this.btnEliminarPersona.Size = new System.Drawing.Size(75, 23);
            this.btnEliminarPersona.TabIndex = 48;
            this.btnEliminarPersona.Text = "Eliminar";
            this.btnEliminarPersona.UseVisualStyleBackColor = true;
            this.btnEliminarPersona.Click += new System.EventHandler(this.btnEliminarPersona_Click);
            // 
            // btnEditarPersona
            // 
            this.btnEditarPersona.Location = new System.Drawing.Point(389, 183);
            this.btnEditarPersona.Name = "btnEditarPersona";
            this.btnEditarPersona.Size = new System.Drawing.Size(75, 23);
            this.btnEditarPersona.TabIndex = 47;
            this.btnEditarPersona.Text = "Editar";
            this.btnEditarPersona.UseVisualStyleBackColor = true;
            this.btnEditarPersona.Click += new System.EventHandler(this.btnEditarPersona_Click);
            // 
            // btnNuevaPersona
            // 
            this.btnNuevaPersona.Location = new System.Drawing.Point(389, 103);
            this.btnNuevaPersona.Name = "btnNuevaPersona";
            this.btnNuevaPersona.Size = new System.Drawing.Size(75, 23);
            this.btnNuevaPersona.TabIndex = 46;
            this.btnNuevaPersona.Text = "Nuevo";
            this.btnNuevaPersona.UseVisualStyleBackColor = true;
            this.btnNuevaPersona.Click += new System.EventHandler(this.btnNuevaPersona_Click);
            // 
            // btnConsultar
            // 
            this.btnConsultar.Location = new System.Drawing.Point(389, 264);
            this.btnConsultar.Name = "btnConsultar";
            this.btnConsultar.Size = new System.Drawing.Size(75, 23);
            this.btnConsultar.TabIndex = 45;
            this.btnConsultar.Text = "Consultar";
            this.btnConsultar.UseVisualStyleBackColor = true;
            this.btnConsultar.Click += new System.EventHandler(this.btnConsultar_Click);
            // 
            // cmbRol
            // 
            this.cmbRol.FormattingEnabled = true;
            this.cmbRol.Location = new System.Drawing.Point(208, 285);
            this.cmbRol.Name = "cmbRol";
            this.cmbRol.Size = new System.Drawing.Size(121, 21);
            this.cmbRol.TabIndex = 44;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(86, 288);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(23, 13);
            this.label10.TabIndex = 43;
            this.label10.Text = "Rol";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(86, 235);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(93, 13);
            this.label7.TabIndex = 41;
            this.label7.Text = "Fecha Nacimiento";
            // 
            // txtCorreo
            // 
            this.txtCorreo.Location = new System.Drawing.Point(208, 206);
            this.txtCorreo.Name = "txtCorreo";
            this.txtCorreo.Size = new System.Drawing.Size(121, 20);
            this.txtCorreo.TabIndex = 40;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(86, 209);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(38, 13);
            this.label8.TabIndex = 39;
            this.label8.Text = "Correo";
            // 
            // txtDireccion
            // 
            this.txtDireccion.Location = new System.Drawing.Point(208, 180);
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.Size = new System.Drawing.Size(121, 20);
            this.txtDireccion.TabIndex = 38;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(86, 183);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(52, 13);
            this.label9.TabIndex = 37;
            this.label9.Text = "Dirección";
            // 
            // txtCelular
            // 
            this.txtCelular.Location = new System.Drawing.Point(208, 153);
            this.txtCelular.Name = "txtCelular";
            this.txtCelular.Size = new System.Drawing.Size(121, 20);
            this.txtCelular.TabIndex = 36;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(86, 156);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(39, 13);
            this.label4.TabIndex = 35;
            this.label4.Text = "Celular";
            // 
            // txtTelefono
            // 
            this.txtTelefono.Location = new System.Drawing.Point(208, 124);
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.Size = new System.Drawing.Size(121, 20);
            this.txtTelefono.TabIndex = 54;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(86, 127);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 13);
            this.label1.TabIndex = 53;
            this.label1.Text = "Teléfono";
            // 
            // txtNombrePersona
            // 
            this.txtNombrePersona.Location = new System.Drawing.Point(208, 98);
            this.txtNombrePersona.Name = "txtNombrePersona";
            this.txtNombrePersona.Size = new System.Drawing.Size(121, 20);
            this.txtNombrePersona.TabIndex = 52;
            this.txtNombrePersona.TextChanged += new System.EventHandler(this.txtNombrePersona_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(86, 101);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(102, 13);
            this.label2.TabIndex = 51;
            this.label2.Text = "Nombres y Apellidos";
            // 
            // txtCedula
            // 
            this.txtCedula.Location = new System.Drawing.Point(208, 71);
            this.txtCedula.Name = "txtCedula";
            this.txtCedula.Size = new System.Drawing.Size(121, 20);
            this.txtCedula.TabIndex = 50;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(86, 74);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 49;
            this.label3.Text = "Cédula";
            // 
            // dateNacimientoPersona
            // 
            this.dateNacimientoPersona.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateNacimientoPersona.Location = new System.Drawing.Point(208, 233);
            this.dateNacimientoPersona.Name = "dateNacimientoPersona";
            this.dateNacimientoPersona.Size = new System.Drawing.Size(121, 20);
            this.dateNacimientoPersona.TabIndex = 55;
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(389, 146);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(75, 23);
            this.btnAgregar.TabIndex = 56;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(86, 262);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(34, 13);
            this.label5.TabIndex = 57;
            this.label5.Text = "Clave";
            this.label5.Click += new System.EventHandler(this.label5_Click);
            // 
            // txtClave
            // 
            this.txtClave.Location = new System.Drawing.Point(208, 259);
            this.txtClave.Name = "txtClave";
            this.txtClave.Size = new System.Drawing.Size(121, 20);
            this.txtClave.TabIndex = 58;
            // 
            // dgvPersonas
            // 
            this.dgvPersonas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPersonas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1});
            this.dgvPersonas.Location = new System.Drawing.Point(12, 332);
            this.dgvPersonas.Name = "dgvPersonas";
            this.dgvPersonas.Size = new System.Drawing.Size(1041, 301);
            this.dgvPersonas.TabIndex = 59;
            this.dgvPersonas.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvPersonas_CellContentClick);
            // 
            // finalICBFDataSet
            // 
            this.finalICBFDataSet.DataSetName = "FinalICBFDataSet";
            this.finalICBFDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // finalICBFDataSetBindingSource
            // 
            this.finalICBFDataSetBindingSource.DataSource = this.finalICBFDataSet;
            this.finalICBFDataSetBindingSource.Position = 0;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Seleccionar";
            this.Column1.Name = "Column1";
            // 
            // Persona
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1073, 647);
            this.Controls.Add(this.dgvPersonas);
            this.Controls.Add(this.txtClave);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnAgregar);
            this.Controls.Add(this.dateNacimientoPersona);
            this.Controls.Add(this.txtTelefono);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtNombrePersona);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtCedula);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnEliminarPersona);
            this.Controls.Add(this.btnEditarPersona);
            this.Controls.Add(this.btnNuevaPersona);
            this.Controls.Add(this.btnConsultar);
            this.Controls.Add(this.cmbRol);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txtCorreo);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.txtDireccion);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.txtCelular);
            this.Controls.Add(this.label4);
            this.Name = "Persona";
            this.Text = "Persona";
            this.Load += new System.EventHandler(this.Persona_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPersonas)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.finalICBFDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.finalICBFDataSetBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnEliminarPersona;
        private System.Windows.Forms.Button btnEditarPersona;
        private System.Windows.Forms.Button btnNuevaPersona;
        private System.Windows.Forms.Button btnConsultar;
        private System.Windows.Forms.ComboBox cmbRol;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtCorreo;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtDireccion;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtCelular;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTelefono;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtNombrePersona;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtCedula;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dateNacimientoPersona;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtClave;
        private System.Windows.Forms.DataGridView dgvPersonas;
        private FinalICBFDataSet finalICBFDataSet;
        private System.Windows.Forms.BindingSource finalICBFDataSetBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
    }
}