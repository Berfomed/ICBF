<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="EditarEliminarJardin.aspx.cs" Inherits="VistaIcbfWeb.Administrador.EditarEliminarJardin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <nav class="navbar navbar-expand-lg ">
        <a class="navbar-brand" href="">
            <img src="../Img/Logo.jpg" style="width: 18%; height: 18%" alt="Alternate Text" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div style="margin-left: 20%" class="collapse navbar-collapse" id="navbarSupportedContent">

            <form class="form-inline my-2 my-lg-0">
                <a href="Index.aspx" class="text-dark">Regresar</a>
            </form>
        </div>
    </nav>
    <div>
        <div>
            <h3 style="text-align: center">Gestion de Datos</h3>
        </div>
    </div>
    <div style="width: 100%; margin-top: 4%">
        <div style="width: 70%; margin-left: 35%">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="409px" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdJardin" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="IdJardin" HeaderText="IdJardin" ReadOnly="True" SortExpression="IdJardin" InsertVisible="False" />
                    <asp:BoundField DataField="NombreJardin" HeaderText="NombreJardin" SortExpression="NombreJardin" />
                    <asp:BoundField DataField="DireccionJardin" HeaderText="DireccionJardin" SortExpression="DireccionJardin" />
                    <asp:BoundField DataField="EstadoJardin" HeaderText="EstadoJardin" SortExpression="EstadoJardin" />
                    <asp:BoundField DataField="IdMadreComunitaria" HeaderText="IdMadreComunitaria" SortExpression="IdMadreComunitaria" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Registro_Jardin">
            </asp:LinqDataSource>
        </div>
        <div class="card-group" style="margin-top: 2%; margin-left: 5%; margin-right: 5%">
            <div class="card border-secondary mb-3">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Gestion de Datos</h5>
                    <p class="card-body text-secondary">En esta sección, como usuario administrador, tienes la opción de editar y eliminar los registros de los niños.</p>
                </div>
            </div>
            <div class="card border-info mb-3" style="margin-left: 5%; border-left: 1px solid white">
                <div class="card-body">
                    <h5 class="card-title text-info">Actualizar Informacion</h5>
                    <p class="card-text text-info">
                        Si deseas actualizar o corregir la información, solo debes presionar la opción editar 
                                                    en la parte inferior del cuadro de detalles, luego de realizar los cambios, presionas 
                                                    la opción actualizar, De igual forma, en la parte inferior encontraras la paginación 
                                                    para buscar los datos del niño.
                    </p>
                </div>
            </div>
            <div class="card border-warning mb-3" style="margin-left: 5%; border-left: 1px solid white">
                <div class="card-body text-warning">
                    <h5 class="card-title">Eliminar Informacion</h5>
                    <p class="card-body text-warning">
                        Si deseas eliminar el registro de un Menor, solo debes seleccionar la opción eliminar
                                                      la cual se encuentra en la parte inferior del cuadro de detalles, una vez seleccionada 
                                                        esta opción, solo debes aceptar y el registro se eliminará de la base de datos.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="" style="margin-top: 10%">
        <div style="margin-left: 10%">
            <asp:Label ID="lbfecha" runat="server" Text="Label"></asp:Label>
        </div>
        <p style="text-align: center; font-size: 10pt">Proyecto Icbf ASP.net 2018 Todos los Derechos Reservados</p>
    </div>
</asp:Content>
