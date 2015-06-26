$(document).ready(function () {
    $("#ctl00_ctl00_PageContainer_PageContainer_btnEditar").click(function () {

        var txtIdJugador = $("#ctl00_ctl00_PageContainer_PageContainer_txtIdJugador").val();
        var errorIdJugador = $("#errorIdJugador");

        if (txtIdJugador == null || txtIdJugador.length == 0 || !/^\d{1,5}$/.test(txtIdJugador)) {
            errorIdJugador.css("display", "inline");
            return false;
        } else {
            errorIdJugador.css("display", "none");
        }
    });

    $("#btnEliminarModal").click(function () {

        var txtIdJugador = $("#ctl00_ctl00_PageContainer_PageContainer_txtIdJugador").val();
        var errorIdJugador = $("#errorIdJugador");

        if (txtIdJugador == null || txtIdJugador.length == 0 || !/^\d{1,5}$/.test(txtIdJugador)) {
            errorIdJugador.css("display", "inline");
            return false;
        } else {
            errorIdJugador.css("display", "none");
        }
    });
});