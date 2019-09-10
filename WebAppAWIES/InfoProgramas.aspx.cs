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
        
        protected void Page_Load(object sender, EventArgs e)
        {


            string id = Request.QueryString["id"].ToString();
            DataSet dsPrograma = new DataSet();
            dsPrograma = Programa.mtdListaInformacion1(id);
            Nombre.Text = dsPrograma.Tables[0].Rows[0][0].ToString();
            Codigo.Text = dsPrograma.Tables[0].Rows[0][1].ToString();
            NombreIn.Text = dsPrograma.Tables[0].Rows[0][2].ToString();
            Departamento.Text = dsPrograma.Tables[0].Rows[0][3].ToString();
            Municipio.Text = dsPrograma.Tables[0].Rows[0][4].ToString();
            Estado.Text = dsPrograma.Tables[0].Rows[0][5].ToString();
            NivelA.Text = dsPrograma.Tables[0].Rows[0][6].ToString();
            Recono.Text = dsPrograma.Tables[0].Rows[0][7].ToString();
            NivelF.Text = dsPrograma.Tables[0].Rows[0][8].ToString();
            Metodo.Text = dsPrograma.Tables[0].Rows[0][9].ToString();
            AreaC.Text = dsPrograma.Tables[0].Rows[0][10].ToString();
            Valo.Text = dsPrograma.Tables[0].Rows[0][11].ToString();
            Numero.Text = dsPrograma.Tables[0].Rows[0][12].ToString();
            Vigencia.Text = dsPrograma.Tables[0].Rows[0][13].ToString();
            Duracion.Text = dsPrograma.Tables[0].Rows[0][14].ToString();
            Titulo.Text = dsPrograma.Tables[0].Rows[0][15].ToString();
            Tipo.Text = dsPrograma.Tables[0].Rows[0][16].ToString();
            Primero.Text = dsPrograma.Tables[0].Rows[0][17].ToString();
            Ultimo.Text = dsPrograma.Tables[0].Rows[0][18].ToString();

        }

        clProgramas Programa = new clProgramas();
       
    }
}