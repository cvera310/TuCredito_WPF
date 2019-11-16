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
    
    public partial class Cliente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cliente()
        {
            this.Solicitud_Credito = new HashSet<Solicitud_Credito>();
        }
    
        public int NumeroCliente { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int TipoDocumento { get; set; }
        public string Documento { get; set; }
        public int Sexo { get; set; }
        public string RazonSocial { get; set; }
        public Nullable<System.DateTime> Nacimiento { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string LugarTrabajo { get; set; }
        public int AntiguedadLaboral { get; set; }
        public string DireccionLaboral { get; set; }
    
        public virtual sexo sexo1 { get; set; }
        public virtual TipoDeDocumento TipoDeDocumento { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Solicitud_Credito> Solicitud_Credito { get; set; }
    }
}
