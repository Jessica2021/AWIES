using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAWIES.Datos;

namespace WebAppAWIES
{
    public partial class Registrar1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            clUniversidades objUniversidades = new clUniversidades();
            objUniversidades.PrincipalSeccional = DropDownList1.SelectedValue;
            objUniversidades.Sector = DropDownList2.SelectedValue;
            objUniversidades.Acreditada = DropDownList3.SelectedValue;
            objUniversidades.IdMunicipio = int.Parse(DropDownList5.SelectedValue);
            objUniversidades.IdCaracterAcademico = int.Parse(DropDownList6.SelectedValue);
            objUniversidades.mtdRegistrar();
        }
    }
}