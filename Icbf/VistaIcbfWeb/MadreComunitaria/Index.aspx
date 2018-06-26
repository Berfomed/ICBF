<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VistaIcbfWeb.MadreComunitaria.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
        <nav class="navbar navbar-expand-lg ">
        <a class="navbar-brand">
            <img src="../Img/Logo.jpg" style="width: 25%; height: 25%" alt="Alternate Text" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div style="margin-left: 70%" class="collapse navbar-collapse" id="navbarSupportedContent">
                <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" CssClass="btn btn-outline-dark" BorderStyle="None" />         
        </div>
    </nav>
    <div style="margin-top:3%">
        <div>
            <h1 style="text-align:center">  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
        </div>
    </div>
     <div style="width: 100%; margin-top: 10%">
        <div style="width: 80%; margin-left: 20%">          
    <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#ModalAsistencia" data-whatever="@mdo">Registrar Asistencia</button>
    <button style="margin-left:40%" type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#ModalAvance" data-whatever="@mdo">Registrar Avance Academico</button>
        </div>
    </div>
    <div>
      <div style="stroke-width: 100%">
        <div style="margin-left: 15%; width: 68.2%; font-size: 18pt; margin-top: 5%">
            <h1 style="text-align: center">Anuncios</h1>
            <div style="margin-top: 2%">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="3" DataSourceID="LinqDataSource3" GridLines="Horizontal" Height="50px" Width="918px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataKeyNames="IdAnuncio">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <Fields>
                        <asp:BoundField DataField="IdAnuncio" HeaderText="IdAnuncio" ReadOnly="True" SortExpression="IdAnuncio" InsertVisible="False" Visible="False" />
                        <asp:BoundField DataField="Descripcion" ShowHeader="False" SortExpression="Descripcion" />
                        <asp:BoundField DataField="fechaAnuncio" HeaderText="fechaAnuncio" SortExpression="fechaAnuncio" Visible="False" />
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                    </Fields>
                    <FooterStyle BackColor="#B5C7DE" BorderStyle="None" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" Wrap="True" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                </asp:DetailsView>
                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EntityTypeName="" TableName="Anuncios">
                </asp:LinqDataSource>
             
            </div>
        </div>
    </div>
    </div>
    <div style="width:100%; margin-top:2%">
        <div style="margin-left:10%; width:80%">
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CodRegistro" DataSourceID="LinqDataSource4">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CodRegistro" HeaderText="CodRegistro" InsertVisible="False" ReadOnly="True" SortExpression="CodRegistro" Visible="False" />
                    <asp:BoundField DataField="idNinio" HeaderText="Código Niño" SortExpression="idNinio" />
                    <asp:BoundField DataField="AnioEscolar" HeaderText="Año Escolar" SortExpression="AnioEscolar" />
                    <asp:BoundField DataField="Nivel" HeaderText="Materia" SortExpression="Nivel" />
                    <asp:BoundField DataField="Notas" HeaderText="Notas" SortExpression="Notas" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Campo de Valoración" SortExpression="Descripcion" />
                    <asp:BoundField DataField="FechaEntregaNota" HeaderText="FechaEntregaNota" SortExpression="FechaEntregaNota" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource4" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Registro_Avance_Academico">
            </asp:LinqDataSource>
        </div>
    </div>

    <%--modal Registro Asistencia--%>
    <div class="modal fade" id="ModalAsistencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="width: 120%">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalAsistencia">Registro de asistencia</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="float: left; z-index: 10">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Nombre del Niño"></asp:Label>
                        <asp:DropDownList ID="ddlNombreNiño" runat="server"></asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Text="Estado"></asp:Label>

                        <asp:DropDownList ID="ddlEstadoNiño" runat="server">
                            <asp:ListItem>Asistió</asp:ListItem>
                            <asp:ListItem>Enfermo</asp:ListItem>
                            <asp:ListItem>No Asistió</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnRegistroAsistencia" runat="server" Text="Registrar Asistencia" OnClick="btnRegistroAsistencia_Click" />
                    </div>
                    <div class="modal-footer">

                        <asp:GridView ID="GridView1" Style="margin-left: -10%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idRegistro" DataSourceID="LinqDataSource1">
                            <Columns>
                                <asp:BoundField DataField="idRegistro" HeaderText="idRegistro" InsertVisible="False" ReadOnly="True" SortExpression="idRegistro" />
                                <asp:BoundField DataField="IdNinio" HeaderText="IdNinio" SortExpression="IdNinio" />
                                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                                <asp:BoundField DataField="DesEstadoNinio" HeaderText="DesEstadoNinio" SortExpression="DesEstadoNinio" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Registro_Asistencia" EnableInsert="True">
                    </asp:LinqDataSource>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Registro Asistencia--%>

    <%--modal Registro Avance--%>
    <div class="modal fade" id="ModalAvance" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="width: 160%">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalAvance">Registro de asistencia</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Nombre Niño"></asp:Label>
                        <asp:DropDownList ID="ddlNiñoAsistencia" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Año Escolar"></asp:Label>
                        <asp:DropDownList ID="ddlAño" runat="server">
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Area de Evaluacion"></asp:Label>
                        <asp:DropDownList ID="ddlArea" runat="server">
                            <asp:ListItem>Personal y Social</asp:ListItem>
                            <asp:ListItem>Ciencia y Ambiente</asp:ListItem>
                            <asp:ListItem>Matematica</asp:ListItem>
                            <asp:ListItem>Comunicacion</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Descripcion"></asp:Label>
                        <asp:DropDownList ID="ddlDescripcion" runat="server">
                            <asp:ListItem>Personal y social: Realiza movimientos en actividades dirigidas.</asp:ListItem>
                            <asp:ListItem>Personal y social: Señala partes del cuerpo.</asp:ListItem>
                            <asp:ListItem>Personal y social: Señala partes de la cabeza.</asp:ListItem>
                            <asp:ListItem>Personal y social: Se identifica como niño o niña.</asp:ListItem>
                            <asp:ListItem>Personal y social: Se lava las manos con agua y jabon.</asp:ListItem>
                            <asp:ListItem>Personal y social: Avisa para gacer uso del baño.</asp:ListItem>
                            <asp:ListItem>Personal y social: Participa de la limpieza del aula.</asp:ListItem>
                            <asp:ListItem>Personal y social: Participa de juegos colectivos.</asp:ListItem>
                            <asp:ListItem>Ciencia y Ambiente: Nombra los animales de su comunidad.</asp:ListItem>
                            <asp:ListItem>Ciencia y Ambiente: Nombra algunas plantas de su comunidad.</asp:ListItem>
                            <asp:ListItem>Matematica: Identifica Figuras geometricas. </asp:ListItem>
                            <asp:ListItem>Matematica: Relaciona objetos del aula por semejanza.</asp:ListItem>
                            <asp:ListItem>Matematica: Diferencia objetos mas grandes mas pequeños.</asp:ListItem>
                            <asp:ListItem>Matematica: Utiliza cuantificadores Mucho, poco, ninguno.</asp:ListItem>
                            <asp:ListItem>Matematica: Señala Objetos, Arriba, Abajo, dentro Fuera</asp:ListItem>
                            <asp:ListItem>Comunicacion: Se expresa con claridad en forma expontanea.</asp:ListItem>
                            <asp:ListItem>Comunicacion: se comunica con otras personas de forma expontanea.</asp:ListItem>
                            <asp:ListItem>Comunicacion: describe una figura.</asp:ListItem>
                            <asp:ListItem>Comunicacion: Interpreta canciones acompañado con gestos y movimientos.</asp:ListItem>
                            <asp:ListItem>Comunicacion: imita personajes conocidos de la comunidad.</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Nota"></asp:Label>
                        <asp:DropDownList ID="ddlNota" runat="server">
                            <asp:ListItem>Superior</asp:ListItem>
                            <asp:ListItem>Excelente</asp:ListItem>
                            <asp:ListItem>Bueno</asp:ListItem>
                            <asp:ListItem>Aceptable</asp:ListItem>
                            <asp:ListItem>Insuficiente</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnRegistrarAvance" class="btn btn-outline-primary" runat="server" Text="Registrar Avance" OnClick="btnRegistrarAvance_Click" />
                    </div>
                    <div class="modal-footer">
                        <%--Grid View, despliega el listado de las asistencias--%>
                        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CodRegistro" DataSourceID="LinqDataSource2">
                            <Columns>
                                <asp:BoundField DataField="CodRegistro" HeaderText="CodRegistro" InsertVisible="False" ReadOnly="True" SortExpression="CodRegistro" />
                                <asp:BoundField DataField="idNinio" HeaderText="idNinio" SortExpression="idNinio" />
                                <asp:BoundField DataField="AnioEscolar" HeaderText="AnioEscolar" SortExpression="AnioEscolar" />
                                <asp:BoundField DataField="Nivel" HeaderText="Nivel" SortExpression="Nivel" />
                                <asp:BoundField DataField="Notas" HeaderText="Notas" SortExpression="Notas" />
                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                <asp:BoundField DataField="FechaEntregaNota" HeaderText="FechaEntregaNota" SortExpression="FechaEntregaNota" />
                            </Columns>
                        </asp:GridView>
                        <%--Configuracion de Linq, adecual los metodos de editar y eliminar--%>
                        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Registro_Avance_Academico">
                        </asp:LinqDataSource>                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Registro Asistencia--%>
    <div class="" style="margin-top: 20%">
        <div style="margin-left: 10%">
            <asp:Label ID="lbfecha" runat="server" Text="Label"></asp:Label>
        </div>
        <p style="text-align: center; font-size: 10pt">Proyecto Icbf ASP.net 2018 Todos los Derechos Reservados</p>
    </div>
</asp:Content>
