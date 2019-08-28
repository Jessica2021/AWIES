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

        public void x()
        {
            objProgramas.TipoIngreso = "icfes";
        }
        clProgramas objProgramas = new clProgramas();
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string Precio = Request.Form["Precio"];
            Global global = new Global();


            string a = Application["Id"].ToString();
            String Nombre = Request.Form["Nombre"];
            String Estado = Request.Form["Estado"];
            String NumeroCreditos = Request.Form["NumeroCreditos"];
            String Vigencia = Request.Form["VigenciaAños"];
            String Duracion = Request.Form["DuracionSemestre"];
            String TitutloOtorgado = Request.Form["TituloOtorgado"];
            string PuntajeP = Request.Form["puntajeP"];
            string PuntajeU = Request.Form["puntajeU"];
            string btnIcfes = Request.Form["Icfes"];
            string btnPonderado = Request.Form["Ponderado"];
            string btnPrueba = Request.Form["Prueba"];


            objProgramas.NombrePrograma = Nombre;
            objProgramas.EstadoPrograma = ddEstado.SelectedValue;
            objProgramas.NivelAcademico = ddlNivelAcademico.SelectedValue;
            objProgramas.ReconocimientoMinisterio = ddlMinisterio.SelectedValue;
            objProgramas.IdNivelFormacion = int.Parse(ddlNivelFormacion.SelectedValue);
            objProgramas.IdMetodologia = int.Parse(ddlMetodologia.SelectedValue.ToString());
            objProgramas.IdAreaConocimiento = int.Parse(ddlArea.SelectedValue.ToString());
            objProgramas.Precio = float.Parse(Precio.ToString());
            objProgramas.NumeroCreditos = NumeroCreditos;
            objProgramas.VigenciaAños = Vigencia;
            objProgramas.DuracionSemestre = Duracion;
            objProgramas.TituloOtorgado = TitutloOtorgado;
            objProgramas.PrimerIngresado = float.Parse(PuntajeP.ToString());
            objProgramas.UltimoIngresado = float.Parse(PuntajeU.ToString());
            
           

            int x = objProgramas.mtdRegistrarCarreras();

            if (x == 1)
            {
                objProgramas.mtdRegistrarRompe(a);

                lblCorrecto.Visible = true;
                lblError.Visible = false;
            }
            else
            {
                lblCorrecto.Visible = false;
                lblError.Visible = true;
            }

           



        }
    }
}