$(document).ready(function () {
    $("#ctl00_ctl00_PageContainer_PageContainer_btnEditar").click(function () {

        var txtIdTorneo = $("#ctl00_ctl00_PageContainer_PageContainer_txtIdTorneo").val();
        var errorIdTorneo = $("#errorIdTorneo");

        if (txtIdTorneo == null || txtIdTorneo.length == 0 || !/^\d{1,5}$/.test(txtIdTorneo)) {
            errorIdTorneo.css("display", "inline");
            return false;
        } else {
            errorIdTorneo.css("display", "none");
        }
    });
    
    $("#btnEliminarModal").click(function () {

        var txtIdTorneo = $("#ctl00_ctl00_PageContainer_PageContainer_txtIdTorneo").val();
        var errorIdTorneo = $("#errorIdTorneo");

        if (txtIdTorneo == null || txtIdTorneo.length == 0 || !/^\d{1,5}$/.test(txtIdTorneo)) {
            errorIdTorneo.css("display", "inline");
            return false;
        } else {
            errorIdTorneo.css("display", "none");
        }
    });
});