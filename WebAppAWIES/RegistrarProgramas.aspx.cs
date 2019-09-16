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
    public partial class RegistrarProgramas : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        
        clProgramas objProgramas = new clProgramas();
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Global global = new Global();

            try
            {

           
            string a = Application["Id"].ToString();
            objProgramas.NombrePrograma = Nombre.Text;
            objProgramas.EstadoPrograma = ddEstado.SelectedValue;
            objProgramas.NivelAcademico = ddlNivelAcademico.SelectedValue;
            objProgramas.ReconocimientoMinisterio = ddlMinisterio.SelectedValue;
            objProgramas.IdNivelFormacion = int.Parse(ddlNivelFormacion.SelectedValue);
            objProgramas.IdMetodologia = int.Parse(ddlMetodologia.SelectedValue.ToString());
            objProgramas.IdAreaConocimiento = int.Parse(ddlArea.SelectedValue.ToString());
            objProgramas.Precio = int.Parse(Precio.Text);
            objProgramas.NumeroCreditos = NumeroCreditos.Text;
            objProgramas.VigenciaAños = VigenciaAños.Text;
            objProgramas.DuracionSemestre = Duracion.Text;
            objProgramas.TituloOtorgado = TituloOtorgado.Text;
            objProgramas.PrimerIngresado = float.Parse(Primero.Text);
            objProgramas.UltimoIngresado = float.Parse(ultimo.Text);
            objProgramas.TipoIngreso = x;
            int w = objProgramas.mtdRegistrarCarreras();

            if (w == 1)
            {
                objProgramas.mtdRegistrarRompe(a);

                lblCorrecto.Visible = true;
                lblError.Visible = false;

                Nombre.Text = "";
                Precio.Text = "";
                NumeroCreditos.Text = ""; 
                VigenciaAños.Text = "";
                Duracion.Text = "";
                Primero.Text = "";
                ultimo.Text = "";
                TituloOtorgado.Text = "";

            }
            else
            {
                lblCorrecto.Visible = false;
                lblError.Visible = true;
            }


            }
            catch (Exception)
            {
                lblError.Visible = true;
                lblError.Text = "Debe completar los campos";
            }


        }
        public static string x;
        protected void btnIcfes_Click(object sender, EventArgs e)
        {
            x = "Icfes";
        }

        protected void btnPonderado_Click(object sender, EventArgs e)
        {
            x = "Ponderado";
        }

        protected void btnPrueba_Click(object sender, EventArgs e)
        {
            x = "Prueba";
        }
    }
}