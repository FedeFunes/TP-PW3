﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class AdminEquipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idString = txtIdEquipo.Text;
            int idInt = Convert.ToInt32(idString);

            PW3_20152C_TP2_TorneosEntities1 contexto = new PW3_20152C_TP2_TorneosEntities1();

            var jugadores = contexto.Jugador.Where(jugador => jugador.IdEquipo == idInt);

            foreach (var jugador in jugadores)
                contexto.Jugador.Remove(jugador);

            contexto.SaveChanges();

            
            var equipo = contexto.Equipo.Where(eq => eq.Id == idInt).Single();

            contexto.Equipo.Remove(equipo);	// Para el Framework 4.1 o superior sino DeleteObject(do);

            contexto.SaveChanges();
        }
    }
}