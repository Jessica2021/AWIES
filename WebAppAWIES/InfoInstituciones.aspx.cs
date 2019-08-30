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
    public partial class Formulario_web16 : System.Web.UI.Page
    {
        clUniversidades universidades = new clUniversidades();
        protected void Page_Load(object sender, EventArgs e)
        {
            string valor = Request.QueryString["id"].ToString();
            DataSet dsPrograma = new DataSet();
            dsPrograma = universidades.mtdListaInformacion(valor);
            Codigo.Text = dsPrograma.Tables[0].Rows[0][0].ToString();
            Nombre.Text = dsPrograma.Tables[0].Rows[0][1].ToString();
            Nit.Text = dsPrograma.Tables[0].Rows[0][2].ToString();
            sec.Text = dsPrograma.Tables[0].Rows[0][3].ToString();
            acre.Text = dsPrograma.Tables[0].Rows[0][4].ToString();
            pri.Text = dsPrograma.Tables[0].Rows[0][5].ToString();
            departamento.Text = dsPrograma.Tables[0].Rows[0][6].ToString();
            municipio.Text = dsPrograma.Tables[0].Rows[0][7].ToString();
            caracter.Text = dsPrograma.Tables[0].Rows[0][8].ToString();
          
        }
    }
}