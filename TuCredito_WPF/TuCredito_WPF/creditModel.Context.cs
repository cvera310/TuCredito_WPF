﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class creditEntities : DbContext
    {
        public creditEntities()
            : base("name=creditEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<C__MigrationHistory> C__MigrationHistory { get; set; }
        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<Cargo> Cargo { get; set; }
        public virtual DbSet<Cliente> Cliente { get; set; }
        public virtual DbSet<cobranza> cobranza { get; set; }
        public virtual DbSet<cobranza_cheque> cobranza_cheque { get; set; }
        public virtual DbSet<cobranza_detalle> cobranza_detalle { get; set; }
        public virtual DbSet<Comentario> Comentario { get; set; }
        public virtual DbSet<forma_pago> forma_pago { get; set; }
        public virtual DbSet<Informconf> Informconf { get; set; }
        public virtual DbSet<moneda> moneda { get; set; }
        public virtual DbSet<personal> personal { get; set; }
        public virtual DbSet<prestamo> prestamo { get; set; }
        public virtual DbSet<prestamo_detalle> prestamo_detalle { get; set; }
        public virtual DbSet<sexo> sexo { get; set; }
        public virtual DbSet<Solicitud_Credito> Solicitud_Credito { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<tipo_prestamo> tipo_prestamo { get; set; }
        public virtual DbSet<TipoDeDocumento> TipoDeDocumento { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
    }
}
