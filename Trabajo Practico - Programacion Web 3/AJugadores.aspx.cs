using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class AJugadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaEquipos();
            }
        }

        public void CargaEquipos()
        {
            ddlEquipos.Items.Add(new ListItem("Elija equipo"));
            ddlEquipos.Items.Add(new ListItem("Equipo1"));
            ddlEquipos.Items.Add(new ListItem("Equipo2"));
            ddlEquipos.Items.Add(new ListItem("Equipo3"));
            ddlEquipos.Items.Add(new ListItem("Equipo4"));
            ddlEquipos.Items.Add(new ListItem("Equipo5"));
        }
    }
}