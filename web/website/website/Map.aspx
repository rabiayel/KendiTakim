<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="website.harita2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js "></script> 
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> 

    <script src="js_1/jquery-1.4.2.min.js"></script>
    <script src="js_1/jquery-ui-1.8.1.custom.min.js"></script>
    <script src="js_1/main.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:400px;">
    
    <div style="background-color:#bcebe9;width:1000px; height:850px;">
        <div style="width:auto;height:50px;"></div>
        <table style="margin-left:100px;">
           
            <tr>
                <td><asp:Label Text="Adres:"  runat="server" /></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="address" Width="600px" Height="40px" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td> <asp:Label Text="Açıklama"  runat="server" /></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="aciklama" TextMode="MultiLine" Height="100px" Width="600px" runat="server" /></td>
            </tr>
        </table>
      
        <br /> <br />
        <div id="map_canvas" style="height:450px;width:960px;margin-left:20px;"></div>
        <br /><br />

        <asp:Label Text="X Koordinati" style="margin-left:100px;" runat="server" />
        <asp:TextBox ID="latitude" Width="300px" Height="30px" runat="server" />
        <asp:Label Text="Y Koordinati" runat="server" />
        <asp:TextBox ID="longitude" Width="300px" Height="30px" runat="server" /><br />
        <asp:Button ID="button1" Text="Ekle" runat="server" style="background-color:#0094ff;width:200px;height:50px;margin-top:50px;margin-left:400px; color:white;" OnClick="button1_Click" />
   
    </div>
    </div>
    </form>
</body>
</html>
