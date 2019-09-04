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
          //  GridView1.DataBind();
        }
        clConexion conexion = new clConexion();
        clProgramas po = new clProgramas();
        
        
        public void mtdMensaje()
        {
            if (GridView1.Rows.Count == 0)
            {
                mensaje.Visible = true;
            }
            else
            {
                mensaje.Visible = false;
            }
        }

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

            mtdMensaje();
            
        }

        public void mtdBuscUniver()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdBuscUniver();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

            mtdMensaje();
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

           mtdMensaje();
        }
        protected void btnBuscEspDocto_Click(object sender, EventArgs e)
        {
            mtdBuscEspDocto();
        }

        public void mtdPosgrado()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdPosgrado();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnPos_Click(object sender, EventArgs e)
        {
            mtdPosgrado();
        }

        public void mtdPregrado()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdPregrado();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnPre_Click(object sender, EventArgs e)
        {
            mtdPregrado();
        }

        public void mtdDistancia()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdDistancia();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnDista_Click(object sender, EventArgs e)
        {
            mtdDistancia();
        }

        public void mtdPresencial()

        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdPresencial();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnPresen_Click(object sender, EventArgs e)
        {
            mtdPresencial();
        }

        public void mtdVirtual()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdVirtual();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnVirtu_Click(object sender, EventArgs e)
        {
            mtdVirtual();
        }

        public void mtdAreaAgronomia()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaAgronomia();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaAgronomia_Click(object sender, EventArgs e)
        {
            mtdAreaAgronomia();
        }

        public void mtdAreaBellas()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaBellas();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaBellas_Click(object sender, EventArgs e)
        {
            mtdAreaBellas();
        }

        public void mtdAreaCienEdu()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaCienEdu();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaCienEdu_Click(object sender, EventArgs e)
        {
            mtdAreaCienEdu();
        }

        public void mtdAreaCienSal()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaCienSal();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaCienSal_Click(object sender, EventArgs e)
        {
            mtdAreaCienSal();
        }

        public void mtdAreaCienSoci()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaCienSoci();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaCienSoci_Click(object sender, EventArgs e)
        {
            mtdAreaCienSoci();
        }

        public void mtdAreaCienEco()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaCienEco();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaCienEco_Click(object sender, EventArgs e)
        {
            mtdAreaCienEco();
        }

        public void mtdAreaCienHuma()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaCienHuma();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaCienHuma_Click(object sender, EventArgs e)
        {
            mtdAreaCienHuma();
        }

        public void mtdAreaIngeni()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaIngeni();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaIngeni_Click(object sender, EventArgs e)
        {
            mtdAreaIngeni();
        }

        public void mtdAreaMate()
        {
            DataSet dsProgrma = new DataSet();
            dsProgrma = po.mtdAreaMate();
            GridView1.DataSource = dsProgrma.Tables[0];
            GridView1.DataBind();

            mtdMensaje();
        }

        protected void btnAreaMate_Click(object sender, EventArgs e)
        {
            mtdAreaMate();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pos = GridView1.SelectedIndex;
            string valor = GridView1.Rows[pos].Cells[1].Text;
            Response.Write("<script>window.open ('InfoProgramas.aspx?id=" + valor + "','_blank');</script>");
        }


    }
}