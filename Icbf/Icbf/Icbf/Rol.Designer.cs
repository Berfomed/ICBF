namespace Icbf
{
    partial class Rol
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
            this.btnEliminarRol = new System.Windows.Forms.Button();
            this.btnEditarRol = new System.Windows.Forms.Button();
            this.btnNuevoRol = new System.Windows.Forms.Button();
            this.btnRegistrarRol = new System.Windows.Forms.Button();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtNombreRol = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnEliminarRol
            // 
            this.btnEliminarRol.Location = new System.Drawing.Point(391, 118);
            this.btnEliminarRol.Name = "btnEliminarRol";
            this.btnEliminarRol.Size = new System.Drawing.Size(75, 23);
            this.btnEliminarRol.TabIndex = 48;
            this.btnEliminarRol.Text = "Eliminar";
            this.btnEliminarRol.UseVisualStyleBackColor = true;
            // 
            // btnEditarRol
            // 
            this.btnEditarRol.Location = new System.Drawing.Point(391, 89);
            this.btnEditarRol.Name = "btnEditarRol";
            this.btnEditarRol.Size = new System.Drawing.Size(75, 23);
            this.btnEditarRol.TabIndex = 47;
            this.btnEditarRol.Text = "Editar";
            this.btnEditarRol.UseVisualStyleBackColor = true;
            // 
            // btnNuevoRol
            // 
            this.btnNuevoRol.Location = new System.Drawing.Point(391, 60);
            this.btnNuevoRol.Name = "btnNuevoRol";
            this.btnNuevoRol.Size = new System.Drawing.Size(75, 23);
            this.btnNuevoRol.TabIndex = 46;
            this.btnNuevoRol.Text = "Nuevo";
            this.btnNuevoRol.UseVisualStyleBackColor = true;
            // 
            // btnRegistrarRol
            // 
            this.btnRegistrarRol.Location = new System.Drawing.Point(183, 182);
            this.btnRegistrarRol.Name = "btnRegistrarRol";
            this.btnRegistrarRol.Size = new System.Drawing.Size(75, 23);
            this.btnRegistrarRol.TabIndex = 45;
            this.btnRegistrarRol.Text = "Registrar";
            this.btnRegistrarRol.UseVisualStyleBackColor = true;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(204, 112);
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(121, 20);
            this.txtDescripcion.TabIndex = 40;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(82, 115);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(63, 13);
            this.label8.TabIndex = 39;
            this.label8.Text = "Descripción";
            // 
            // txtNombreRol
            // 
            this.txtNombreRol.Location = new System.Drawing.Point(204, 86);
            this.txtNombreRol.Name = "txtNombreRol";
            this.txtNombreRol.Size = new System.Drawing.Size(121, 20);
            this.txtNombreRol.TabIndex = 38;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(82, 89);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(80, 13);
            this.label9.TabIndex = 37;
            this.label9.Text = "Nombre del Rol";
            // 
            // Rol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(504, 272);
            this.Controls.Add(this.btnEliminarRol);
            this.Controls.Add(this.btnEditarRol);
            this.Controls.Add(this.btnNuevoRol);
            this.Controls.Add(this.btnRegistrarRol);
            this.Controls.Add(this.txtDescripcion);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.txtNombreRol);
            this.Controls.Add(this.label9);
            this.Name = "Rol";
            this.Text = "Rol";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnEliminarRol;
        private System.Windows.Forms.Button btnEditarRol;
        private System.Windows.Forms.Button btnNuevoRol;
        private System.Windows.Forms.Button btnRegistrarRol;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtNombreRol;
        private System.Windows.Forms.Label label9;
    }
}