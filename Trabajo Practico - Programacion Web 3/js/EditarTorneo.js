$(document).ready(function () {
    $("#ctl00_ctl00_PageContainer_PageContainer_btnEditarTorneo").click(function () {
       
        var txtNombreTorneo = $("#ctl00_ctl00_PageContainer_PageContainer_txtNombreTorneo").val();
        var errorNombreTorneo = $("#errorNombreTorneo");


        if (txtNombreTorneo == null || txtNombreTorneo.length == 0 || !/^([A-Z]|[a-z]|\s)+$/.test(txtNombreTorneo)) {
            errorNombreTorneo.css("display", "inline");
            return false;
        } else {
            errorNombreTorneo.css("display", "none");
        }
    });
});