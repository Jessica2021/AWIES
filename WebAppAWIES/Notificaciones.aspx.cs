using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
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

        protected void BtmCerrar_Click(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();

            Session.RemoveAll();
            Session.Abandon();
            Application["Id"] = "";
            HttpContext.Current.Response.Redirect("Index.aspx", true);


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int pos = GridView1.SelectedIndex;
            string valor = GridView1.Rows[pos].Cells[1].Text;
            string Correo = GridView1.Rows[pos].Cells[3].Text;
            TextBox1.Text = valor;
            TextBox2.Text = Correo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();

            MailMessage email = new MailMessage();
            email.To.Add(new MailAddress(TextBox2.Text));
            email.From = new MailAddress("awies.adsi@gmail.com");
            email.Subject = "Asunto ( " + DateTime.Now.ToString("dd / MMM / yyy hh:mm:ss") + " Solicitud De Ingreso Awies) ";
            email.Body = "¡Te damos la bienvenida a AWIES! " +
                "Antes de comenzar, debes finalizar tu registro de ingreso. Inicia sesión y completa tu registro ingresando al siguiente enlace:  http://localhost:59792/login.aspx";
            email.IsBodyHtml = true;
            email.Priority = MailPriority.Normal;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("awies.adsi@gmail.com", "Awies 123");

            string output = null;
            try
            {
                smtp.Send(email);
                email.Dispose();
                output = "Corre electrónico fue enviado satisfactoriamente.";
            }
            catch (Exception ex)
            {
                output = "Error enviando correo electrónico: " + ex.Message;
            }

            Console.WriteLine(output);
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Delete();
                GridView1.DataBind();

                lblError.Visible = false;
            }
            catch (Exception)
            {

                lblError.Visible = true;
            }
           

        }
    }
}