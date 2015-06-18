<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListadoEquipos.ascx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.ListadoEquipos" %>
<div class="contenido">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <table id="tbListadoEquipos" class="table table-bordered">
                <%--<tr>
                    <td></td>
                </tr>--%>
            </table>
            <%--<asp:GridView ID="gvListadoEquipos" runat="server" CssClass="table table-bordered"></asp:GridView>--%>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="checkbox">
                <asp:CheckBox ID="cbInactivos" runat="server" Text="Listar inactivos también" />
            </div>
            <button id="btnListar" class="btn btn-default">Listar</button>
            <%--<asp:LinkButton ID="lnkActivos" runat="server" OnClick="lnkActivos_Click" CssClass="col-md-6">Ver equipos activos >></asp:LinkButton>
            <asp:LinkButton ID="lnkTodos" runat="server" Visible="false" CssClass="col-md-6" OnClick="lnkTodos_Click">Ver todos los equipos >></asp:LinkButton>
            <asp:LinkButton ID="lnkInactivos" runat="server" CssClass="col-md-6" OnClick="lnkInactivos_Click">Ver equipos inactivos >></asp:LinkButton>--%>
        </div>
    </div>
    <!-- /.row -->
</div>

