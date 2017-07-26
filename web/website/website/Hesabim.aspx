<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Hesabim.aspx.cs" Inherits="website.Hesabim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel ID="pnldurum" runat="server"  >
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
    </div>
            </asp:Panel>
    </asp:Content>
