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
using Comunes;
using CapaEntidad;

namespace CapaPresentacion
{
    public partial class FrRutaMinima : Form
    {
        private RutasTransporteCN capaNegocio = new RutasTransporteCN();
        private int nParadas = 0;
        private DistanciaTramos[,] aDistanciaMinima = null;


        public FrRutaMinima()
        {
            InitializeComponent();

            nParadas = capaNegocio.CantidadParadas(); //nParadas  
            aDistanciaMinima = new DistanciaTramos[nParadas, nParadas];
        }

        private void obtenerGridInicial()
        {
            int nFila = 0, nColumna = 0;
            int idColumna, idFila;
            gvRutaMinima.ColumnCount = nParadas;
            gvRutaMinima.RowCount = nParadas;
            gvRutaMinima.RowHeadersWidth = 200;

            DataSet ds = capaNegocio.ListarParadas();

            foreach (DataRow dr in ds.Tables["tbl"]!.Rows)
            {
                gvRutaMinima.Rows[nFila].HeaderCell.Value = dr["Descripcion"].ToString();
                idFila = int.Parse(dr["Id"].ToString() ?? "0");

                foreach (DataRow drCol in ds.Tables["tbl"]!.Rows)
                {
                    if (nFila == 0)
                        gvRutaMinima.Columns[nColumna].HeaderCell.Value = drCol["Descripcion"].ToString();

                    idColumna = int.Parse(drCol["Id"].ToString() ?? "0");

                    if (nFila == nColumna)
                    {
                        gvRutaMinima.Rows[nFila].Cells[nColumna].Value = 0;
                        aDistanciaMinima[nFila, nColumna] = new DistanciaTramos()
                        {
                            DistanciaMinima = 0,
                            lstTramos = new List<RutasTramos>()
                            {
                                new RutasTramos()
                                {
                                    lstRutasTramos = new List<Tramos>(){
                                        new Tramos() {}
                                    }
                                }
                            }
                        };
                    }
                    else
                    {
                        DistanciaTramos distanciaTramos = capaNegocio.LongitudMinima(idFila, idColumna);
                        gvRutaMinima.Rows[nFila].Cells[nColumna].Value = distanciaTramos.DistanciaMinima;
                        aDistanciaMinima[nFila, nColumna] = distanciaTramos;
                    }

                    nColumna++;
                }

                nFila++;
                nColumna = 0;
            }
        }

        public void obtenerMinimasDistancias()
        {

            for (int intermedio = 0; intermedio < nParadas; intermedio++)
            {
                for (int inicio = 0; inicio < nParadas; inicio++)
                {
                    for (int fin = 0; fin < nParadas; fin++)
                    {
                        var distanciaPuntoIntermedio = aDistanciaMinima[inicio, intermedio].DistanciaMinima + 
                                                        aDistanciaMinima[intermedio, fin].DistanciaMinima;

                        if (aDistanciaMinima[inicio, fin].DistanciaMinima > distanciaPuntoIntermedio)
                        {
                            aDistanciaMinima[inicio, fin].DistanciaMinima = distanciaPuntoIntermedio;
                                                      
                            try
                            {
                                if (aDistanciaMinima[inicio, fin].lstTramos.Count >= 1)
                                {
                                    aDistanciaMinima[inicio, fin].lstTramos.Clear();
                                    aDistanciaMinima[inicio, fin].lstTramos.AddRange(aDistanciaMinima[inicio, intermedio].lstTramos);
                                    aDistanciaMinima[inicio, fin].lstTramos.AddRange(aDistanciaMinima[intermedio, fin].lstTramos);
                                }
                                
                            }
                            catch (Exception e)
                            {
                                MessageBox.Show($"Error:{inicio} {fin} {intermedio} - {e.Message}");
                            }
                        }
                    }
                }
            }

            //Se carga de nuevo el grid
            for (int i = 0;i < nParadas; i++)
            {
                for (int j = 0; j < nParadas; j++)
                {
                    gvRutaMinima.Rows[i].Cells[j].Value = Calculos.Redondeo(aDistanciaMinima[i, j].DistanciaMinima);                    
                }
            }
        }

        private void FrRutaMinima_Load(object sender, EventArgs e)
        {
            obtenerGridInicial();
            obtenerMinimasDistancias();
            foreach (DataGridViewColumn Col in gvRutaMinima.Columns)
            {
                Col.SortMode = DataGridViewColumnSortMode.NotSortable;
            }
        }

        private void gvRutaMinima_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string nombreParadas = string.Empty;
            if (e.RowIndex > -1 && e.ColumnIndex > -1)
            {
                nombreParadas = obtenerNombreParadas(aDistanciaMinima[e.RowIndex, e.ColumnIndex]);
                if (!string.IsNullOrEmpty(nombreParadas)) MessageBox.Show(nombreParadas);
            }            
        }


        private string obtenerNombreParadas(DistanciaTramos distanciaTramos)
        {
            string result = String.Empty;
            foreach (RutasTramos tramos in distanciaTramos.lstTramos)
            {
                foreach (var tramo in tramos.lstRutasTramos)
                {
                    result += $"{tramo.Origen} - {tramo.Destino}. {tramo.Ruta} \n";
                }
            }
            return result;
        }

    }
}
