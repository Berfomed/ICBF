<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VistaIcbfWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" 
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" 
        integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" 
        crossorigin="anonymous"/>   
    <title>Inicio de Sesion</title>
</head>
<body>
    <div style="text-align:right; margin-right:2%; margin-top:1%">
    <asp:Label ID="lbfecha" runat="server" Text="Label" Font-Size="Small"></asp:Label>
    </div>
    <div style="100%">        
            <div style="width:37%; height:37%; margin-left:31%; margin-top:5%">
  <img class="img-fluid" alt="Responsive image" src="/Img/Logo.jpg"/>
  
</div>
        </div>
    
        <form id="form1" runat="server">
        <div style="margin-left:37%; margin-top:1%">            
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" BackColor="White" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="189px" Width="329px" DisplayRememberMe="False">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Inset" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <TextBoxStyle BorderStyle="Outset" Font-Size="0.8em" />
        <TitleTextStyle BackColor="#8CBE4F" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
        </div>
    </form>
    <div class="" style="margin-top: 2%">
        <div style="margin-left: 10%">            
        </div>
        <h4 style="text-align: right; margin-right:2%; font-size:10pt">Proyecto Icbf ASP.net 2018 Todos los Derechos Reservados</h4>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>
