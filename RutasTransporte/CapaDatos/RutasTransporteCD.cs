using CapaEntidad;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class RutasTransporteCD
    {

        private static readonly string cadenaConexion = @"Data Source=GIGABYTE-SABRE\SQLEXPRESS;Initial Catalog=RedTransporte;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        private static SqlConnection conexion = null;


        public DataSet ListarRutas()
        {
            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try
                {
                    con.Open();
                    string query = "SELECT * FROM Rutas";

                    DataSet dset = new DataSet();
                    SqlDataAdapter adaptador = new SqlDataAdapter(query, con);
                    adaptador.Fill(dset, "tbl");

                    return dset;
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }

        public DataSet ListarParadas()
        {
            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try {
                    con.Open();
                    string query = "SELECT * FROM Paradas";

                    DataSet dset = new DataSet();
                    SqlDataAdapter adaptador = new SqlDataAdapter(query, con);
                    adaptador.Fill(dset, "tbl");

                    return dset;
                }
                catch (Exception ex)
                {
                    throw;
                }
            }            
        }

        public DataSet ListarTramosRuta (int idRuta)
        {
            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try
                {
                    con.Open();
                    string query = $"SELECT pOri.Descripcion Origen, pDes.Descripcion Destino, rt.Longitud, " +
                        $"rt.Duracion FROM Rutas r, Tramos t, Paradas pOri, Paradas pDes, RutasTramos rt WHERE " +
                        $"R.ID = @idRuta AND rt.CodRuta = r.id and rt.CodTramo = t.Id and " +
                        $"t.Origen = pOri.Id and t.Destino = pDes.Id order by rt.Orden";

                    DataSet dset = new DataSet();
                    SqlDataAdapter adaptador = new SqlDataAdapter(query, con);
                    adaptador.SelectCommand.Parameters.AddWithValue("@idRuta", idRuta);
                    adaptador.Fill(dset, "tbl");

                    return dset;
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }

        public DistanciaTramos MinimaDistancia (int idOrigen, int idDestino)
        {
            //Valor minimo que no se va a dar
            DistanciaTramos distanciaTramos = new DistanciaTramos()
            {
                DistanciaMinima = 10000,
                lstTramos = new List<RutasTramos>()
                {
                    new RutasTramos()
                    {
                        lstRutasTramos = new List<Tramos>(){
                            new Tramos(){}
                        }
                    }
                    
                }
            };

            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try
                {
                    con.Open();

                    string query = "select coalesce(MIN(Longitud),10000) LongitudMinima, min(aux.Origen) IdOrigen, min(aux.DesOrigen) Origen," +
                        "  min(aux.Destino) IdDestino, min(aux.DesDestino) Destino, min(r.Descripcion) Ruta from RutasTramos rt, " +
                    "(select t.Id, t.Origen, pOrigen.Descripcion DesOrigen, t.Destino, pDestino.Descripcion DesDestino " +
                    "from Tramos t, Paradas pOrigen, Paradas pDestino " +
                    "where t.Origen = @idOrigen and t.Destino = @idDestino and pOrigen.Id = t.Origen and pDestino.Id = t.Destino) aux, Rutas r " +
                    "where rt.CodTramo = aux.Id " +
                    "and rt.CodRuta = r.Id";

                    SqlCommand sqlCommand = new SqlCommand(query, con);
                    sqlCommand.Parameters.AddWithValue("@idOrigen", idOrigen);
                    sqlCommand.Parameters.AddWithValue("@idDestino", idDestino);

                    SqlDataReader registros = sqlCommand.ExecuteReader();
                    while (registros.Read())
                    {
                        if (registros["IdOrigen"] != DBNull.Value)
                        {
                            distanciaTramos.DistanciaMinima = double.Parse(registros["LongitudMinima"].ToString());
                            distanciaTramos.lstTramos[0].lstRutasTramos[0].IdOrigen = (int)registros["IdOrigen"]!;
                            distanciaTramos.lstTramos[0].lstRutasTramos[0].Origen = registros["Origen"]!.ToString();
                            distanciaTramos.lstTramos[0].lstRutasTramos[0].IdDestino = (int)registros["IdDestino"]!;
                            distanciaTramos.lstTramos[0].lstRutasTramos[0].Destino = registros["Destino"]!.ToString();
                            distanciaTramos.lstTramos[0].lstRutasTramos[0].Ruta = registros["Ruta"]!.ToString();
                        }
                    }
                    registros.Close();
                }
                catch (Exception e)
                {
                    throw;
                }
                return distanciaTramos;
            }
        }

        public DataSet TramosNoOptimos()
        {
            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try
                {
                    con.Open();
                    SqlCommand command = new SqlCommand("RutasNoOptimas", con);
                    command.CommandType = CommandType.StoredProcedure;
                    DataSet dset = new DataSet();
                    SqlDataAdapter adaptador = new SqlDataAdapter();
                    adaptador.SelectCommand = command;
                    adaptador.Fill(dset, "tbl");

                    return dset;

                }
                catch (Exception e)
                {
                    throw;
                }
            }
        }
    }
}
