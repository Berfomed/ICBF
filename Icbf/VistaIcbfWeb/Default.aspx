<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VistaIcbfWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div style="width: 100%">
        <div style="width: 20%; height: 20%; margin-left: 40%">
            <img src="/Img/Niño.jpg" class="img-fluid" alt="Responsive image">
        </div>
        <h1 style="text-align: center">
            <asp:Label ID="lbValidar" runat="server"></asp:Label>
        </h1>
    </div>
    <div style="width:100%">
        <div style="margin-left:48%;margin-top:2%;font-size:20pt">
        <a href="Login.aspx" class="btn-outline-warning">Volver</a>
    </div>
        </div>
</asp:Content>
