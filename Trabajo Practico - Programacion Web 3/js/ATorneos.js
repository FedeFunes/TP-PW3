$(document).ready(function () {
    $("#PageContainer_PageContainer_btnCrearTorneo").click(function () {
       
        var txtNombreTorneo = $("#PageContainer_PageContainer_txtNombreTorneo").val();
        var errorNombreTorneo = $("#errorNombreTorneo");


        if (txtNombreTorneo == null || txtNombreTorneo.length == 0 || !/^([A-Z]|[a-z]|\s)+$/.test(txtNombreTorneo)) {
            errorNombreTorneo.css("display", "inline");
            return false;
        } else {
            errorNombreTorneo.css("display", "none");
        }
    });
});