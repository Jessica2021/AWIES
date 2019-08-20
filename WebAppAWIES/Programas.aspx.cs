using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAWIES
{
    public partial class Programas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string programa = txbBuscar.Text;
            SqlDataSource1.SelectCommand = "select * from Programas where IdProgramas = " + programa + "";
            GridView1.DataBind();
        }
    }
}