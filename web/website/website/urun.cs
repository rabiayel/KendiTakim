//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class urun
    {
        public int Id { get; set; }
        public string KullaniciAdi { get; set; }
        public string UrunAdi { get; set; }
        public string Fiyat { get; set; }
        public string Resim { get; set; }
        public string Aciklama { get; set; }
        public string Stoksayisi { get; set; }
    
        public virtual kullaniciBilgileri kullaniciBilgileri { get; set; }
    }
}