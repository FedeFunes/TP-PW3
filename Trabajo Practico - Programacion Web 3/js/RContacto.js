$(document).ready(function () {
    $("#PageContainer_PageContainer_btnRegistrarContacto").click(function () {

        var txtNombreCompleto = $("#PageContainer_PageContainer_txtNombreCompleto").val();
        var txtEmail = $("#PageContainer_PageContainer_txtEmail").val();
        var txtComentario = $("#PageContainer_PageContainer_txtComentario").val();

        var errorNombreCompleto = $("#errorNombreCompleto");
        var errorEmail = $("#errorEmail");
        var errorComentario = $("#errorComentario");

        if (txtNombreCompleto == null || txtNombreCompleto.length == 0 || !/^([a-z]|[A-Z])+\s([a-z]|[A-Z])+$/.test(txtNombreCompleto)) {
            errorNombreCompleto.css("display", "inline");
            return false;
        } else {
            errorNombreCompleto.css("display", "none");
        }

        if (!/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(txtEmail)) {
            errorEmail.css("display", "inline");
            return false;
        } else {
            errorEmail.css("display", "none");
        }

        if (txtComentario == null || txtComentario.length == 0 || /^\s+$/.test(apellido)) {
            errorComentario.css("display", "inline");
            return false;
        } else {
            errorComentario.css("display", "none");
        }

    });
});