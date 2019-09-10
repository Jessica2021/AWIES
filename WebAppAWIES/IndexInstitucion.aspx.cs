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
    public partial class Formulario_web17 : System.Web.UI.Page
    {
        clUniversidades universidades = new clUniversidades();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Application["Id"].ToString();
            string id = Application["Id"].ToString();
            if (Application["id"].ToString() == "")
            {
                Response.Redirect("Index.aspx", true);
            }
            
        }
    }
}