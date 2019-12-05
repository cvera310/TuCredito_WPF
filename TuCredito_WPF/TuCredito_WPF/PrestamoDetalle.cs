using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TuCredito_WPF
{

    public enum EstadoPrestamo { Pagado, No_pagado }
    public class PrestamoDetalle
    {
        public int NroCuota { get; set; }
        public double MontoDetalle { get; set; }
        public double SaldoDetalle { get; set; }
        public DateTime Vencimiento { get; set; }
        public EstadoPrestamo estado { get; set; }

        public static List<PrestamoDetalle> ListaPrestamoDetalle = new List<PrestamoDetalle>();

        public static void Agregar(PrestamoDetalle pd)
        {
            ListaPrestamoDetalle.Add(pd);

        }

        public static void Eliminar(PrestamoDetalle pd)
        {
            ListaPrestamoDetalle.Remove(pd);
        }

        public static List<PrestamoDetalle> ObtenerPrestamoDetalle()
        {
            return ListaPrestamoDetalle;
        }
    }
}
