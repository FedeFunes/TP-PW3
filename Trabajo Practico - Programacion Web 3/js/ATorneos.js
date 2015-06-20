$(document).ready(function () {
    $("#PageContainer_PageContainer_btnCrearTorneo").click(function () {
       
        var txtNombreTorneo = $("#PageContainer_PageContainer_txtNombreTorneo").val();

        var errorNombreTorneo = $("#errorNombreTorneo");

        var exp = "/^[A-Za-z]\s$/";

        if (txtNombreTorneo == null || txtNombreTorneo.length == 0 || !exp.test(txtNombreTorneo)) {
            errorNombreTorneo.css("display", "inline");
            return false;
        } else {
            errorNombreTorneo.css("display", "none");
        }
    });
});