using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAWIES
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pos = GridView1.SelectedIndex;
            string valor = GridView1.Rows[pos].Cells[1].Text;
            TextBox1.Text = valor;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            GridView1.DataBind();
        }
    }
}