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
            string id = txtIdTorneo.Text;
            Response.Redirect("EliminarTorneo.aspx?id=" + id);
        }
    }
}