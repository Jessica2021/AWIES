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
    public partial class Formulario_web15 : System.Web.UI.Page
    {
        clUniversidades universidad = new clUniversidades();
        protected void Page_Load(object sender, EventArgs e)
        {
            string valor = Request.QueryString["id"];
            DataSet dsInstituto = new DataSet();
            dsInstituto = universidad.mtdListaInformacion(valor);
            Codigo.Text = dsInstituto.Tables[0].Rows[0][0].ToString();
            Nombre.Text = dsInstituto.Tables[0].Rows[0][1].ToString();
            Nit.Text = dsInstituto.Tables[0].Rows[0][2].ToString();
            sec.Text = dsInstituto.Tables[0].Rows[0][3].ToString();
            acre.Text = dsInstituto.Tables[0].Rows[0][4].ToString();
            pri.Text = dsInstituto.Tables[0].Rows[0][5].ToString();
            departamento.Text = dsInstituto.Tables[0].Rows[0][6].ToString();
            municipio.Text = dsInstituto.Tables[0].Rows[0][7].ToString();
            caracter.Text = dsInstituto.Tables[0].Rows[0][8].ToString();

        }
    }
}