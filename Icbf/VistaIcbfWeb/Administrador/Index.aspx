<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina_Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="VistaIcbfWeb.Administrador.Index" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <nav class="navbar navbar-expand-lg ">
        <a class="navbar-brand">
            <img src="../Img/Logo.jpg" style="width: 18%; height: 18%" alt="Alternate Text" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="nav-link dropdown-toggle text-dark" style="margin-left: -50%" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Opciones
        </a>
        <div class="dropdown-menu border-dark" aria-labelledby="navbarDropdown" style="margin-left: 10%; background-color: transparent">
            <a class="dropdown-item" href="EditarEliminarNiño.aspx">Editar o Eliminar Registro de Niños</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="EditarPersona.aspx">Editar o Eliminar Registro de Acudiente</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="EditarEliminarMadre.aspx">Editar o Eliminar Registro de Madre Comunitaria</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Editar o Eliminar Jardin</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Editar Comunicados</a>
            <div class="dropdown-divider"></div>
        </div>
        <div style="margin-left: 70%" class="collapse navbar-collapse" id="navbarSupportedContent">
            <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesion" OnClick="btnCerrarSesion_Click" CssClass="btn btn-outline-dark" BorderStyle="None" />
        </div>
    </nav>
    <%--Cuadro de Botones--%>
    <div style="font-size: 30pt; text-align: center">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
    <div style="width: 100%; margin-top: 5%">
        <div style="width: 80%; margin-left: 20%">
            <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#ModalAcudiente" data-whatever="@mdo">Registrar Acudiente</button>
            <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Registrar Niño</button>
            <button type="button" class="btn btn-outline-warning" data-toggle="modal" data-target="#ModalMadre" data-whatever="@mdo">Registrar Madre Comunitaria</button>
            <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#ModalJardin" data-whatever="@mdo">Registrar Jardin</button>
            <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalAnuncios" data-whatever="@mdo">Publicar Comunicado</button>
        </div>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Persona">
        </asp:LinqDataSource>
    </div>

    <div style="width: 100%; margin-top: 5%">
        <div style="width: 80%; margin-left: 25%">
            <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#ModalNiñosEnfermos" data-whatever="@mdo">Listado de Niños Enfermos</button>
            <button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#ModalInasistencia" data-whatever="@mdo">Listado de Inasistencia</button>
            <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#ModalNoAprobados" data-whatever="@mdo">Listado de Jardines No Aprobados</button>
        </div>
    </div>

    <div style="width: 100%; margin-top: 3%; align-content: center">
        <div style="width: 90%; margin-left: 5%">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IdAnuncio" DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="IdAnuncio" HeaderText="IdAnuncio" InsertVisible="False" ReadOnly="True" SortExpression="IdAnuncio" Visible="False" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Comunicado" SortExpression="Descripcion">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fechaAnuncio" HeaderText="Fecha de Creacion" SortExpression="fechaAnuncio">
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" Visible="False">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Datos.ORMicbfDataDataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Anuncios">
            </asp:LinqDataSource>
        </div>
    </div>
    <%--modal Registro Niños--%>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Registrar Niño</h5>
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
                        <asp:DropDownList ID="ddlAño" runat="server">
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlMes" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlDia" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
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
                        <asp:Label ID="Label14" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                        <asp:DropDownList ID="ddlAñoMadre" runat="server">
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlMesMadre" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlDiaMadre" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>

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
                        <asp:DropDownList ID="ddlAñoAcu" runat="server">
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlMesAcu" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlDiaAcu" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
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
                    <h5 class="modal-title" id="ModalModalJardin">Crear Comunicado</h5>
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
    <%--modal Publicar Anuncio--%>
    <div class="modal fade" id="ModalAnuncios" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalAnuncios">Crear Comunicado</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label20" runat="server" Text="Digite El Comunicado"></asp:Label>
                        <asp:TextBox ID="txtdescripcion" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label33" runat="server" Text="Estado del Anuncio"></asp:Label>
                        <asp:DropDownList ID="ddlEstado" runat="server">
                            <asp:ListItem>Elija una Opcion</asp:ListItem>
                            <asp:ListItem>Vigente</asp:ListItem>
                            <asp:ListItem>Caduco</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="btnComunicado" runat="server" Text="Publicar" OnClick="btnComunicado_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Publicar Anuncio--%>

    <%--modal Niños Enfermos--%>
    <div class="modal fade" id="ModalNiñosEnfermos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleNiñosEnfermos">Reporte de Niños Enfermos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div style="margin-top: 2%">
                        <div>
                            <asp:GridView ID="dgNinosEnfermos" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Niños Enfermos--%>

    <%--modal Inasistencia--%>
    <div class="modal fade" id="ModalInasistencia" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 style="text-align: center" class="modal-title" id="exampleModalInasistencia">Inasistencias de la Ultima Semana</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div style="margin-top: 2%">
                        <div>
                            <asp:GridView ID="dgInasistencia" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Inasistencia--%>

    <%--modal Jardines No Aprobados--%>
    <div class="modal fade" id="ModalNoAprobados" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="width: 120%">
                <div class="modal-header">
                    <h5 style="text-align: center" class="modal-title" id="exampleModalNoAprobados">Jardines No Aprobados</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div style="margin-top: 2%">
                        <div>
                            <asp:GridView ID="dgNoAprobados" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#33276A" />
                            </asp:GridView>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Fin Modal Jardines No Aprobados--%>

    <div class="card bg-light mb-3" style="width: 20rem; margin-left: 5%; margin-top: 2%">
        <div class="card-header">
            <asp:Label ID="Label21" runat="server" Text="Seleccione Un Jardin, Para saber Cuantos Niños se encuentran registrados" CssClass="text-info"></asp:Label>
        </div>
        <div class="card-body">
             <asp:DropDownList ID="ddlNiñosJardin" runat="server" CssClass="text-info"></asp:DropDownList>
            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" CssClass="btn-outline-success; align-self-center"  />
        </div>
        <asp:Label ID="lbResultadoConsulta" runat="server" Text=""></asp:Label>
    </div>
    <div class="" style="margin-top: 5%">
        <div style="margin-left: 10%">
            <asp:Label ID="lbfecha" runat="server" Text="Label"></asp:Label>
        </div>
        <p style="text-align: center; font-size: 10pt">Proyecto Icbf ASP.net 2018 Todos los Derechos Reservados</p>
    </div>
</asp:Content>









