namespace Icbf
{
    partial class Menu
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.archivo = new System.Windows.Forms.ToolStripMenuItem();
            this.acudienteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.personaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ninioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.crearToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.menu1Admin = new System.Windows.Forms.ToolStripMenuItem();
            this.btnCerrarSesion = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.archivo});
            this.menuStrip1.Location = new System.Drawing.Point(0, 24);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1325, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // archivo
            // 
            this.archivo.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.acudienteToolStripMenuItem,
            this.crearToolStripMenuItem});
            this.archivo.Name = "archivo";
            this.archivo.Size = new System.Drawing.Size(60, 20);
            this.archivo.Text = "Archivo";
            this.archivo.Visible = false;
            // 
            // acudienteToolStripMenuItem
            // 
            this.acudienteToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.personaToolStripMenuItem,
            this.rolToolStripMenuItem,
            this.ninioToolStripMenuItem});
            this.acudienteToolStripMenuItem.Name = "acudienteToolStripMenuItem";
            this.acudienteToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.acudienteToolStripMenuItem.Text = "Crear";
            this.acudienteToolStripMenuItem.Click += new System.EventHandler(this.acudienteToolStripMenuItem_Click);
            // 
            // personaToolStripMenuItem
            // 
            this.personaToolStripMenuItem.Name = "personaToolStripMenuItem";
            this.personaToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.personaToolStripMenuItem.Text = "Persona";
            this.personaToolStripMenuItem.Click += new System.EventHandler(this.personaToolStripMenuItem_Click);
            // 
            // rolToolStripMenuItem
            // 
            this.rolToolStripMenuItem.Name = "rolToolStripMenuItem";
            this.rolToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.rolToolStripMenuItem.Text = "Rol";
            // 
            // ninioToolStripMenuItem
            // 
            this.ninioToolStripMenuItem.Name = "ninioToolStripMenuItem";
            this.ninioToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.ninioToolStripMenuItem.Text = "Ninio";
            this.ninioToolStripMenuItem.Click += new System.EventHandler(this.ninioToolStripMenuItem_Click);
            // 
            // crearToolStripMenuItem
            // 
            this.crearToolStripMenuItem.Name = "crearToolStripMenuItem";
            this.crearToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.crearToolStripMenuItem.Text = "Editar";
            this.crearToolStripMenuItem.Click += new System.EventHandler(this.crearToolStripMenuItem_Click);
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.menu1Admin});
            this.menuStrip2.Location = new System.Drawing.Point(0, 0);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Size = new System.Drawing.Size(1325, 24);
            this.menuStrip2.TabIndex = 3;
            this.menuStrip2.Text = "menuStrip2";
            // 
            // menu1Admin
            // 
            this.menu1Admin.Name = "menu1Admin";
            this.menu1Admin.Size = new System.Drawing.Size(59, 20);
            this.menu1Admin.Text = "Menu 1";
            this.menu1Admin.Visible = false;
            // 
            // btnCerrarSesion
            // 
            this.btnCerrarSesion.Location = new System.Drawing.Point(568, 100);
            this.btnCerrarSesion.Name = "btnCerrarSesion";
            this.btnCerrarSesion.Size = new System.Drawing.Size(107, 23);
            this.btnCerrarSesion.TabIndex = 4;
            this.btnCerrarSesion.Text = "Cerrar Sesion";
            this.btnCerrarSesion.UseVisualStyleBackColor = true;
            this.btnCerrarSesion.Click += new System.EventHandler(this.btnCerrarSesion_Click);
            // 
            // Menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1325, 731);
            this.Controls.Add(this.btnCerrarSesion);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.menuStrip2);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.MaximizeBox = false;
            this.Name = "Menu";
            this.Text = "Menu";
            this.Load += new System.EventHandler(this.Menu_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem archivo;
        private System.Windows.Forms.ToolStripMenuItem acudienteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem crearToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem personaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rolToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ninioToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem menu1Admin;
        private System.Windows.Forms.Button btnCerrarSesion;
    }
}