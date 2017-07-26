<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="website.Kaydol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hızlı Kayıt Ol</title>

    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div id="wrapper">

           <asp:Panel ID="pnlhizliKayit" runat="server">
               <div class="hizliKayit">
        <div class="ust">
            Hızlı Kayıt Ol
        </div>

        <div class="alt">
            <div class="kullanici">
            <span>Kullanıcı Adı:</span>
                <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="textbox" />
            </div>

        <div class="sifre">
            <span>Şifre:</span>
            <asp:TextBox ID="txtSifre" CssClass="textbox" runat="server" TextMode="Password" />
        </div>
      
        <div class="e-mail">
            <span>E-Mail:</span>
            <asp:TextBox ID="txtMail" CssClass="textbox" runat="server" />
        </div>
               <div class="telefon" style=" margin-top: 15px;">
            <span>Telefon:</span>
            <asp:TextBox ID="txtTelefon"  runat="server" style=" width: 228px;padding: 10px; height: 28px;    border:  1px solid #ccc;"/>
        </div>
              <div class="adres" style=" margin-top: 15px;">
            <span>Adres:</span>
            <asp:TextBox ID="txtAdres"  runat="server" style=" padding: 10px; border:  1px solid #ccc;" Height="133px" TextMode="MultiLine" Width="222px"/>
        </div>

        <asp:Button ID="btnKayit" Text="Kaydet" CssClass="btnKayit" runat="server" OnClick="btnKaydit_Click"/>
           <a href="/" class="btniptal">İptal</a>
        <asp:Label ID="lblSonuc" Text="" runat="server" />
        </div>
         </div>
           </asp:Panel>

           <asp:Panel ID="pnldurum" runat="server" style="background-color:#ffffff; padding:10px; margin-top:100px;"> 
               <asp:Label ID="lbldurum" Text=" " runat="server"/>
               <br />
               <a href="/">Ana Sayfaya Git</a>               
           </asp:Panel>
    </div>
          
    </form>
</body>
</html>
