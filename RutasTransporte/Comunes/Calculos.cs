using System;

namespace Comunes
{
    public static class Calculos
    {
        public static double Redondeo (double valor)
        {
            return (Math.Round(valor * 100) / 100);
        }
        
        
    }
}
