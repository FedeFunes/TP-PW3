<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="EditarEquipo.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.EditarEquipo" %>
<asp:Content ID="contenidoHead" ContentPlaceHolderID="head" runat="server">
    <script src="js/EditarEquipo.js"></script> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
    <!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreEquipo">Cambiar Nombre</label>
                    <asp:TextBox ID="txtNombreEquipo" runat="server" CssClass="form-control" placeholder="Ingrese nombre del equipo"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaNombreEquipo1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío." Text="(*)" ControlToValidate="txtNombreEquipo" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreEquipo2" runat="server" ErrorMessage="Campo Nombre: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z]|\s)+" ControlToValidate="txtNombreEquipo" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorNombreEquipo">Error: Campo vacio o inválido (deben ser solo letras).</span>
                </div>
                         
                <div class="form-group">
                    <label for="ddlTorneos">Cambiar Torneo</label>
                    <asp:DropDownList ID="ddlTorneos" runat="server" CssClass="form-control"></asp:DropDownList>
                    <%--<asp:RegularExpressionValidator ID="ValidaTorneos" runat="server" ErrorMessage="Campo Torneo: Elija un torneo." Text="(*)" ValidationExpression="^Torneo\d$" ControlToValidate="ddlTorneos" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorDdlTorneos">Error: Elija un torneo.</span>--%>
                </div>

                <div class="form-group">
                    <label for="txtMontoAbonado">Cambiar Monto Abonado</label>
                    <asp:TextBox ID="txtMontoAbonado" runat="server" CssClass="form-control" placeholder="Ingrese monto"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaMontoAbonado1" runat="server" ErrorMessage="Campo Monto: No puede estar vacío." Text="(*)" ControlToValidate="txtMontoAbonado" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaMontoAbonado2" runat="server" ErrorMessage="Campo Monto: Solo números." Text="(*)" ValidationExpression="\d+" ControlToValidate="txtMontoAbonado" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorMontoAbonado">Error: Campo vacio o inválido (deben ser solo números).</span>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblExitoso" runat="server" Text="Cambios realizados con éxito" class="success text-success" Visible="false" EnableViewState="false"></asp:Label>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />
                
                <asp:Button ID="btnEditarEquipo" runat="server" Text="Editar Equipo" CssClass="btn btn-default" OnClick="btnEditarEquipo_Click" />    
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>