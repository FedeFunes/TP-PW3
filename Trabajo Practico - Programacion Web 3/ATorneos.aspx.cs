using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearTorneo_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                Torneo t = new Torneo();
                t.Nombre = txtNombreTorneo.Text;
                t.Activo = cbActivoTorneo.Checked;
                contexto.Torneo.Add(t);
                contexto.SaveChanges();    
                Response.Redirect("ATorneos.aspx");            
            }

        }
    }
}