using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargaTorneos();
            }
        }

        public void CargaTorneos()
        {
            PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
            List<Torneo> l = new List<Torneo>();
            Torneo t = new Torneo();
            t.Id = 0;
            t.Nombre = "";
            l.Add(t);
            l.AddRange(contexto.Torneo.ToList());
            ddlTorneos.DataSource = l;
            ddlTorneos.DataValueField = "Id";
            ddlTorneos.DataTextField = "Nombre";
            ddlTorneos.DataBind();
        }

        protected void btnCrearEquipo_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                Equipo eq = new Equipo();
                eq.Nombre = txtNombreEquipo.Text;
                eq.MontoAbonado = int.Parse(txtMontoAbonado.Text);
                if (ddlTorneos.SelectedValue != "0") { eq.IdTorneo = int.Parse(ddlTorneos.SelectedValue); }
                contexto.Equipo.Add(eq);
                contexto.SaveChanges();
                Response.Redirect("AEquipos.aspx");                
            }

        }
    }
}