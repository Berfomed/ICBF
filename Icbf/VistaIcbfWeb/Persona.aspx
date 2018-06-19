<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Persona.aspx.cs" Inherits="VistaIcbfWeb.Persona" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <h1>Crud Registro Personas</h1>

    <asp:Label ID="Label1" runat="server" Text="Cedula"></asp:Label>
    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Nombre Completo"></asp:Label>
      <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Telefono"></asp:Label>
      <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Celular"></asp:Label>
      <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" Text="Direccion"></asp:Label>
    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>
    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
    <asp:Label ID="Label7" runat="server" Text="Clave"></asp:Label>
    <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="Fecha de Nacimiento"></asp:Label>
    <asp:Calendar ID="clFechaNaci" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>

    <asp:Label ID="Label9" runat="server" Text="Rol"></asp:Label>
    <asp:DropDownList ID="ddlRol" runat="server"></asp:DropDownList>


    <div>
        <asp:Button ID="btnCrear" runat="server" Text="Registrar" OnClick="btnCrear_Click" />
    </div>


    
</asp:Content>
