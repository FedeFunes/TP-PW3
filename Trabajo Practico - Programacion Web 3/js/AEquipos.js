$(document).ready(function () {
    $("#PageContainer_PageContainer_btnCrearEquipo").click(function () {

        var txtNombreEquipo = $("#PageContainer_PageContainer_txtNombreEquipo").val();
        var ddlTorneos = $("#PageContainer_PageContainer_ddlTorneos").val();
        var txtMontoAbonado = $("#PageContainer_PageContainer_txtMontoAbonado").val();

        var errorNombreEquipo = $("#errorNombreEquipo");
        var errorDdlTorneos = $("#errorDdlTorneos");
        var errorMontoAbonado = $("#errorMontoAbonado");

        if (txtNombreEquipo == null || txtNombreEquipo.length == 0 || !/^([A-Z]|[a-z])+$/.test(txtNombreEquipo)) {
            errorNombreEquipo.css("display", "inline");
            return false;
        } else {
            errorNombreEquipo.css("display", "none");
        }

        if ( ddlTorneos == ("Elija torneo") ) {
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