using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAWIES
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Application["Id"].ToString();
            string id = Application["Id"].ToString();
            if (Application["id"].ToString() == "" )
            {
                Response.Redirect("Index.aspx", true);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int tam = fuploadImagen.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tam];
        }
    }
}