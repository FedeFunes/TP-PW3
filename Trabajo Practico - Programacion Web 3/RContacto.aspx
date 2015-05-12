<%@ Page Title="" Language="C#" MasterPageFile="~/Resumen.master" AutoEventWireup="true" CodeBehind="RContacto.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.RContacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreCompleto">Nombre completo</label>
                    <asp:TextBox ID="txtNombreCompleto" runat="server" CssClass="form-control" placeholder="Ingrese nombre completo"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingrese email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtComentario">Comentario</label>
                    <asp:TextBox ID="txtComentario" runat="server" CssClass="form-control" placeholder="Ingrese comentario" TextMode="MultiLine"></asp:TextBox>
                </div>
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar usuario" CssClass="btn btn-default"/>
            </div>
        </div>
        <!-- /.row -->
    </div>
</asp:Content>
