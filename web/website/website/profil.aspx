<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="website.profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hesabim" >
        <div class="kisisel">
             <nav>       
                    <ul>
                         <li><a href="profil.aspx">Üyelik Bilgilerim</a></li>
                         <li><a href="urunekle.aspx">Ürün Ekle</a></li>      
                           <li><a href="urunlerim.aspx">Ürünlerim</a></li>
                        <li><a href="Sepetim.aspx">Sepetim</a></li> 
                             
                     </ul>
                 </nav>
        </div>
         <div class="uye">
    <div id="wrapper">
          <asp:Panel ID="pnlGuncelle" runat="server">
               <div class="guncelle">
        <div class="ust" style=" margin-top:15px;width:270px;height:45px;line-height:44px;padding-left: 15px;color: #555;border-bottom: 1px solid #ccc;background-color: #ffffff;cursor: pointer;">
            Kullanıcı Bilgilerini Güncelle
        </div>

        <div class="alt" style="  float: left;width:250px;height:auto;padding: 17.5px;border-bottom: 1px solid #ccc;background-color: #ffffff;">
            
              <asp:Label ID="lblSonuc" Text="" runat="server" />
            <br />
            <div class="kullanici" style="margin-top: 15px;">
            <span>Kullanıcı Adı:</span>
                <asp:TextBox ID="txtKullaniciAdi" runat="server" style=" width: 228px;padding: 10px;height: 28px;    border:  1px solid #ccc;"/>
            </div>

        <div class="sifre" style="margin-top: 15px;">
            <span>Şifre:</span>
            <asp:TextBox ID="txtSifre" runat="server" style=" width: 228px;padding: 10px; height: 28px;    border:  1px solid #ccc;" />
        </div>
      
        <div class="e-mail" style=" margin-top: 15px;">
            <span>E-Mail:</span>
            <asp:TextBox ID="txtMail"  runat="server" style=" width: 228px;padding: 10px; height: 28px;    border:  1px solid #ccc;" TextMode="Email"/>
        </div>
            <div class="telefon" style=" margin-top: 15px;">
            <span>Telefon:</span>
            <asp:TextBox ID="txtTelefon"  runat="server" style=" width: 228px;padding: 10px; height: 28px;    border:  1px solid #ccc;"/>
        </div>
              <div class="adres" style=" margin-top: 15px;">
            <span>Adres:</span>
            <asp:TextBox ID="txtAdres"  runat="server" style=" padding: 10px; border:  1px solid #ccc;" Height="133px" TextMode="MultiLine" Width="222px"/>
        </div>

        <asp:Button ID="btnGuncelle" Text="Guncelle" runat="server" style="float: right; width: 100px;height: 40px; line-height: 40px;text-align:center;color: #ffffff;
background-color: #0099CC;cursor: pointer;margin-top: 10px;" OnClick="btnGuncelle_Click"/>
           <a href="/" class="btniptal" style="float: left; width: 100px;height: 40px;line-height: 40px;
                      text-align:center;color: #0099CC;background-color: #ccc;cursor: pointer;margin-top: 10px;  ">İptal</a>
      
        </div>
                  
                    <asp:Panel ID="pnldurum" runat="server" style="background-color:#ffffff; padding:10px;"> 
               <asp:Label ID="lbldurum" Text=" " runat="server"/>
               <br />
                     
           </asp:Panel>
         </div>
           </asp:Panel>
    </div>
    </div>
    </div>
           

</asp:Content>
