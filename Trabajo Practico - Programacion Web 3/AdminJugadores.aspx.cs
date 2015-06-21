using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class AdminJugadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idString = txtIdJugador.Text;
            int idInt = Convert.ToInt32(idString);

            PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();

            var jugador = contexto.Jugador.Where(j => j.Id == idInt).Single();

            contexto.Jugador.Remove(jugador); // Para el Framework 4.1 o superior sino DeleteObject(do);

            contexto.SaveChanges();
        }
    }
}