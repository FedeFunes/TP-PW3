$(document).ready(function () {
    $("#PageContainer_PageContainer_btnCrearJugador").click(function () {

        var txtNombreJugador = $("#PageContainer_PageContainer_txtNombreJugador").val();
        var txtApellidoJugador = $("#PageContainer_PageContainer_txtApellidoJugador").val();
        var txtEdadJugador = $("#PageContainer_PageContainer_txtEdadJugador").val();
        var ddlEquipos = $("#PageContainer_PageContainer_ddlEquipos").val();

        var errorNombreJugador = $("#errorNombreJugador");
        var errorApellidoJugador = $("#errorApellidoJugador");
        var errorEdadJugador = $("#errorEdadJugador");
        var errorDdlEquipos = $("#errorDdlEquipos");

        if (txtNombreJugador == null || txtNombreJugador.length == 0 || !/^([A-Z]|[a-z])+$/.test(txtNombreJugador)) {
            errorNombreJugador.css("display", "inline");
            return false;
        } else {
            errorNombreJugador.css("display", "none");
        }

        if (txtApellidoJugador == null || txtApellidoJugador.length == 0 || !/^([A-Z]|[a-z])+$/.test(txtApellidoJugador)) {
            errorApellidoJugador.css("display", "inline");
            return false;
        } else {
            errorApellidoJugador.css("display", "none");
        }

        if (txtEdadJugador == null || txtEdadJugador.length == 0 || !/^\d+$/.test(txtEdadJugador)) {
            errorEdadJugador.css("display", "inline");
            return false;
        } else {
            errorEdadJugador.css("display", "none");
        }

        if (ddlEquipos == ("Elija equipo")) {
            errorDdlEquipos.css("display", "inline");
            return false;
        } else {
            errorDdlEquipos.css("display", "none");
        }

    });
});