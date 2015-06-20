using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class AdminTorneos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            string id = txtIdTorneo.Text;
            Response.Redirect("EditarTorneo.aspx?id=" + id);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idString = txtIdTorneo.Text;
            int idInt = Convert.ToInt32(idString);

            PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();

            var equipos = contexto.Equipo.Where(equipo => equipo.IdTorneo == idInt);

            foreach (var equipo in equipos)
                equipo.IdTorneo = equipo.IdTorneo = null;

            contexto.SaveChanges();

            var torneoAEliminar = contexto.Torneo.Where(torneo => torneo.Id == idInt).Single();

            contexto.Torneo.Remove(torneoAEliminar);	// Para el Framework 4.1 o superior sino DeleteObject(do);

            contexto.SaveChanges();
        }
    }
}