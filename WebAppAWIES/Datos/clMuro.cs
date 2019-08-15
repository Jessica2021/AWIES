using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebAppAWIES.Datos
{
    public class clMuro
    {
        public int IdMuro { get; set; }
        public string Titulo { get; set; }
        public string Texto { get; set; }
        public Image Foto { get; set; }
        public int IdUniversidad { get; set; }
    }
}