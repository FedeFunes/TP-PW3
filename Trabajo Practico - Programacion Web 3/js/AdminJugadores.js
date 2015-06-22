$(document).ready(function () {
    $("#PageContainer_PageContainer_btnEditar").click(function () {

        var txtIdJugador = $("#PageContainer_PageContainer_txtIdJugador").val();
        var errorIdJugador = $("#errorIdJugador");


        if (txtIdJugador == null || txtIdJugador.length == 0 || !/^\d+$/.test(txtIdJugador)) {
            errorIdJugador.css("display", "inline");
            return false;
        } else {
            errorIdJugador.css("display", "none");
        }
    });

    $("#btnEliminarModal").click(function () {

        var txtIdJugador = $("#PageContainer_PageContainer_txtIdJugador").val();
        var errorIdJugador = $("#errorIdJugador");


        if (txtIdJugador== null || txtIdJugador.length == 0 || !/^\d+$/.test(txtIdJugador)) {
            errorIdJugador.css("display", "inline");
            return false;
        } else {
            errorIdJugador.css("display", "none");
        }
    });
});