//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TuCredito_WPF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Solicitud_Credito
    {
        public int id { get; set; }
        public int NumeroCliente { get; set; }
        public int TotalEgreso { get; set; }
        public int TotalIngreso { get; set; }
        public string Informconf { get; set; }
        public string aprobado { get; set; }
        public Nullable<int> MontoSolicitado { get; set; }
        public string MotivoPrestamo { get; set; }
        public string mon_codigo { get; set; }
    
        public virtual Cliente Cliente { get; set; }
        public virtual moneda moneda { get; set; }
    }
}
