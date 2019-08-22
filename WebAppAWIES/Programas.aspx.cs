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
        }
    }
}