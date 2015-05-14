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
            ddlTorneos.Items.Add(new ListItem("Elija torneo"));
            ddlTorneos.Items.Add(new ListItem("Torneo1"));
            ddlTorneos.Items.Add(new ListItem("Torneo2"));
            ddlTorneos.Items.Add(new ListItem("Torneo3"));
            ddlTorneos.Items.Add(new ListItem("Torneo4"));
            ddlTorneos.Items.Add(new ListItem("Torneo5"));
        }
    }
}