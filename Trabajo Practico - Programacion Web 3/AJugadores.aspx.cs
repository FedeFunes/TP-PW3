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
            PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
            ddlEquipos.DataSource = contexto.Equipo.ToList();
            ddlEquipos.DataValueField = "Id";
            ddlEquipos.DataTextField = "Nombre";
            ddlEquipos.DataBind();
        }

        protected void btnCrearJugador_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                Jugador j = new Jugador();
                j.Nombre = txtNombreJugador.Text;
                j.Apellido = txtApellidoJugador.Text;
                j.Edad = int.Parse(txtEdadJugador.Text);
                j.IdEquipo = int.Parse(ddlEquipos.SelectedValue);
                contexto.Jugador.Add(j);
                contexto.SaveChanges();
                lblOk.Visible = true;
                lblOk.Text = "El jugador '" + j.Nombre + " " + j.Apellido + "'" + " fue creado con éxito";
                txtNombreJugador.Text = string.Empty;
                txtApellidoJugador.Text = string.Empty;
                txtEdadJugador.Text = string.Empty;
            }
        }
    }
}