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
    public partial class DGVInstituciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        protected void Page_Init (object sender, EventArgs e)
            {
            DropDownList1.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            DropDownList5.Visible = false;
            DropDownList6.Visible = false;
            DropDownList4.Visible = false;
            TextCodigo.Visible = false;
            TextNombre.Visible = false;
            TextNit.Visible = false;
            TextCorreo.Visible = false;
            TextContraseña.Visible = false;
            Button2.Visible = false;

            string id = Application["Id"].ToString();
            DataSet dsInstitutos = new DataSet();
            dsInstitutos = Universidad.mtdListaInformacion(id);
            Codigo.Text = dsInstitutos.Tables[0].Rows[0][0].ToString();
            Nombre.Text = dsInstitutos.Tables[0].Rows[0][1].ToString();
            Nit.Text = dsInstitutos.Tables[0].Rows[0][2].ToString();
            sec.Text = dsInstitutos.Tables[0].Rows[0][3].ToString();
            acre.Text = dsInstitutos.Tables[0].Rows[0][4].ToString();
            pri.Text = dsInstitutos.Tables[0].Rows[0][5].ToString();
            departamento.Text = dsInstitutos.Tables[0].Rows[0][6].ToString();
            municipio.Text = dsInstitutos.Tables[0].Rows[0][7].ToString();
            caracter.Text = dsInstitutos.Tables[0].Rows[0][8].ToString();
            Correo.Text = dsInstitutos.Tables[0].Rows[0][9].ToString();
            Contraseña.Text = dsInstitutos.Tables[0].Rows[0][10].ToString();


        }
        clUniversidades Universidad = new clUniversidades();

        protected void Button1_Click(object sender, EventArgs e)
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
        public void mtdcargar()
        {
            departamento.Visible = false;
            municipio.Visible = false;
            caracter.Visible = false;
            DropDownList1.Visible = true;
            DropDownList3.Visible = true;
            DropDownList2.Visible = true;
            DropDownList5.Visible = true;
            DropDownList6.Visible = true;
            DropDownList4.Visible = true;
            TextCodigo.Visible = true;
            TextNombre.Visible = true;
            TextNit.Visible = true;
            TextCorreo.Visible = true;
            TextContraseña.Visible = true;
            Codigo.Visible = false;
            Nombre.Visible = false;
            Nit.Visible = false;
            sec.Visible = false;
            acre.Visible = false;
            pri.Visible = false;
            departamento.Visible = false;
            municipio.Visible = false;
            caracter.Visible = false;
            Correo.Visible = false;
            Contraseña.Visible = false;
            Button2.Visible = true;

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
            Universidad.IdMunicipio =int.Parse(DropDownList3.SelectedValue.ToString());
           
           
            string id = Application["Id"].ToString();

            int x = Universidad.mtdEditar(id);

            if (x == 1)
            {
                mensaje.Text = ("Editado!");

                
            }
            else
            {
                mensaje.Text = ("NO Editado!");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mtdEditar();
        }
    }
}