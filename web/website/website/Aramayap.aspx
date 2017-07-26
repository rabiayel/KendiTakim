<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Aramayap.aspx.cs" Inherits="website.Aramayap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <p>
                <h1>
                    <%#Eval("UrunAdi") %>
                </h1>
            </p>
            <p>
                 <div style="background-color:#ffffff;width:900px;height:auto;">
                
                     <img src="./uresim/<%#Eval("Resim") %>"  width="900" height="900" /><br />
               
                     <table class="auto-style1">
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
                         </table>
                </div>
                
                                                     
            </p>
        </ItemTemplate>
    </asp:Repeater>




</asp:Content>
