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
                </div>
                         
                <div class="form-group">
                    <asp:DropDownList ID="ddlTorneos" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>


                <div class="form-group">
                    <label for="txtMontoAbonado">Monto Abonado</label>
                    <asp:TextBox ID="txtMontoAbonado" runat="server" CssClass="form-control" placeholder="Ingrese monto"></asp:TextBox>
                </div>

                <asp:Button ID="btnCrear" runat="server" Text="Crear Equipo" CssClass="btn btn-default" />    
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
