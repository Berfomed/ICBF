<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VistaIcbfWeb.MadreComunitaria.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" />
            </form>
        </div>
    </nav>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalAsistencia" data-whatever="@mdo">Registrar Asistencia</button>


    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div>
        <h1>


            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Registro_Jardin">
            </asp:LinqDataSource>


        </h1>


    </div>

    <%--modal Registro Asistencia--%>
    <div class="modal fade" id="ModalAsistencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalAsistencia">Registro de asistencia</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Nombre del Niño"></asp:Label>
                        <asp:DropDownList ID="ddlNombreNiño" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <asp:DropDownList ID="ddlEstadoNiño" runat="server">
                            <asp:ListItem>Saludable</asp:ListItem>
                            <asp:ListItem>Enfermo</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnRegistroAsistencia" runat="server" Text="Registrar Asistencia" OnClick="btnRegistroAsistencia_Click" />

                    </div>
                </div>
        </div>
    </div>
    </div>
    <%--Fin Modal Registro Asistencia--%>
</asp:Content>
