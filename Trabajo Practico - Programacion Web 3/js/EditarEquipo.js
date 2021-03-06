﻿$(document).ready(function () {
    $("#ctl00_ctl00_PageContainer_PageContainer_btnEditarEquipo").click(function () {

        var txtNombreEquipo = $("#ctl00_ctl00_PageContainer_PageContainer_txtNombreEquipo").val();
        var ddlTorneos = $("#ctl00_ctl00_PageContainer_PageContainer_ddlTorneos").val();
        var txtMontoAbonado = $("#ctl00_ctl00_PageContainer_PageContainer_txtMontoAbonado").val();

        var errorNombreEquipo = $("#errorNombreEquipo");
        var errorDdlTorneos = $("#errorDdlTorneos");
        var errorMontoAbonado = $("#errorMontoAbonado");
 

        if (txtNombreEquipo == null || txtNombreEquipo.length == 0 || !/^([A-Z]|[a-z]|\s)+$/.test(txtNombreEquipo)) {
            errorNombreEquipo.css("display", "inline");
            return false;
        } else {
            errorNombreEquipo.css("display", "none");
        }

        if ( ddlTorneos.val == 0 ) {
            errorDdlTorneos.css("display", "inline");
            return false;
        } else {
            errorDdlTorneos.css("display", "none");
        }

        if (txtMontoAbonado == null || txtMontoAbonado.length == 0 || !/^\d+$/.test(txtMontoAbonado)) {
            errorMontoAbonado.css("display", "inline");
            return false;
        } else {
            errorMontoAbonado.css("display", "none");
        }
    });
});