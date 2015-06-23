$(document).ready(function () {
    $("#PageContainer_PageContainer_btnEditar").click(function () {

        var txtIdEquipo = $("#PageContainer_PageContainer_txtIdEquipo").val();
        var errorIdEquipo = $("#errorIdEquipo");

        if (txtIdEquipo == null || txtIdEquipo.length == 0 || !/^\d+$/.test(txtIdEquipo)) {
            errorIdEquipo.css("display", "inline");
            return false;
        } else {
            errorIdEquipo.css("display", "none");
        }
    });

    $("#btnEliminarModal").click(function () {

        var txtIdEquipo = $("#PageContainer_PageContainer_txtIdEquipo").val();
        var errorIdEquipo = $("#errorIdEquipo");


        if (txtIdEquipo == null || txtIdEquipo.length == 0 || !/^\d+$/.test(txtIdEquipo)) {
            errorIdEquipo.css("display", "inline");
            return false;
        } else {
            errorIdEquipo.css("display", "none");
        }
    });
});