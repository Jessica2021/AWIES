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
            if (Application["id"].ToString() == "")
            {
                Response.Redirect("Index.aspx", true);
            }
        }

        

        protected void btnSubir_Click(object sender, EventArgs e)

        {
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

            if (FileUpload1.HasFile)
            {
                if (extension==".jpg" || extension==".png")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/img/Publicaciones" + FileUpload1.FileName));
                    lblText.Text = extension;
                }
                else
                {
                    lblText.Text = "El tipo de Archivo no es correcto";
                }
            }
            else
            {
                lblText.Text = "Debe seleccionar un archivo";
            }
        }
    }
}