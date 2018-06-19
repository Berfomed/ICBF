<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VistaIcbfWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" 
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" 
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" 
        crossorigin="anonymous"/>   

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:40%; margin-top:20%">
            
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" ></asp:Login>
        </div>
    </form>
</body>
</html>
