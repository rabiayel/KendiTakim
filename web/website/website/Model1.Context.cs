﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace website
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class UyeBilgileriEntities5 : DbContext
    {
        public UyeBilgileriEntities5()
            : base("name=UyeBilgileriEntities5")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<kullaniciBilgileri> kullaniciBilgileri { get; set; }
        public virtual DbSet<urun> urun { get; set; }
        public virtual DbSet<Sepet> Sepet { get; set; }
        public virtual DbSet<siparis> siparis { get; set; }
    }
}
