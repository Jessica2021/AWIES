using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAWIES.Datos;

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
            
            //Guardar datos en BD
            clPublicaciones objMuro = new clPublicaciones();
            objMuro.foto = lblURL.Text;
            objMuro.titulo = titulo.Text;
            objMuro.texto = texto.Text;
            objMuro.idUniversidad = int.Parse(Label1.Text.ToString());

                int result = objMuro.mtdRegistrar();
                if (result == 1)
                {
                    lblCorrecto.Visible = true;
                    lblError.Visible = false;
                    titulo.Text = "";
                    texto.Text = "";
                    lblURL.Text = "";
                }
                else
                {
                    lblCorrecto.Visible = false;
                    lblError.Visible = true;
                }

        }

        
        protected void btnVer_Click(object sender, EventArgs e)
        {
            //Guardar imagen en servidor
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

            if (FileUpload1.HasFile)
            {
                if (extension == ".jpg" || extension == ".png")
                {
                   
                    FileUpload1.SaveAs(Server.MapPath("~/img/Publicaciones/" + FileUpload1.FileName));

                    string ruta = FileUpload1.FileName;

                    lblURL.Text = ruta;
                    lblExtension.Text = extension;

                    lblError.Visible = false;
                }
                else
                {
                    lblError.Visible = true;
                }
            }



            //VistaPrevia de Imagen
            try
            {
                int Tama = FileUpload1.PostedFile.ContentLength;
                byte[] ImagenOriginal = new byte[Tama];
                FileUpload1.PostedFile.InputStream.Read(ImagenOriginal, 0, Tama);
                Bitmap ImagenOriginalBinaria = new Bitmap(FileUpload1.PostedFile.InputStream);

                string ImagenDataURL64 = "data:image/jpg;base64," + Convert.ToBase64String(ImagenOriginal);
                ImagenPrevia.ImageUrl = ImagenDataURL64;

                //lblURL.Text = FileUpload1.PostedFile.FileName;

                lblError.Visible = false;
            }
            catch (Exception)
            {

                lblError.Visible = true;
            }
           
            
        }
    }
}