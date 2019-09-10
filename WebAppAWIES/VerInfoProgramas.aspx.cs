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
    public partial class Formulario_web14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        clProgramas objProgramas = new clProgramas();
        protected void Page_Init(object sender, EventArgs e)
        {
            string valor = Request.QueryString["id"].ToString();
            DataSet dsPrograma = new DataSet();
            dsPrograma = objProgramas.mtdListar2(valor);
            Nombre.Text = dsPrograma.Tables[0].Rows[0][0].ToString();
            Estado.Text = dsPrograma.Tables[0].Rows[0][1].ToString();
            NivelA.Text = dsPrograma.Tables[0].Rows[0][2].ToString();
            Recono.Text = dsPrograma.Tables[0].Rows[0][3].ToString();
            NivelF.Text = dsPrograma.Tables[0].Rows[0][4].ToString();
            Metodo.Text = dsPrograma.Tables[0].Rows[0][5].ToString();
            AreaC.Text = dsPrograma.Tables[0].Rows[0][6].ToString();
            Valo.Text = dsPrograma.Tables[0].Rows[0][7].ToString();
            Numero.Text = dsPrograma.Tables[0].Rows[0][8].ToString();
            Vigencia.Text = dsPrograma.Tables[0].Rows[0][9].ToString();
            Duracion.Text = dsPrograma.Tables[0].Rows[0][10].ToString();
            Titulo.Text = dsPrograma.Tables[0].Rows[0][11].ToString();
            Tipo.Text = dsPrograma.Tables[0].Rows[0][12].ToString();
            Primero.Text = dsPrograma.Tables[0].Rows[0][13].ToString();
            Ultimo.Text = dsPrograma.Tables[0].Rows[0][14].ToString();


        }
    }
}