<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VistaIcbfWeb.Administrador.Index" %>

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
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalAcudiente" data-whatever="@mdo">Registrar Acudiente</button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Registrar Niño</button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalMadre" data-whatever="@mdo">Registrar Madre Comunitaria</button>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalJardin" data-whatever="@mdo">Registrar Jardin</button>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div>
        <h1>
            

            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Registro_Jardin">
            </asp:LinqDataSource>
  
            
        </h1>

        
    </div>
    









    <%--modal Registro Niños--%>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Registro NIUP"></asp:Label>
                        <asp:TextBox ID="txtRegistro" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Nombre Completo"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                        <asp:Calendar ID="clFechaNacimiento" runat="server"></asp:Calendar>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Tipo de Sangre"></asp:Label>
                        <asp:DropDownList ID="ddlTpoSangre" runat="server">
                            <asp:ListItem>O-</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Ciudad de Nacimiento"></asp:Label>
                        <asp:TextBox ID="txtCiudad" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Acudiente"></asp:Label>
                        <asp:DropDownList ID="ddlDocumentoAcudiente" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Numero Telefonico"></asp:Label>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="EPS"></asp:Label>
                        <asp:TextBox ID="txtEps" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label11" runat="server" Text="Jardin"></asp:Label>
                        <asp:DropDownList ID="ddlJardin" runat="server"></asp:DropDownList>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Registro Niños--%>

    <%--modal Registro Madre Comunitaria--%>
   <div class="modal fade" id="ModalMadre" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalMadreLabel">Registro de Madres Comunitarias</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label12" runat="server" Text="Cedula"></asp:Label>
                        <asp:TextBox ID="txtCedulaMadre" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label13" runat="server" Text="Nombre Acudiente"></asp:Label>
                        <asp:TextBox ID="txtNombreMadre" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label14" runat="server" Text="Telefono"></asp:Label>
                        <asp:Calendar ID="clFechaMadre" runat="server"></asp:Calendar>
                       
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label15" runat="server" Text="Telefono"></asp:Label>
                        <asp:TextBox ID="txtTelefonoMadre" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label16" runat="server" Text="Celular"></asp:Label>
                        <asp:TextBox ID="txtCelularMadre" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label17" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="txtDireccionMadre" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label18" runat="server" Text="Correo"></asp:Label>
                        <asp:TextBox ID="txtCorreoMadre" runat="server"></asp:TextBox>
                    </div>
                   <%-- <div class="form-group">
                        <asp:Label ID="Label30" runat="server" Text="Clave"></asp:Label>
                        <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                    </div>--%>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnRegistrarMadre" runat="server" Text="Registrar Madre Comunitaria" OnClick="btnRegistrarMadre_Click" />
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Registro Madre Comunitaria--%>

    <%--modal Registro Acudientes--%>
    <div class="modal fade" id="ModalAcudiente" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalModalAcudiente">Registro de Acudientes</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label22" runat="server" Text="Cedula"></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label23" runat="server" Text="Nombre Acudiente"></asp:Label>
                        <asp:TextBox ID="txtNombreAcu" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label25" runat="server" Text="Telefono"></asp:Label>
                        <asp:Calendar ID="ClFechaNacimientoAcu" runat="server"></asp:Calendar>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label24" runat="server" Text="Telefono"></asp:Label>
                        <asp:TextBox ID="txtTelefonoAcu" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label27" runat="server" Text="Celular"></asp:Label>
                        <asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label28" runat="server" Text="Direccion"></asp:Label>
                        <asp:TextBox ID="txtDireccionAcu" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label29" runat="server" Text="Correo"></asp:Label>
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </div>
                   <%-- <div class="form-group">
                        <asp:Label ID="Label30" runat="server" Text="Clave"></asp:Label>
                        <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                    </div>--%>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnAcudiente" runat="server" Text="Registrar Acudiente" OnClick="btnAcudiente_Click" />
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Registro Acudientes--%>


    
    <%--modal Registro Jardines--%>
    <div class="modal fade" id="ModalJardin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalModalJardin">New message</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label19" runat="server" Text="Nombre del Jardin"></asp:Label>
                        <asp:TextBox ID="txtNombreJardin" runat="server"></asp:TextBox>
                    </div>
                   <div class="form-group">
                        <asp:Label ID="Label30" runat="server" Text="Direccion del Jardin"></asp:Label>
                        <asp:TextBox ID="txtDireccionJardin" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label26" runat="server" Text="Estado del Jardin"></asp:Label>
                        <asp:DropDownList ID="ddlEstadoJardin" runat="server">
                            <asp:ListItem>Aprobado      </asp:ListItem>
                            <asp:ListItem>No Aprobado   </asp:ListItem>
                            <asp:ListItem>En Supervision</asp:ListItem>                         
                        </asp:DropDownList>
                    </div>                   
                    <div class="form-group">
                        <asp:Label ID="Label31" runat="server" Text="Asignado a Madre Comunitaria"></asp:Label>
                        <asp:DropDownList ID="ddlMadreComunitaria" runat="server"></asp:DropDownList>
                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnRegistroJardin" runat="server" Text="Registrar Jardin" OnClick="btnRegistroJardin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Registro Jardines--%>


</asp:Content>






