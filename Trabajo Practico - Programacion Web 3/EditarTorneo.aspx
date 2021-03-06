﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="EditarTorneo.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.EditarTorneo" %>
<asp:Content ID="contenidoHead" ContentPlaceHolderID="head" runat="server">
    <script src="js/EditarTorneo.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
    <!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreTorneo">Cambiar Nombre</label>
                    <asp:TextBox ID="txtNombreTorneo" runat="server" CssClass="form-control" placeholder="Ingrese nombre del torneo"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaNombreTorneo1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío:" Text="(*)" ControlToValidate="txtNombreTorneo" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreTorneo2" runat="server" ErrorMessage="Campo Nombre: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z]|\s)+" ControlToValidate="txtNombreTorneo" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorNombreTorneo">Error: Campo vacio o inválido (deben ser solo letras).</span> 
                </div>
               
                <div class="checkbox">
                    <asp:CheckBox ID="cbActivoTorneo" runat="server" Text="Activo" />
                </div>

                <div class="form-group">
                    <asp:Label ID="lblExitoso" runat="server" Text="Cambios realizados con éxito" class="success text-success" Visible="false" EnableViewState="false"></asp:Label>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />
                
                <asp:Button ID="btnEditarTorneo" runat="server" Text="Editar Torneo" CssClass="btn btn-default" OnClick="btnEditarTorneo_Click"/> 
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>

