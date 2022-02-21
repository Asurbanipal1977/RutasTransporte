using CapaNegocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaPresentacion
{
    public partial class FrRutasTransporte : Form
    {
        private RutasTransporteCN capaNegocio = new RutasTransporteCN();

        public FrRutasTransporte()
        {
            InitializeComponent();
        }

        private void CargarDatosRutas()
        {
            gvRutas.DataSource = capaNegocio.ListarRutas().Tables["tbl"];
        }

        private void CargarDatosTramos(int idRuta)
        {
            gvTramos.DataSource = capaNegocio.ListarTramosRuta(idRuta).Tables["tbl"];
        }

        private void FrRutasTransporte_Load(object sender, EventArgs e)
        {
            CargarDatosRutas();
            //Cargamos por defecto la primera ruta
            CargarDatosTramos(1);
        }

        private void gvRutas_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int idRuta = (int)gvRutas.CurrentRow.Cells["Id"].Value;

            CargarDatosTramos(idRuta);
        }

        private void gvRutas_SelectionChanged(object sender, EventArgs e)
        {
            int idRuta = (int)gvRutas.CurrentRow.Cells["Id"].Value;

            CargarDatosTramos(idRuta);
        }

        private void btnMinimo_Click(object sender, EventArgs e)
        {
            FrRutaMinima frRutaMinima = new FrRutaMinima();
            frRutaMinima.StartPosition = FormStartPosition.CenterParent;
            frRutaMinima.ShowDialog();
        }
    }
}
