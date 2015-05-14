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
                </div>
                <div class="checkbox">
                    <asp:CheckBox ID="cbActivoTorneo" runat="server" Checked="true" Text="Activo" />
                </div>
                <asp:Button ID="btnCrear" runat="server" Text="Crear Torneo" CssClass="btn btn-default"/> 
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
