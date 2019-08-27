using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAWIES
{
    public partial class SiteInstitucion : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtmCerrar_Click(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();

            Session.RemoveAll();
            Session.Abandon();
            Application["Id"] = "";
            HttpContext.Current.Response.Redirect("Index.aspx", true);
            




        }
    }
}