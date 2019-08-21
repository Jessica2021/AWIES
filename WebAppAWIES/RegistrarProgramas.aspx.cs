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

            String Nombre = Request.Form["Nombre"];
            String Estado = Request.Form["Estado"];
            String Ponderado = Request.Form["Ponderado"];
            String Duracion = Request.Form["Duracion"];

            objProgramas.NombrePrograma = Nombre;
            objProgramas.EstadoPrograma = Estado;
            objProgramas.NivelAcademico = ddlNivelAcademico.SelectedValue;
            objProgramas.ReconocimientoMinisterio = ddlMinisterio.SelectedValue;
            objProgramas.IdNivelFormacion = int.Parse(ddlNivelFormacion.SelectedValue);
            objProgramas.IdMetodologia = int.Parse(ddlMetodologia.SelectedValue.ToString());
            objProgramas.IdAreaConocimiento = int.Parse(ddlArea.SelectedValue.ToString());
            objProgramas.Precio = float.Parse(Precio.ToString());
            objProgramas.Ponderado = int.Parse(Ponderado.ToString());
            objProgramas.Duracion = Duracion;

            objProgramas.mtdRegistrarCarreras();


        }
    }
}