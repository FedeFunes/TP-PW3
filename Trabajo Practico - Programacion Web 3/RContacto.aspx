<%@ Page Title="" Language="C#" MasterPageFile="~/Resumen.master" AutoEventWireup="true" CodeBehind="RContacto.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.RContacto" %>
<asp:Content ID="contenidoHead" ContentPlaceHolderID="head" runat="server">
    <!-- <script src="js/Rcontacto.js"></script> -->
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreCompleto">Nombre completo</label>
                    <asp:TextBox ID="txtNombreCompleto" runat="server" CssClass="form-control" placeholder="Ingrese nombre completo" ValidationGroup="requerido"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaNombreCompleto1" runat="server" ErrorMessage="Campo Nombre: No puede estar vacío." Text="(*)" ControlToValidate="txtNombreCompleto" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombreEquipo2" runat="server" ErrorMessage="Campo Nombre: No son 2 nombres o no hay solo letras." Text="(*)" ValidationExpression="^([a-z]|[A-Z])+\s([a-z]|[A-Z])+$" ControlToValidate="txtNombreCompleto" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorNombreCompleto">Error: Campo vacio o no son 2 nombres o no hay solo letras.</span>
                </div>
                
                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingrese email" ValidationGroup="requerido"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaEmail1" runat="server" ErrorMessage="Campo Email: No puede estar vacío." Text="(*)" ControlToValidate="txtEmail" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaEmail2" runat="server" ErrorMessage="Campo Email: Email no valido." Text="(*)" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ControlToValidate="txtEmail" Display="Dynamic" EnableClientScript="false"></asp:RegularExpressionValidator>
                    <span class="errorForm text-danger" id="errorEmail">Error: Campo vacio o el formato del email es inconrrecto.</span> 
                </div>
               
                 <div class="form-group">
                    <label for="txtComentario">Comentario</label>
                    <asp:TextBox ID="txtComentario" runat="server" CssClass="form-control" placeholder="Ingrese comentario" TextMode="MultiLine" ValidationGroup="requerido"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValidaComentario1" runat="server" ErrorMessage="Campo Comentario: No puede estar vacío." Text="(*)" ControlToValidate="txtComentario" Display="Dynamic" EnableClientScript="false"></asp:RequiredFieldValidator>
                    <span class="errorForm text-danger" id="errorComentario">Error: Campo vacio.</span>
                </div>
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Errores en formulario:" />

                <asp:Button ID="btnRegistrarContacto" runat="server" Text="Registrar usuario" CssClass="btn btn-default"/>
            </div>
        </div>
        <!-- /.row -->
    </div>
</asp:Content>
