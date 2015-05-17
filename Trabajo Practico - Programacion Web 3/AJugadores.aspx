<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="AJugadores.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.AJugadores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreJugador">Nombre</label>
                    <asp:TextBox ID="txtNombreJugador" runat="server" CssClass="form-control" placeholder="Ingrese nombre del jugador"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtApellidoJugador">Apellido</label>
                    <asp:TextBox ID="txtApellidoJugador" runat="server" CssClass="form-control" placeholder="Ingrese apellido del jugador"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtEdadJugador">Edad</label>
                    <asp:TextBox ID="txtEdadJugador" runat="server" CssClass="form-control" placeholder="Ingrese edad del jugador"></asp:TextBox>
                </div>
                         
                <div class="form-group">
                    <asp:DropDownList ID="ddlEquipos" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

                <asp:Button ID="btnCrear" runat="server" Text="Crear Jugador" CssClass="btn btn-default" />     
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
