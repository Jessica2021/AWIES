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
            Label1.Text = Application["Id"].ToString();
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
            objUniversidades.Codigo = TextBox1.Text;
            objUniversidades.PrincipalSeccional = DropDownList4.SelectedValue;
            objUniversidades.Sector = DropDownList5.SelectedValue;
            objUniversidades.Acreditada = DropDownList6.SelectedValue;
            objUniversidades.IdMunicipio = int.Parse(DropDownList1.SelectedValue.ToString());
            objUniversidades.IdCaracterAcademico = int.Parse(DropDownList2.SelectedValue.ToString());

            int x = objUniversidades.mtdTerminar(Label1.Text);

            if (x == 1)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Redirect("Registrar.aspx");
            }
        }
    }
}