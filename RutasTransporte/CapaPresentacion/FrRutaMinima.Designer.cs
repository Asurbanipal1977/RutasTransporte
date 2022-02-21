namespace CapaPresentacion
{
    partial class FrRutaMinima
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
            this.gvRutaMinima = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.gvRutaMinima)).BeginInit();
            this.SuspendLayout();
            // 
            // gvRutaMinima
            // 
            this.gvRutaMinima.AllowUserToAddRows = false;
            this.gvRutaMinima.AllowUserToDeleteRows = false;
            this.gvRutaMinima.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvRutaMinima.Location = new System.Drawing.Point(35, 31);
            this.gvRutaMinima.Name = "gvRutaMinima";
            this.gvRutaMinima.ReadOnly = true;
            this.gvRutaMinima.RowHeadersWidth = 51;
            this.gvRutaMinima.RowTemplate.Height = 29;
            this.gvRutaMinima.Size = new System.Drawing.Size(1012, 533);
            this.gvRutaMinima.TabIndex = 0;
            this.gvRutaMinima.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gvRutaMinima_CellDoubleClick);
            // 
            // FrRutaMinima
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1076, 594);
            this.Controls.Add(this.gvRutaMinima);
            this.Name = "FrRutaMinima";
            this.Text = "Rutas Mínimas";
            this.Load += new System.EventHandler(this.FrRutaMinima_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvRutaMinima)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView gvRutaMinima;
    }
}