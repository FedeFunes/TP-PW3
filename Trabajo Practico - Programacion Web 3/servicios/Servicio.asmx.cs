using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Trabajo_Practico___Programacion_Web_3
{
    /// <summary>
    /// Descripción breve de Servicio
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class Servicio : System.Web.Services.WebService
    {
        [WebMethod]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
        public List<Equipo> ObtenerEquipos(bool incluirDeTorneosInactivos)
        {
            List<Equipo> ListEquipos = new List<Equipo>();
            List<Equipo> listadoDeEquipos = new List<Equipo>();
            
            PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();

            //incluirDeTorneosInactivos = true; // a modo prueba
            
            if (incluirDeTorneosInactivos)
	        {
                listadoDeEquipos = contexto.Equipo.ToList<Equipo>();

                foreach (Equipo equipo in listadoDeEquipos)
                {
                    Equipo equipoNuevo = new Equipo();

                    equipoNuevo.Nombre = equipo.Nombre;
                    equipoNuevo.MontoAbonado = equipo.MontoAbonado;
                    equipoNuevo.IdTorneo = equipo.IdTorneo;

                    ListEquipos.Add(equipoNuevo);
                }
	        }
            else
            {
                listadoDeEquipos = contexto.Equipo.Where(c => c.Torneo.Activo == true).ToList<Equipo>();

                foreach (Equipo equipo in listadoDeEquipos)
                {
                    Equipo equipoNuevo = new Equipo();

                    equipoNuevo.Nombre = equipo.Nombre;
                    equipoNuevo.MontoAbonado = equipo.MontoAbonado;
                    equipoNuevo.IdTorneo = equipo.IdTorneo;

                    ListEquipos.Add(equipoNuevo);
                }
            }

            return ListEquipos;
        }
    }
}
