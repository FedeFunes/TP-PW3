<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="EditarJugador.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.EditarJugador" %>
<asp:Content ID="contenidoHead" ContentPlaceHolderID="head" runat="server">
    <script src="js/EditarJugador.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreJugador">Nombre</label>
                    <asp:TextBox ID="txtNombreJugador" runat="server" CssClass="form-control" placeholder="Ingrese nombre del jugador"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaNombreJugador1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío." Text="(*)" ControlToValidate="txtNombreJugador" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreJugador2" runat="server" ErrorMessage="Campo Nombre: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z]|\s)+" ControlToValidate="txtNombreJugador" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorNombreJugador">Error: Campo vacio o inválido (deben ser solo letras).</span>
                </div>

                <div class="form-group">
                    <label for="txtApellidoJugador">Apellido</label>
                    <asp:TextBox ID="txtApellidoJugador" runat="server" CssClass="form-control" placeholder="Ingrese apellido del jugador"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaApellidoJugador1" runat="server" ErrorMessage="Campo Apellido: No puede estar vacío." Text="(*)" ControlToValidate="txtApellidoJugador" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaApellidoJugador2" runat="server" ErrorMessage="Campo Apellido: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z]|\s)+" ControlToValidate="txtApellidoJugador" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorApellidoJugador">Error: Campo vacio o inválido (deben ser solo letras).</span>
                </div>

                <div class="form-group">
                    <label for="txtEdadJugador">Edad</label>
                    <asp:TextBox ID="txtEdadJugador" runat="server" CssClass="form-control" placeholder="Ingrese edad del jugador"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaEdadJugador1" runat="server" ErrorMessage="Campo Edad: No puede estar vacío." Text="(*)" ControlToValidate="txtEdadJugador" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaEdadJugador2" runat="server" ErrorMessage="Campo Edad: Solo numeros." Text="(*)" ValidationExpression="\d+" ControlToValidate="txtEdadJugador" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorEdadJugador">Error: Campo vacio o inválido (deben ser solo números).</span>
                </div>
                         
                <div class="form-group">
                    <asp:DropDownList ID="ddlEquipos" runat="server" CssClass="form-control"></asp:DropDownList>
                    <%--<asp:RegularExpressionValidator ID="ValidaEquipos1" runat="server" ErrorMessage="Elija un Equipo." Text="(*)" ValidationExpression="^Equipo\d$" ControlToValidate="ddlEquipos" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>--%>
                    <span class="errorForm text-danger" id="errorDdlEquipos">Error: Elija un equipo.</span>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />
                
                <asp:Button ID="btnEditarJugador" runat="server" Text="Editar Jugador" CssClass="btn btn-default" />     
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>

