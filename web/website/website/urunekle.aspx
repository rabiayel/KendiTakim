<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="urunekle.aspx.cs" Inherits="website.urunekle" %>
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
            
            <div id="wrapper">
          <asp:Panel ID="pnlGuncelle" runat="server" style="margin-top:20px; margin:0 auto;">
               <div class="guncelle" style="margin-top:40px;">
        <div class="ust" style=" width:618px; height:45px;line-height:44px;padding-left: 15px;color: #555;border-bottom: 1px solid #ccc;background-color: #ffffff;cursor: pointer;">
            Ürün Ekle
        </div>

        <div class="alt" style="  width:600px;height:auto;padding: 17.5px;border-bottom: 1px solid #ccc;background-color: #ffffff;">
            <div class="urun" style="margin-top: 15px;">
                 <asp:Label ID="lblSonuc" Text="" runat="server" />
                <br />
               <asp:Label Text="Kullanıcı Adı:" runat="server" />
                &nbsp&nbsp
                <asp:TextBox ID="txtKullaniciAdi" runat="server" style=" margin-top:30px;width: 228px;padding: 10px;height: 28px;    border:  1px solid #ccc;"/>
                <br />
                <br />
                <br />
                <asp:Label Text="Urun Adı:" runat="server" />
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtUrun" runat="server" style=" width: 228px;padding: 10px;height: 28px;    border:  1px solid #ccc;"/>
            
                <br />
                <br />
                    <asp:Label Text="Fiyat:" runat="server" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtFiyat" runat="server" style=" margin-top:25px;width: 228px;padding: 10px;height: 28px;    border:  1px solid #ccc;"/>

                <br />

                <div class="resim" style=" margin-top: 25px;">
                    <asp:Label Text="Resim:" runat="server" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <asp:FileUpload ID="fileResim" runat="server" style="width:228px; height:28px;"/>
                    <br />
                    <br />
        </div>
                <asp:Label Text="Açıklama:" runat="server" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:TextBox ID="txtAciklama" runat="server" Height="60px" style=" padding: 10px; border:1px solid #ccc;" TextMode="MultiLine" Width="228px" />
            </div>
            <br />
            <br />
            <br />
        <asp:Button ID="btnEkle" Text="Ekle" runat="server" style="float: right; width: 100px;height: 40px; line-height: 40px;text-align:center;color: #ffffff;
background-color: #0099CC;cursor: pointer;margin-top: 10px;" OnClick="btnEkle_Click"/>
           <a href="/" class="btniptal" style="float: left; width: 100px;height: 40px;line-height: 40px;
                      text-align:center;color: #0099CC;background-color: #ccc;cursor: pointer;margin-top: 10px;  ">İptal</a>
       
        </div>
         </div>
           </asp:Panel>        
            </div>
    </div>
     
        </div>
           
          
  
</asp:Content>
