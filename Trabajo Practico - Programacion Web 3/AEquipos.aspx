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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El campo Nombre no puede estar vacío" Text="(*)" ControlToValidate="txtNombreEquipo"></asp:RequiredFieldValidator>
                </div>
                         
                <div class="form-group">
                    <asp:DropDownList ID="ddlTorneos" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El campo Nombre no puede estar vacío" Text="(*)" ControlToValidate="ddlTorneos"></asp:RequiredFieldValidator>
                </div>


                <div class="form-group">
                    <label for="txtMontoAbonado">Monto Abonado</label>
                    <asp:TextBox ID="txtMontoAbonado" runat="server" CssClass="form-control" placeholder="Ingrese monto"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo Monto no puede estar vacío" Text="(*)" ControlToValidate="txtMontoAbonado"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Campo Monto: solo numeros y max 5" Text="(*)" ValidationExpression="\d{5}" ControlToValidate="txtMontoAbonado"></asp:RegularExpressionValidator>
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
