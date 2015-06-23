<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListadoEquipos.ascx.cs" Inherits="Trabajo_Practico___Programacion_Web_3.ListadoEquipos" %>
<div class="contenido">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <ul id="tbListadoEquipos">
                
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="checkbox">
                <input type="checkbox" id="cbInactivos" name="inactivos" value="inactivos" />
                <label for="cbInactivos">Listar inactivos también</label>
            </div>
            <button id="btnListar" class="btn btn-default" onclick="ObtenerEquipos();">Listar</button>
        </div>
    </div>
    <!-- /.row -->
</div>

