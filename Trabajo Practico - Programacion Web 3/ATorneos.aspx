<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="ATorneos.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreTorneo">Nombre</label>
                    <asp:TextBox ID="txtNombreTorneo" runat="server" CssClass="form-control" placeholder="Ingrese nombre del torneo"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaNombreTorneo1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío:" Text="(*)" ControlToValidate="txtNombreTorneo" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreTorneo2" runat="server" ErrorMessage="Campo Nombre: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z])+" ControlToValidate="txtNombreTorneo" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorNombreTorneo">Error: Campo vacio o el nombre no son solo letras.</span> 
                </div>
               
                <div class="checkbox">
                    <asp:CheckBox ID="cbActivoTorneo" runat="server" Checked="true" Text="Activo" />
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />
                
                <asp:Button ID="btnCrearTorneo" runat="server" Text="Crear Torneo" CssClass="btn btn-default"/> 
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
