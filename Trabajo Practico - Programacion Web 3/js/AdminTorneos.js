$(document).ready(function () {
    $("#PageContainer_PageContainer_btnEditar").click(function () {

        var txtIdTorneo = $("#PageContainer_PageContainer_txtIdTorneo").val();
        var errorIdTorneo = $("#errorIdTorneo");


        if (txtIdTorneo == null || txtIdTorneo.length == 0 || !/^\d+$/.test(txtIdTorneo)) {
            errorIdTorneo.css("display", "inline");
            return false;
        } else {
            errorIdTorneo.css("display", "none");
        }
    });
    
    $("#btnEliminarModal").click(function () {

        var txtIdTorneo = $("#PageContainer_PageContainer_txtIdTorneo").val();
        var errorIdTorneo = $("#errorIdTorneo");


        if (txtIdTorneo == null || txtIdTorneo.length == 0 || !/^\d+$/.test(txtIdTorneo)) {
            errorIdTorneo.css("display", "inline");
            return false;
        } else {
            errorIdTorneo.css("display", "none");
            $("#myModal").modal();
        }
    });
});