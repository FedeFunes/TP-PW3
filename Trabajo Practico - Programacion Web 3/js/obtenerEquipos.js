$(document).ready(function () {
    ObtenerEquipos(false);

    $("#btnListar").click(function(){
        var inactivos = $("#cbInactivos").is(':checked');

        ObtenerEquipos(inactivos);
    });
});

function ObtenerEquipos(inactivos) {
    $.support.cors = true;
    $.ajax({
        type: "POST",
        url: "/servicios/Servicio.asmx/ObtenerEquipos",
        data: "{incluirDeTorneosInactivos: " + inactivos + "}",
        //data: "incluirDeTorneosInactivos=" + inactivos,
        async: true, //por defecto es true
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            vaciarListado();

            if (response.d.length > 0) {
                cargarListado(response.d);
            }
        },
        error: function (xhr, status, error) {//cualquier error del lado servidor sale por este evento
            debugger;
            alert(xhr.responseText);
        }
    });
}

function vaciarListado() {
    alert("Entra en vaciarListado");
    $('#tbListadoEquipos').find('li').remove().end();
}

function cargarListado(listado) {
    alert("Entra en cargarListado");

    $.each(listado, function (index, obj) {
        $('#tbListadoEquipos').append(
            $('<li></li>').html(obj.Nombre)
        );
    });
}