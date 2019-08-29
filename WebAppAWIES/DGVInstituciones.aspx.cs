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
    public partial class DGVInstituciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void Page_Init (object sender, EventArgs e)
            {

            string id = Application["Id"].ToString();
            DataSet dsInstitutos = new DataSet();
            dsInstitutos = Universidad.mtdListaInformacion(id);
            Codigo.Text = dsInstitutos.Tables[0].Rows[0][0].ToString();
            Nombre.Text = dsInstitutos.Tables[0].Rows[0][1].ToString();
            Nit.Text = dsInstitutos.Tables[0].Rows[0][2].ToString();
            sec.Text = dsInstitutos.Tables[0].Rows[0][3].ToString();
            acre.Text = dsInstitutos.Tables[0].Rows[0][4].ToString();
            pri.Text = dsInstitutos.Tables[0].Rows[0][5].ToString();
            departamento.Text = dsInstitutos.Tables[0].Rows[0][6].ToString();
            municipio.Text = dsInstitutos.Tables[0].Rows[0][7].ToString();
            caracter.Text = dsInstitutos.Tables[0].Rows[0][8].ToString();
            Correo.Text = dsInstitutos.Tables[0].Rows[0][9].ToString();
            Contraseña.Text = dsInstitutos.Tables[0].Rows[0][10].ToString();


        }
        clUniversidades Universidad = new clUniversidades();

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("EditarInstituciones.aspx");
        }
        public void mtdcargar()
        {

        }

        
    }
}