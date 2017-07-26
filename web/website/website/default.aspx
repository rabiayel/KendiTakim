<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="website._default" MaintainScrollPositionOnPostBack="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <asp:ListView ID="lsturunler" runat="server">
                        <ItemTemplate>
                           <div class="urunler-wrap" style=" width:900px; height:auto; background-color:#ffffff; margin-bottom:30px; ">
                             
                              <img src="./uresim/<%#Eval("Resim") %>"  width="900" height="900" /><br />
                             
                             <table class="auto-style1">
                                 <tr>
                                 
                                 <td>  <asp:Label Text='<%#Eval("Id")%>' runat="server" CssClass="bilgi" /><br /></td>
                             </tr>
                             <tr>
                                 <td> <asp:Label Text="Ürün Adı: " runat="server" /><br /></td>
                                 <td>  <asp:Label Text='<%#Eval("UrunAdi")%>' runat="server" CssClass="bilgi" /><br /></td>
                             </tr>
                             <tr>
                                 <td> <asp:Label Text="Fiyat: " runat="server" /><br /></td>
                                 <td>
                                <asp:Label Text='<%#Eval("Fiyat")%>' runat="server" CssClass="bilgi" /><br /></td>
                             </tr>
                             <tr>
                                 <td>  <asp:Label Text="Açıklama: " runat="server" /><br /></td>
                                 <td>  <asp:Label Text='<%#Eval("Aciklama")%>' runat="server" CssClass="bilgi" /><br /></td>
                             </tr>
                                 <tr>
                                     <td>
                                         <a href="/">Sepete Ekle</a>
                                     </td>
                                 </tr>
                         </table>
                                                     
                           </div>
                       </ItemTemplate>
                   </asp:ListView>

</asp:Content>
