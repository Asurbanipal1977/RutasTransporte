namespace CapaPresentacion
{
    partial class FrTramosNoOptimos
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
            this.gvTramosNoOptimos = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.gvTramosNoOptimos)).BeginInit();
            this.SuspendLayout();
            // 
            // gvTramosNoOptimos
            // 
            this.gvTramosNoOptimos.AllowUserToAddRows = false;
            this.gvTramosNoOptimos.AllowUserToDeleteRows = false;
            this.gvTramosNoOptimos.AllowUserToResizeColumns = false;
            this.gvTramosNoOptimos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvTramosNoOptimos.Location = new System.Drawing.Point(12, 23);
            this.gvTramosNoOptimos.Name = "gvTramosNoOptimos";
            this.gvTramosNoOptimos.ReadOnly = true;
            this.gvTramosNoOptimos.RowHeadersWidth = 51;
            this.gvTramosNoOptimos.RowTemplate.Height = 29;
            this.gvTramosNoOptimos.Size = new System.Drawing.Size(697, 398);
            this.gvTramosNoOptimos.TabIndex = 0;
            // 
            // FrTramosNoOptimos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.gvTramosNoOptimos);
            this.Name = "FrTramosNoOptimos";
            this.Text = "Tramos no óptimos";
            this.Load += new System.EventHandler(this.FrTramosNoOptimos_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvTramosNoOptimos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView gvTramosNoOptimos;
    }
}