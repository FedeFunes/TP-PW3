$(document).ready(function () {
    $("#ctl00_ctl00_PageContainer_PageContainer_btnEditar").click(function () {

        var txtIdEquipo = $("#ctl00_ctl00_PageContainer_PageContainer_txtIdEquipo").val();
        var errorIdEquipo = $("#errorIdEquipo");

        if (txtIdEquipo == null || txtIdEquipo.length == 0 || !/^\d{1,5}$/.test(txtIdEquipo)) {
            errorIdEquipo.css("display", "inline");
            return false;
        } else {
            errorIdEquipo.css("display", "none");
        }
    });

    $("#btnEliminarModal").click(function () {

        var txtIdEquipo = $("#ctl00_ctl00_PageContainer_PageContainer_txtIdEquipo").val();
        var errorIdEquipo = $("#errorIdEquipo");

        if (txtIdEquipo == null || txtIdEquipo.length == 0 || !/^\d{1,5}$/.test(txtIdEquipo)) {
            errorIdEquipo.css("display", "inline");
            return false;
        } else {
            errorIdEquipo.css("display", "none");
        }
    });
});