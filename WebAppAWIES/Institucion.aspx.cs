using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAWIES.Datos;

namespace WebAppAWIES
{
    public partial class Institucion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        clUniversidades Universidad = new clUniversidades();
        public void mtdBuscar()
        {
            string institutos = txtBuscar.Text;
            DataSet dsInstitutos = new DataSet();
            dsInstitutos = Universidad.mtdBuscarInstitucuines(institutos);
            GridView1.DataSource = dsInstitutos.Tables[0];
            GridView1.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            mtdBuscar();
        }

        protected void btnBuscUniver_Click(object sender, EventArgs e)
        {
            DataSet dsUniversidad = new DataSet();
            dsUniversidad = Universidad.mtdBusquedaUniversidades();
            GridView1.DataSource = dsUniversidad.Tables[0];
            GridView1.DataBind();
        }

        protected void btnBuscTecn_Click(object sender, EventArgs e)
        {
            DataSet dsTecnico = new DataSet();
            dsTecnico = Universidad.mtdBusquedaTecnica();
            GridView1.DataSource = dsTecnico.Tables[0];
            GridView1.DataBind();
        }

        protected void btnBuscTecnolo_Click(object sender, EventArgs e)
        {
            DataSet dsTecnologo = new DataSet();
            dsTecnologo = Universidad.mtdBusquedaTecnologica();
            GridView1.DataSource = dsTecnologo.Tables[0];
            GridView1.DataBind();

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet dsTecnologo = new DataSet();
            dsTecnologo = Universidad.mtdBusquedaMunicipio(int.Parse(DropDownList2.SelectedValue.ToString()));
            GridView1.DataSource = dsTecnologo.Tables[0];
            GridView1.DataBind();

        }
    }
}