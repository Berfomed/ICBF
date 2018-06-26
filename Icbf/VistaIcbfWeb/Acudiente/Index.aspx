<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VistaIcbfWeb.Acudiente.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">

    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="">
            <img src="../Img/Logo.jpg" style="width: 18%; height: 18%" alt="Alternate Text" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left: -50%">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#" style="color: black">Inicio <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" class="btn btn-outline-dark" BorderStyle="None" />
        </div>
        <div>
        </div>
    </nav>
    <%--Visualizacion de los anuncios--%>
    <div style="stroke-width: 100%">
        <div style="margin-left: 15%; width: 68.2%; font-size: 18pt; margin-top: 5%; border: 1px solid black">
            <h1 style="text-align: center">Anuncios</h1>
            <div style="margin-top: 2%">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="918px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" ReadOnly="True" ShowHeader="False" SortExpression="Descripcion" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" BorderStyle="None" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" Wrap="True" />
                    <RowStyle BackColor="#F7F7DE" />
                </asp:DetailsView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EntityTypeName="" Select="new (Descripcion)" TableName="Anuncios">
                </asp:LinqDataSource>
            </div>
        </div>
    </div>
    <%--Visualiacion del avance academico--%>
    <div style="width: 100%">
        <div style="width: 80%; margin-top: 5%; z-index: 200; margin-left: 10%">
            <h1 style="color: #507CD1">Avance Academico</h1>
            <div style="margin-top: 2%">
                <asp:GridView ID="dgvAvanceNino" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </div>
    <div>
    </div>
    <div class="" style="margin-top: 10%">
        <div style="margin-left: 10%">
            <asp:Label ID="lbfecha" runat="server" Text="Label"></asp:Label>
        </div>
        <p style="text-align: center; font-size: 10pt">Proyecto Icbf ASP.net 2018 Todos los Derechos Reservados</p>

    </div>

</asp:Content>
