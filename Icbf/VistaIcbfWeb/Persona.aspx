<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Persona.aspx.cs" Inherits="VistaIcbfWeb.Persona" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <h1>Crud Registro Personas</h1>


    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Cédula"></asp:Label>
        <asp:TextBox ID="TxtCedula" runat="server" ></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
        <asp:TextBox ID="TxtNombres" runat="server" ></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Fecha de Nacimiento"></asp:Label>
        <asp:Calendar ID="ClFechaNa" runat="server"></asp:Calendar>
    </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Telefono"></asp:Label>
        <asp:TextBox ID="TxtTelefono" runat="server" ></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Celular"></asp:Label>
        <asp:TextBox ID="TxtCelular" runat="server" ></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Dirección"></asp:Label>
        <asp:TextBox ID="TxtDireccion" runat="server" ></asp:TextBox>
    </div>
    <div class="form-check">
        <asp:Label ID="Label7" runat="server" Text="Correo"></asp:Label>
        <asp:TextBox ID="TxtCorreo" runat="server" ></asp:TextBox>
    </div>
    <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Rol"></asp:Label>
        <asp:DropDownList ID="ddlRol" runat="server"></asp:DropDownList>
    </div>




    <div>
        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
    </div>



</asp:Content>
