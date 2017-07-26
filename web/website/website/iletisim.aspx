<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="website.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="iletisim">
       <asp:Panel ID="pnliletisim" runat="server">      
            <div class="ust">
                 Bize Ulaşın
               </div>
           </asp:Panel>
        <div class="alt">

              <asp:Label ID="lblSonuc" Text="" runat="server" />
            <br />

            <asp:Label ID="ad" Text="Adınız ve Soyadınız:" CssClass="label1" runat="server" />
                <asp:TextBox ID="txtAd" runat="server" CssClass="textbox" />
            
         

            <asp:Label ID="mail" Text="E-Mailiniz:" CssClass="label3" runat="server" />
             <asp:TextBox ID="txtmail" runat="server" CssClass="textbox" />

            <asp:Label ID="konu" Text="Konunuz:" CssClass="label4" runat="server" />
                <asp:TextBox ID="txtKonu" runat="server" CssClass="textbox" />

             <asp:Label ID="mesaj" Text="Mesajınız:" CssClass="label5" runat="server" />
                <asp:TextBox ID="txtMesaj" runat="server" CssClass="txtMesaj" TextMode="MultiLine" />

            <asp:Button ID="btngonder" Text="Gönder" CssClass="btngonder" runat="server" OnClick="btngonder_Click" />

          <a href="/" class="btniptal" style="float: left; width: 100px;height: 40px;line-height: 40px;
                      text-align:center;color: #0099CC;background-color: #ccc;cursor: pointer;margin-top: 10px;  ">İptal</a>

           </div>
    </div>
   

</asp:Content>
