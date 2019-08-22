using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAWIES.Datos;

namespace WebAppAWIES
{
    public partial class Programas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        clConexion conexion = new clConexion();
        clProgramas po = new clProgramas();
        
        


        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            mtdBuscar();
        }
        public void mtdBuscar()

        {
            string programa = txbBuscar.Text;
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscar(programa);
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();
            

            if (GridView1.Rows.Count == 0)
            { 
                mensaje.Visible = true;
            }
            else
            {
                mensaje.Visible = false;
            }
        }

        public void mtdBuscUniver()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscUniver();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }

        protected void btnBuscUniver_Click(object sender, EventArgs e)
        {
            mtdBuscUniver();
        }
        public void mtdBuscTecno()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscTecno();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscTecno_Click(object sender, EventArgs e)
        {
            mtdBuscTecno();
        }
        public void mtdBuscPostd()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscPostd();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscPostd_Click(object sender, EventArgs e)
        {
            mtdBuscPostd();
        }
        public void mtdBuscMaes()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscMaest();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscMaest_Click(object sender, EventArgs e)
        {
            mtdBuscMaes();
        }
        public void mtdBuscTecProfe()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscTecProfe();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscTecProfe_Click(object sender, EventArgs e)
        {
            mtdBuscTecProfe();
        }
        public void mtdBuscEspUni()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscEspUni();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscEspUni_Click(object sender, EventArgs e)
        {
            mtdBuscEspUni();
        }
        public void mtdBuscEspTecno()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscEspTecno();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscEspTecno_Click(object sender, EventArgs e)
        {
            mtdBuscEspTecno();
        }
        public void mtdBuscEspProfe()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscEspProfe();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscEspProfe_Click(object sender, EventArgs e)
        {
            mtdBuscEspProfe();
        }
        public void mtdBuscEspMedic()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscEspMedic();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscEspMedic_Click(object sender, EventArgs e)
        {
            mtdBuscEspMedic();
        }
        public void mtdBuscEspDocto()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscEspDocto();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            if (GridView1.Columns.Count == 0)
            {
                mensaje.Visible = true;
            }
        }
        protected void btnBuscEspDocto_Click(object sender, EventArgs e)
        {
            mtdBuscEspDocto();
        }

     
    }
}