using CapaDatos;
using System;
using System.Linq;
using System.Data;
using System.Windows.Forms;
using CapaEntidad;

namespace CapaNegocio
{
    public class RutasTransporteCN
    {
        private readonly RutasTransporteCD capaDatos = new RutasTransporteCD();
        public DataSet ListarRutas()
        {
            try
            {
                return capaDatos.ListarRutas();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        public DataSet ListarParadas()
        {
            try
            {
                return capaDatos.ListarParadas();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        public DataSet ListarTramosRuta(int idRuta)
        {
            try
            {
                return capaDatos.ListarTramosRuta(idRuta);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        public int CantidadParadas()
        {
            int cantidad = 0;
            try
            {
                cantidad = capaDatos.ListarParadas().Tables["tbl"]!.AsEnumerable().Count();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return cantidad;
        }

        public DistanciaTramos LongitudMinima(int idOrigen, int idDestino)
        {
            DistanciaTramos distanciaTramos = new DistanciaTramos();
            try
            {
                distanciaTramos = capaDatos.MinimaDistancia(idOrigen, idDestino);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return distanciaTramos;
        }
    }
}
