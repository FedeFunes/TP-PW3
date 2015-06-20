using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_Practico___Programacion_Web_3
{
    public partial class RContacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarContacto_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                PW3_20152C_TP2_TorneosEntities contexto = new PW3_20152C_TP2_TorneosEntities();
                Contacto c = new Contacto();
                c.NombreCompleto = txtNombreCompleto.Text;
                c.Email = txtEmail.Text;
                c.Comentario = txtComentario.Text;
                contexto.Contacto.Add(c);
                contexto.SaveChanges();
                Response.Redirect("contacto-resultado.aspx");
            }

        }
    }
}