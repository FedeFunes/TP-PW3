$(document).ready(function(){
    $("#btnListar").click(function(){
        var inactivos = $("#cbInactivos").is(':checked');
        ObtenerEquipos(inactivos);
    });
});

function ObtenerEquipos(inactivos) {
    $.ajax({
        type: "POST",
        url: "/servicios/servicio.asmx/ObtenerEquipos",
        data: "{incluirDeTorneosInactivos: " + inactivos + "}",
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
            alert(xhr.responseText + "aaaaaaaaaa");
        }
    });

    function vaciarListado() {
        $('#tbListadoEquipos').find('tr').remove().end();
    }

    function cargarListado(listado) {

        $.each(listado, function (index, obj) {
            $('#tbListadoEquipos').append(
                            $('<tr><td></td></tr>').html(obj.Nombre)
                        );
        });
    }
}