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
    public partial class Muro : System.Web.UI.Page
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
    }
}