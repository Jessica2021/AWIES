using System;
using System.Collections.Generic;
using System.Drawing;
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
                if (extension == ".jpg" || extension == ".png")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/img/Publicaciones/" + FileUpload1.FileName));
                    lblText.Text = extension;
                }
                else
                {
                    lblText.Text = "El tipo de Archivo no es correcto";
                }
            }

           

            try
            {
                if (lblText.Text != "")
                {
                    ImageField foto = lblText.Text;
                    foto.SaveAs(Server.MapPath("~/img/Publicaciones/" + FileUpload1.FileName));
                    lblText.Text = extension;
                }
            }
            catch (Exception)
            {

                
            }
           
        }

        
        protected void btnVer_Click(object sender, EventArgs e)
        {
            int Tama = FileUpload1.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[Tama];
            FileUpload1.PostedFile.InputStream.Read(ImagenOriginal, 0, Tama);
            Bitmap ImagenOriginalBinaria = new Bitmap(FileUpload1.PostedFile.InputStream);

            string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(ImagenOriginal);
            ImagenPrevia.ImageUrl = ImagenDataURL64;

            lblText.Text = FileUpload1.PostedFile.FileName;
            
        }
    }
}