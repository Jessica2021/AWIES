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
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        clProgramas objProgramas = new clProgramas();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Page_Init (object sender, EventArgs e)
        {
            string valor = Request.QueryString["id"].ToString();
            DataSet dsPrograma = new DataSet();
            dsPrograma = objProgramas.mtdListar2(valor);
            Nombre.Text = dsPrograma.Tables[0].Rows[0][0].ToString();
            ddEstado.SelectedValue = dsPrograma.Tables[0].Rows[0][1].ToString();
            ddlNivelAcademico.SelectedValue = dsPrograma.Tables[0].Rows[0][2].ToString();
            ddlMinisterio.SelectedValue = dsPrograma.Tables[0].Rows[0][3].ToString();
            Precio.Text = dsPrograma.Tables[0].Rows[0][7].ToString();
            NumeroCreditos.Text = dsPrograma.Tables[0].Rows[0][8].ToString();
            VigenciaAños.Text = dsPrograma.Tables[0].Rows[0][9].ToString();
            Duracion.Text = dsPrograma.Tables[0].Rows[0][10].ToString();
            TituloOtorgado.Text = dsPrograma.Tables[0].Rows[0][11].ToString();
            ddTipo.SelectedValue = dsPrograma.Tables[0].Rows[0][12].ToString();
            primero.Text = dsPrograma.Tables[0].Rows[0][13].ToString();
            Ultimo.Text = dsPrograma.Tables[0].Rows[0][14].ToString();


        }
        public void mtdEditar()
        {
            string valor = Request.QueryString["id"].ToString();
            objProgramas.NombrePrograma = Nombre.Text;
            objProgramas.EstadoPrograma = ddEstado.SelectedValue;
            objProgramas.NivelAcademico = ddlNivelAcademico.SelectedValue;
            objProgramas.ReconocimientoMinisterio = ddlMinisterio.SelectedValue;
            objProgramas.IdNivelFormacion = int.Parse(ddlNivelFormacion.SelectedValue.ToString());
            objProgramas.IdMetodologia = int.Parse(ddlMetodologia.SelectedValue.ToString());
            objProgramas.IdAreaConocimiento = int.Parse(ddlArea.SelectedValue.ToString());
            objProgramas.Precio = float.Parse(Precio.Text.ToString());
            objProgramas.NumeroCreditos = NumeroCreditos.Text;
            objProgramas.VigenciaAños = VigenciaAños.Text;
            objProgramas.DuracionSemestre = Duracion.Text;
            objProgramas.TituloOtorgado = TituloOtorgado.Text;
            objProgramas.TipoIngreso = ddTipo.SelectedValue;
            objProgramas.PrimerIngresado = int.Parse( primero.Text.ToString());
            objProgramas.UltimoIngresado = int.Parse( Ultimo.Text.ToString());

            

            int x = objProgramas.mtdEditarCarreras(valor);
            if (x == 1)
            {
                lblCorrecto.Visible = true;
                lblError.Visible = false;
            }
            else
            {
                lblError.Visible = true;
                lblCorrecto.Visible = false;
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            mtdEditar();
        }
    }
}