using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class ListadoEquipos : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Business.Business bs = new Business.Business();
            CargaGrilla(bs.CargaTodos());
        }

        protected void lnkActivos_Click(object sender, EventArgs e)
        {
            Business.Business bs = new Business.Business();
            CargaGrilla(bs.CargaActivos());
            lnkActivos.Visible = false;
            lnkInactivos.Visible = true;
            lnkTodos.Visible = true;
        }

        protected void lnkInactivos_Click(object sender, EventArgs e)
        {
            Business.Business bs = new Business.Business();
            CargaGrilla(bs.CargaInactivos());
            lnkInactivos.Visible = false;
            lnkActivos.Visible = true;
            lnkTodos.Visible = true;
        }

        protected void lnkTodos_Click(object sender, EventArgs e)
        {
            Business.Business bs = new Business.Business();
            CargaGrilla(bs.CargaTodos());
            lnkTodos.Visible = false;
            lnkActivos.Visible = true;
            lnkInactivos.Visible = true;
        }

        private void CargaGrilla(DataTable dt)
        {
            gvListadoEquipos.DataSource = dt;
            gvListadoEquipos.DataBind();
        }
    }
}