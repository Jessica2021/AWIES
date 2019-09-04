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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Application["Id"].ToString();

            objPublicaciones.mtdPublicar();
            DataSet dspublicar = new DataSet();
            dspublicar = objPublicaciones.mtdPublicar();
            Repeater1.DataSource = dspublicar;
            Repeater1.DataBind();

        }

        //picturebox.Image = Image.FromFile(ruta);

        clPublicaciones objPublicaciones = new clPublicaciones();

        
    }
}