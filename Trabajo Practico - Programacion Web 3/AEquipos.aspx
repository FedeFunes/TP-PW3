﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.master" AutoEventWireup="true" CodeBehind="AEquipos.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.WebForm2" %>
<asp:Content ID="contenidoHead" ContentPlaceHolderID="head" runat="server">
    <script src="js/AEquipos.js"></script> 
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
<!-- Page Content -->
<div class="container">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreEquipo">Nombre</label>
                    <asp:TextBox ID="txtNombreEquipo" runat="server" CssClass="form-control" placeholder="Ingrese nombre del equipo"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="ValidaNombreEquipo1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío." Text="(*)" ControlToValidate="txtNombreEquipo" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreEquipo2" runat="server" ErrorMessage="Campo Nombre: Solo letras." Text="(*)" ValidationExpression="([A-Z]|[a-z]|[0-9]|\s)+" ControlToValidate="txtNombreEquipo" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    
                    <span class="errorForm text-danger" id="errorNombreEquipo">Error: Campo vacio o inválido (deben ser solo letras).</span>
                </div>
                         
                <div class="form-group">
                    <asp:DropDownList ID="ddlTorneos" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="txtMontoAbonado">Monto Abonado</label>
                    <asp:TextBox ID="txtMontoAbonado" runat="server" CssClass="form-control" placeholder="Ingrese monto" MaxLength="4"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaMontoAbonado1" runat="server" ErrorMessage="Campo Monto: No puede estar vacío." Text="(*)" ControlToValidate="txtMontoAbonado" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaMontoAbonado2" runat="server" ErrorMessage="Campo Monto: Solo números." Text="(*)" ValidationExpression="\d+" ControlToValidate="txtMontoAbonado" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorMontoAbonado">Error: Campo vacio o inválido (deben ser solo números, hasta 4 caracteres).</span>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />
                
                <div class="form-group">
                    <asp:Label ID="lblOk" runat="server" Text="" Visible="false" CssClass="success text-success"></asp:Label>
                </div>
                
                <asp:Button ID="btnCrearEquipo" runat="server" Text="Crear Equipo" CssClass="btn btn-default" OnClick="btnCrearEquipo_Click" />    
            </div>
        </div>
        <!-- /.row -->
    </div>
</div>
<!-- /.container -->
</asp:Content>
