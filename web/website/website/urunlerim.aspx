<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="urunlerim.aspx.cs" Inherits="website.urunlerim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
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
    </div>

     <div id="wrapper2">
          <asp:Panel ID="pnlurunlerim" runat="server">
               <div class="urunlerim">
        <div class="ust" style=" margin-top:90px;width:90px;height:45px;line-height:44px;padding-left: 15px;color: #555;border-bottom: 1px solid #ccc;background-color: #ffffff;cursor: pointer;">
            Ürünlerim 
        </div>
                   
            
                          <%--<div class="urunler-wrap">
                               <asp:Image ImageUrl="~/uresim/IMG_3258.JPG" CssClass="img" runat="server"  Widht="745" Height="250"/>
                               <asp:Label Text="text" runat="server" CssClass="bilgi" />
                           </div>--%>
         </div>
           </asp:Panel>          
    </div>
    <asp:ListView ID="lsturunler" runat="server" >
                       <ItemTemplate> 
                           <div class="urunler-wrap" style=" width:900px; height:auto; background-color:#ffffff; margin-bottom:30px;">
                             
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
                       </ItemTemplate>
                   </asp:ListView>

</asp:Content>
