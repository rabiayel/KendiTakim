<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Harita.aspx.cs" Inherits="website.Harita" %>


<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false">
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cc1:GMap ID="GMap1" runat="server" Width="800" Height="500" />
    </div>
    </form>
</body>
</html>
