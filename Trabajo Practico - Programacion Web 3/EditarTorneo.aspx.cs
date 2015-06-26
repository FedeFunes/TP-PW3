using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class EditarTorneo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int idTorneo = int.Parse(Request.QueryString["id"]);

                    PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                    Torneo t = contexto.Torneo.Where(c => c.Id == idTorneo).First();

                    txtNombreTorneo.Text = t.Nombre;
                    cbActivoTorneo.Checked = t.Activo;  
                }
                catch (Exception)
                {
                    Response.Redirect("Error.aspx");
                    throw;
                }
            }
        }

        protected void btnEditarTorneo_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    string nombre = txtNombreTorneo.Text;
                    bool activo = cbActivoTorneo.Checked;
                    int idTorneo = int.Parse(Request.QueryString["id"]);

                    PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                    Torneo t = contexto.Torneo.Where(c => c.Id == idTorneo).First();

                    t.Nombre = nombre;
                    t.Activo = activo;

                    contexto.Entry(t).State = System.Data.EntityState.Modified;
                    contexto.SaveChanges();

                    lblExitoso.Visible = true;              
                }
                else
                {
                    lblExitoso.Visible = false;  
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
                //throw;
            }

        }
    }
}