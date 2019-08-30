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
    public partial class Formulario_web13 : System.Web.UI.Page
    {

        clUniversidades Universidad = new clUniversidades();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            string id = Application["Id"].ToString();
            DataSet dsInstitutos = new DataSet();
            dsInstitutos = Universidad.mtdListaInformacion(id);
            mtdcargar();
            TextCodigo.Text = dsInstitutos.Tables[0].Rows[0][0].ToString();
            TextNombre.Text = dsInstitutos.Tables[0].Rows[0][1].ToString();
            TextNit.Text = dsInstitutos.Tables[0].Rows[0][2].ToString();
            DropDownList5.SelectedValue = dsInstitutos.Tables[0].Rows[0][3].ToString();
            DropDownList6.SelectedValue = dsInstitutos.Tables[0].Rows[0][4].ToString();
            DropDownList4.SelectedValue = dsInstitutos.Tables[0].Rows[0][5].ToString();
            TextCorreo.Text = dsInstitutos.Tables[0].Rows[0][9].ToString();
            TextContraseña.Text = dsInstitutos.Tables[0].Rows[0][10].ToString();


        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {

            mtdEditar();
        }
        public void mtdcargar()
        {
           

        }

        public void mtdEditar()
        {
            Universidad.Codigo = TextCodigo.Text;
            Universidad.Sector = DropDownList5.SelectedValue;
            Universidad.Nit = TextNit.Text;
            Universidad.Correo = TextCorreo.Text;
            Universidad.Contraseña = TextContraseña.Text;
            Universidad.NombreInstitucion = TextNombre.Text;
            Universidad.Acreditada = DropDownList6.SelectedValue;
            Universidad.PrincipalSeccional = DropDownList4.SelectedValue;
            Universidad.IdCaracterAcademico = int.Parse(DropDownList2.SelectedValue.ToString());
            Universidad.IdMunicipio = int.Parse(DropDownList3.SelectedValue.ToString());


            string id = Application["Id"].ToString();

            int x = Universidad.mtdEditar(id);

            if (x == 1)
            {
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