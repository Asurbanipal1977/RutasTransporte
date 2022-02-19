using System;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class RutasTransporteCD
    {

        private static readonly string cadenaConexion = @"Data Source=GIGABYTE-SABRE\SQLEXPRESS;Initial Catalog=RedTransporte;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        private static SqlConnection conexion = null;

        public RutasTransporteCD()
        {

        }

        public static SqlConnection Conexion
        {
            get
            {
                if (conexion == null)
                {
                    conexion = new SqlConnection();
                    conexion.ConnectionString = cadenaConexion;
                }
                return conexion;
            }
        }

        public static void Open()
        {
            if (conexion != null)
            {
                try
                {
                    conexion.Open();
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }

        public static void Close()
        {
            if (conexion != null)
                conexion.Close();
        }

        public DataSet ListarRutas()
        {
            var con = RutasTransporteCD.Conexion;
            try
            {
                Open();
                string query = "SELECT * FROM Rutas";

                DataSet dset = new DataSet();
                SqlDataAdapter adaptador = new SqlDataAdapter(query, con);
                adaptador.Fill(dset, "tbl");

                Close();

                return dset;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public DataSet ListarTramosRuta (int idRuta)
        {
            var con = RutasTransporteCD.Conexion;
            try
            {
                Open();
                string query = $"SELECT r.Id, r.Descripcion, pOri.Descripcion Origen, pDes.Descripcion Destino, rt.Longitud, " +
                    $"rt.Duracion FROM Rutas r, Tramos t, Paradas pOri, Paradas pDes, RutasTramos rt WHERE " +
                    $"R.ID = @idRuta AND rt.CodRuta = r.id and rt.CodTramo = t.Id and " +
                    $"t.Origen = pOri.Id and t.Destino = pDes.Id order by rt.Orden";

                DataSet dset = new DataSet();
                SqlDataAdapter adaptador = new SqlDataAdapter(query, con);
                adaptador.SelectCommand.Parameters.AddWithValue("@idRuta",idRuta);

                adaptador.Fill(dset, "tbl");

                Close();

                return dset;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
