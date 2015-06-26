using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class EditarJugador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    int idJugador = int.Parse(Request.QueryString["id"]);

                    PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                    Jugador j = contexto.Jugador.Where(c => c.Id == idJugador).First();

                    CargaEquipos();

                    txtNombreJugador.Text = j.Nombre;
                    txtApellidoJugador.Text = j.Apellido;
                    txtEdadJugador.Text = j.Edad.ToString();
                    ddlEquipos.SelectedValue = j.IdEquipo.ToString();
                }
                catch (Exception)
                {
                    Response.Redirect("Error.aspx");
                    throw;
                }

            }
        }

        public void CargaEquipos()
        {
            PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
            ddlEquipos.DataSource = contexto.Equipo.ToList();
            ddlEquipos.DataValueField = "Id";
            ddlEquipos.DataTextField = "Nombre";
            ddlEquipos.DataBind();
        }

        protected void btnEditarJugador_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    string nombre = txtNombreJugador.Text;
                    string apellido = txtApellidoJugador.Text;
                    int edad = int.Parse(txtEdadJugador.Text);
                    int idEquipo = int.Parse(ddlEquipos.SelectedValue);
                    int idJugador = int.Parse(Request.QueryString["id"]);

                    PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                    Jugador j = contexto.Jugador.Where(c => c.Id == idJugador).First();

                    j.Nombre = nombre;
                    j.Apellido = apellido;
                    j.Edad = edad;
                    j.IdEquipo = idEquipo;

                    contexto.Entry(j).State = System.Data.EntityState.Modified;
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