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
            DataSet dsInstitutos = new DataSet();
            dsInstitutos = Universidad.mtdListaInformacionLoad();
            GridView1.DataSource = dsInstitutos.Tables[0];
            GridView1.DataBind();
        }
        clUniversidades Universidad = new clUniversidades();

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
        public void mtdBuscar()
        {
           
            string institutos = txtBuscar.Text;
            DataSet dsInstitutos = new DataSet();
            dsInstitutos = Universidad.mtdBuscarInstitucuines(institutos);
            GridView1.DataSource = dsInstitutos.Tables[0];
            GridView1.DataBind();
            mtdMensaje();
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
            mtdMensaje();
        }

        protected void btnBuscTecn_Click(object sender, EventArgs e)
        {
           
            DataSet dsTecnico = new DataSet();
            dsTecnico = Universidad.mtdBusquedaTecnica();
            GridView1.DataSource = dsTecnico.Tables[0];
            GridView1.DataBind();
            mtdMensaje();
        }

        protected void btnBuscTecnolo_Click(object sender, EventArgs e)
        {
            
            DataSet dsTecnologo = new DataSet();
            dsTecnologo = Universidad.mtdBusquedaTecnologica();
            GridView1.DataSource = dsTecnologo.Tables[0];
            GridView1.DataBind();
            mtdMensaje();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            DataSet dsTecnologo = new DataSet();
            dsTecnologo = Universidad.mtdBusquedaMunicipio(int.Parse(DropDownList2.SelectedValue.ToString()));
            GridView1.DataSource = dsTecnologo.Tables[0];
            GridView1.DataBind();
            mtdMensaje();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int pos = GridView1.SelectedIndex;
            string valor = GridView1.Rows[pos].Cells[1].Text;
 
           Response.Write("<script>window.open ('InfoInstituciones.aspx?id=" + valor + "','_blank');</script>");
          
        }

       
        }
}