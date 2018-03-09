<%@ page language="C#" autoeventwireup="true" codefile="ViewMap.aspx.cs" inherits="html_ViewMap" %>

<%@ register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <cc1:GMap ID="GMap1" runat="server" Width="1360px" Height="600px"
        enableHookMouseWheelToZoom="True" />
</body>
</html>