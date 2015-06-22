using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class EditarEquipo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int idEquipo = int.Parse(Request.QueryString["id"]);

                    PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                    Equipo eq = contexto.Equipo.Where(c => c.Id == idEquipo).First();

                    CargaTorneos();

                    txtNombreEquipo.Text = eq.Nombre;
                    ddlTorneos.SelectedValue = eq.IdTorneo.ToString();
                    txtMontoAbonado.Text = eq.MontoAbonado.ToString();
                }
                catch (Exception)
                {
                    Response.Redirect("AdminEquipos.aspx");
                    throw;
                }

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

        protected void btnEditarEquipo_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = txtNombreEquipo.Text;
                int monto = int.Parse(txtMontoAbonado.Text);
                int idTorneo = int.Parse(ddlTorneos.SelectedValue);
                int idEquipo = int.Parse(Request.QueryString["id"]);

                PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                Equipo eq = contexto.Equipo.Where(c => c.Id == idEquipo).First();

                eq.Nombre = nombre;
                if (idTorneo == 0) { eq.IdTorneo = null; }
                else { eq.IdTorneo = idTorneo; }
                eq.MontoAbonado = monto;

                contexto.Entry(eq).State = System.Data.EntityState.Modified;
                contexto.SaveChanges();

                lblExitoso.Visible = true;
            }
            catch (Exception ex)
            {
                lblError.Visible = true;
                lblError.Text += ex.Message;
                throw;
            }
        }
    }
}