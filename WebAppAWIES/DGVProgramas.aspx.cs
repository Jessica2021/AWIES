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
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




        }
        protected void Page_Init(object sender, EventArgs e)
        {
            clProgramas objProgramas = new clProgramas();
            Global global = new Global();


            string a = Application["Id"].ToString();
            try
            {
                DataSet dsDepartamento = new DataSet();

                dsDepartamento = objProgramas.mtdListarProgramas(a);
                gvProgramas.DataSource = dsDepartamento;


                gvProgramas.DataBind();
            }
            catch (Exception)
            {

            }
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }




        protected void gvProgramas_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        public static string x;

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.open ('EditarPrograma.aspx?id=" + x + "','_blank');</script>");
        }

        protected void btnEditar0_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.open ('VerInfoProgramas.aspx?id=" + x + "','_blank');</script>");
        }

        protected void gvProgramas_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pos = gvProgramas.SelectedIndex;

            x = gvProgramas.Rows[pos].Cells[1].Text;
            
        }
    }
}