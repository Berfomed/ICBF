namespace Icbf
{
    partial class RegistroAsistencia
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
            this.btnEliminarAsistencia = new System.Windows.Forms.Button();
            this.btnEditarAsistencia = new System.Windows.Forms.Button();
            this.btnNuevaAsistencia = new System.Windows.Forms.Button();
            this.btnRegistrarAsistencia = new System.Windows.Forms.Button();
            this.txtDescripcionNinio = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbNinio = new System.Windows.Forms.ComboBox();
            this.dateAsistencia = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // btnEliminarAsistencia
            // 
            this.btnEliminarAsistencia.Location = new System.Drawing.Point(370, 116);
            this.btnEliminarAsistencia.Name = "btnEliminarAsistencia";
            this.btnEliminarAsistencia.Size = new System.Drawing.Size(75, 23);
            this.btnEliminarAsistencia.TabIndex = 56;
            this.btnEliminarAsistencia.Text = "Eliminar";
            this.btnEliminarAsistencia.UseVisualStyleBackColor = true;
            // 
            // btnEditarAsistencia
            // 
            this.btnEditarAsistencia.Location = new System.Drawing.Point(370, 87);
            this.btnEditarAsistencia.Name = "btnEditarAsistencia";
            this.btnEditarAsistencia.Size = new System.Drawing.Size(75, 23);
            this.btnEditarAsistencia.TabIndex = 55;
            this.btnEditarAsistencia.Text = "Editar";
            this.btnEditarAsistencia.UseVisualStyleBackColor = true;
            // 
            // btnNuevaAsistencia
            // 
            this.btnNuevaAsistencia.Location = new System.Drawing.Point(370, 58);
            this.btnNuevaAsistencia.Name = "btnNuevaAsistencia";
            this.btnNuevaAsistencia.Size = new System.Drawing.Size(75, 23);
            this.btnNuevaAsistencia.TabIndex = 54;
            this.btnNuevaAsistencia.Text = "Nuevo";
            this.btnNuevaAsistencia.UseVisualStyleBackColor = true;
            // 
            // btnRegistrarAsistencia
            // 
            this.btnRegistrarAsistencia.Location = new System.Drawing.Point(162, 180);
            this.btnRegistrarAsistencia.Name = "btnRegistrarAsistencia";
            this.btnRegistrarAsistencia.Size = new System.Drawing.Size(75, 23);
            this.btnRegistrarAsistencia.TabIndex = 53;
            this.btnRegistrarAsistencia.Text = "Registrar";
            this.btnRegistrarAsistencia.UseVisualStyleBackColor = true;
            // 
            // txtDescripcionNinio
            // 
            this.txtDescripcionNinio.Location = new System.Drawing.Point(183, 110);
            this.txtDescripcionNinio.Name = "txtDescripcionNinio";
            this.txtDescripcionNinio.Size = new System.Drawing.Size(121, 20);
            this.txtDescripcionNinio.TabIndex = 52;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(50, 113);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(124, 13);
            this.label8.TabIndex = 51;
            this.label8.Text = "Descripción Estado Niño";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(50, 87);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(37, 13);
            this.label9.TabIndex = 49;
            this.label9.Text = "Fecha";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(50, 58);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(127, 13);
            this.label1.TabIndex = 57;
            this.label1.Text = "Nombres y Apellidos Niño";
            // 
            // cmbNinio
            // 
            this.cmbNinio.FormattingEnabled = true;
            this.cmbNinio.Location = new System.Drawing.Point(183, 55);
            this.cmbNinio.Name = "cmbNinio";
            this.cmbNinio.Size = new System.Drawing.Size(121, 21);
            this.cmbNinio.TabIndex = 58;
            // 
            // dateAsistencia
            // 
            this.dateAsistencia.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateAsistencia.Location = new System.Drawing.Point(183, 81);
            this.dateAsistencia.Name = "dateAsistencia";
            this.dateAsistencia.Size = new System.Drawing.Size(121, 20);
            this.dateAsistencia.TabIndex = 59;
            // 
            // RegistroAsistencia
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(507, 333);
            this.Controls.Add(this.dateAsistencia);
            this.Controls.Add(this.cmbNinio);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnEliminarAsistencia);
            this.Controls.Add(this.btnEditarAsistencia);
            this.Controls.Add(this.btnNuevaAsistencia);
            this.Controls.Add(this.btnRegistrarAsistencia);
            this.Controls.Add(this.txtDescripcionNinio);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label9);
            this.Name = "RegistroAsistencia";
            this.Text = "RegistroAsistencia";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnEliminarAsistencia;
        private System.Windows.Forms.Button btnEditarAsistencia;
        private System.Windows.Forms.Button btnNuevaAsistencia;
        private System.Windows.Forms.Button btnRegistrarAsistencia;
        private System.Windows.Forms.TextBox txtDescripcionNinio;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbNinio;
        private System.Windows.Forms.DateTimePicker dateAsistencia;
    }
}