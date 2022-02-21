using System;
using System.Collections.Generic;

namespace CapaEntidad
{
    public class Tramos
    {
        public int IdOrigen { get; set; }
        public string Origen { get; set; }
        public int IdDestino { get; set; }
        public string Destino { get; set; }
        public string Ruta { get; set; }
    }

    public class RutasTramos
    {
        public List<Tramos> lstRutasTramos { get; set; }
    } 

    public class DistanciaTramos
    {
        public List<RutasTramos> lstTramos { get; set; }
        public double DistanciaMinima { get; set; }
    }

    
}
