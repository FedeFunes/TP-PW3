<%@ Page Title="" Language="C#" MasterPageFile="~/Resumen.master" AutoEventWireup="true" CodeBehind="RContacto.aspx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.RContacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageContainer" runat="server">
    <div class="contenido">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group">
                    <label for="txtNombreCompleto">Nombre completo</label>
                    <asp:TextBox ID="txtNombreCompleto" runat="server" CssClass="form-control" placeholder="Ingrese nombre completo" ValidationGroup="requerido"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingrese email" ValidationGroup="requerido"></asp:TextBox>
                    <%--<asp:RegularExpressionValidator ID="ValidaEmail" runat="server" ErrorMessage="Email no válido" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>--%>
                </div>
                <div class="form-group">
                    <label for="txtComentario">Comentario</label>
                    <asp:TextBox ID="txtComentario" runat="server" CssClass="form-control" placeholder="Ingrese comentario" TextMode="MultiLine" ValidationGroup="requerido"></asp:TextBox>
                </div>

                <%--<asp:RequiredFieldValidator ID="Requeridos" runat="server" ErrorMessage="Nombre requerido" ValidationGroup="requerido" EnableClientScript="true" ControlToValidate="txtNombreCompleto" ></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="Texto" runat="server" ErrorMessage="Todos los campos son textos" ValidationGroup="requerido" Type="String" ControlToValidate="txtNombreCompleto" ></asp:RangeValidator>--%>

                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar usuario" CssClass="btn btn-default"/>
            </div>
        </div>
        <!-- /.row -->
    </div>
</asp:Content>
