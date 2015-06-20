<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListadoEquipos.ascx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.ListadoEquipos" %>
<div class="contenido">
    <div class="row">
        <%--<div class="col-md-6 col-md-offset-3">--%>
            <ul id="tbListadoEquipos">
                
            </ul>
        <%--</div>--%>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="checkbox">
                <asp:CheckBox ID="cbInactivos" runat="server" Text="Listar inactivos también" />
            </div>
            <button id="btnListar" class="btn btn-default">Listar</button>
        </div>
    </div>
    <!-- /.row -->
</div>

