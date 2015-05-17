<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="AEquipos.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreEquipo">Nombre</label>
                    <asp:TextBox ID="txtNombreEquipo" runat="server" CssClass="form-control" placeholder="Ingrese nombre del equipo"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaNombreEquipo1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío." Text="(*)" ControlToValidate="txtNombreEquipo" Display="Dynamic" EnableClientScript="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreEquipo2" runat="server" ErrorMessage="Campo Nombre: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z])+" ControlToValidate="txtNombreEquipo" Display="Dynamic" EnableClientScript="true"></asp:RegularExpressionValidator>
                </div>
                         
                <div class="form-group">
                    <asp:DropDownList ID="ddlTorneos" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RegularExpressionValidator ID="ValidaTorneos" runat="server" ErrorMessage="Campo Torneo: Elija un torneo." Text="(*)" ValidationExpression="^Torneo\d$" ControlToValidate="ddlTorneos" Display="Dynamic" EnableClientScript="true"></asp:RegularExpressionValidator>
                </div>


                <div class="form-group">
                    <label for="txtMontoAbonado">Monto Abonado</label>
                    <asp:TextBox ID="txtMontoAbonado" runat="server" CssClass="form-control" placeholder="Ingrese monto"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaMontoAbonado1" runat="server" ErrorMessage="Campo Monto: No puede estar vacío." Text="(*)" ControlToValidate="txtMontoAbonado" Display="Dynamic" EnableClientScript="true"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaMontoAbonado2" runat="server" ErrorMessage="Campo Monto: Solo números." Text="(*)" ValidationExpression="\d" ControlToValidate="txtMontoAbonado" Display="Dynamic" EnableClientScript="true"></asp:RegularExpressionValidator>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />
                <asp:Button ID="btnCrear" runat="server" Text="Crear Equipo" CssClass="btn btn-default" />    
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
