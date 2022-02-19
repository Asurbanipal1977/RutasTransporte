using CapaDatos;
using System;
using System.Data;
using System.Windows.Forms;

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
    }
}
