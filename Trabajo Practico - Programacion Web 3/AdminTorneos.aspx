<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="AdminTorneos.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.AdminTorneos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="form-group">
                    <asp:TextBox ID="txtIdTorneo" runat="server" placeholder="Ingrese ID de torneo" CssClass="form-control"></asp:TextBox>
                    <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-default" OnClick="btnEditar_Click" />
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-default" OnClick="btnEliminar_Click" />
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
