using System;

namespace CapaPresentacion
{
    partial class frRutasTransporte
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.gvRutas = new System.Windows.Forms.DataGridView();
            this.lblRutas = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.gvTramos = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.gvRutas)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvTramos)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(159, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(788, 54);
            this.label1.TabIndex = 0;
            this.label1.Text = "Rutas de transporte de la red de autobuses";
            // 
            // gvRutas
            // 
            this.gvRutas.AllowUserToAddRows = false;
            this.gvRutas.AllowUserToDeleteRows = false;
            this.gvRutas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvRutas.Location = new System.Drawing.Point(12, 136);
            this.gvRutas.Name = "gvRutas";
            this.gvRutas.ReadOnly = true;
            this.gvRutas.RowHeadersWidth = 51;
            this.gvRutas.RowTemplate.Height = 29;
            this.gvRutas.Size = new System.Drawing.Size(300, 302);
            this.gvRutas.TabIndex = 1;
            this.gvRutas.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvRutas_CellClick);
            this.gvRutas.SelectionChanged += new System.EventHandler(this.gvRutas_SelectionChanged);
            // 
            // lblRutas
            // 
            this.lblRutas.AutoSize = true;
            this.lblRutas.Location = new System.Drawing.Point(12, 104);
            this.lblRutas.Name = "lblRutas";
            this.lblRutas.Size = new System.Drawing.Size(53, 20);
            this.lblRutas.TabIndex = 2;
            this.lblRutas.Text = "RUTAS";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(334, 104);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "TRAMOS";
            // 
            // gvTramos
            // 
            this.gvTramos.AllowUserToAddRows = false;
            this.gvTramos.AllowUserToDeleteRows = false;
            this.gvTramos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvTramos.Location = new System.Drawing.Point(334, 136);
            this.gvTramos.Name = "gvTramos";
            this.gvTramos.ReadOnly = true;
            this.gvTramos.RowHeadersWidth = 51;
            this.gvTramos.RowTemplate.Height = 29;
            this.gvTramos.Size = new System.Drawing.Size(750, 302);
            this.gvTramos.TabIndex = 4;
            // 
            // frRutasTransporte
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1108, 450);
            this.Controls.Add(this.gvTramos);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lblRutas);
            this.Controls.Add(this.gvRutas);
            this.Controls.Add(this.label1);
            this.Name = "frRutasTransporte";
            this.Text = "Rutas de Transporte";
            this.Load += new System.EventHandler(this.frRutasTransporte_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvRutas)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvTramos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView gvRutas;
        private System.Windows.Forms.Label lblRutas;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView gvTramos;
    }
}
