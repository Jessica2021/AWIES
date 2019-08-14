using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAWIES.Datos;

namespace WebAppAWIES
{
    public partial class EnvioSolicitud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clUniversidades objUniversidades = new clUniversidades();
            String Correo = Request.Form["correo"];
            String Contraseña = Request.Form["contraseña"];
            String Nit = Request.Form["nit"];
            String Nombre = Request.Form["nombre"];
            objUniversidades.Correo = Correo;
            objUniversidades.Contraseña = Contraseña;
            objUniversidades.Nit = Nit;
            objUniversidades.NombreInstitucion = Nombre;
            if (Nit != null)
            {
                int result = objUniversidades.mtdRegistrar();
                if (result == 1)
                {
                    Response.Redirect("index.aspx");
                }
            }
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}