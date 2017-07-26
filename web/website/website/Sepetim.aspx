<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Sepetim.aspx.cs" Inherits="website.Sepetim" %>
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


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" SortExpression="KullaniciAdi" />
            <asp:BoundField DataField="UrunID" HeaderText="UrunID" SortExpression="UrunID" />
            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
            <asp:TemplateField>
                           <ItemTemplate>
                               TL
                           </ItemTemplate>
                       </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />

    </asp:GridView>
    <asp:Button ID="btnonay" Text="Sepeti Onayla"  OnClick="btnonay_Click" style="background-color:#0094ff;color:white;height:30px;width:100px;margin-left:650px;" runat="server" />
    <asp:Label ID="lblsonuc" Text="" runat="server" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UyeBilgileriConnectionString %>" SelectCommand="SELECT [KullaniciAdi], [UrunID], [Fiyat] FROM [Sepet]"></asp:SqlDataSource>
</asp:Content>
