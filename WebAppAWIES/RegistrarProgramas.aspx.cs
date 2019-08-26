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
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            clProgramas objProgramas = new clProgramas();
            string Precio = Request.Form["Precio"];
            Global global = new Global();


            string a = Application["Id"].ToString();
            String Nombre = Request.Form["Nombre"];
            String Estado = Request.Form["Estado"];
            String NumeroCreditos = Request.Form["NumeroCreditos"];
            String Vigencia = Request.Form["VigenciaAños"];
            String Duracion = Request.Form["DuracionSemestre"];
            String TitutloOtorgado = Request.Form["TituloOtorgado"];

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