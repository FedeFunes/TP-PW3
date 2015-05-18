using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Business
{
    public class Business
    {
        private DataTable dt;
        private DataRow dr;

        public DataTable CargaActivos()
        {
            dt = new DataTable();
            dt.Columns.Add("Equipo");
            dt.Columns.Add("Torneo");

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo1";
            dr["Torneo"] = "Torneo1";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo3";
            dr["Torneo"] = "Torneo3";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo5";
            dr["Torneo"] = "Torneo5";
            dt.Rows.Add(dr);

            return dt;
        }

        public DataTable CargaInactivos()
        {
            dt = new DataTable();
            dt.Columns.Add("Equipo");
            dt.Columns.Add("Torneo");

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo2";
            dr["Torneo"] = "Torneo2";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo4";
            dr["Torneo"] = "Torneo4";
            dt.Rows.Add(dr);

            return dt;
        }

        public DataTable CargaTodos()
        {
            dt = new DataTable();
            dt.Columns.Add("Equipo");
            dt.Columns.Add("Torneo");

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo1";
            dr["Torneo"] = "Torneo1";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo2";
            dr["Torneo"] = "Torneo2";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo3";
            dr["Torneo"] = "Torneo3";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo4";
            dr["Torneo"] = "Torneo4";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Equipo"] = "Equipo5";
            dr["Torneo"] = "Torneo5";
            dt.Rows.Add(dr);

            return dt;
        }
    }
}
