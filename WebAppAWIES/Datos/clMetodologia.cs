using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clMetodologia
    {
        public int IdMetodologia { get; set; }
        public string Metodologia { get; set; }

        clConexion objConexion = new clConexion();


        public DataSet mtdListarMetodologia()
        {
            string consulta = "select * from Metodologia";
            DataSet dsMetodologia = new DataSet();
            dsMetodologia = objConexion.mtdDesconectado(consulta);
            return dsMetodologia;
        }
    }
}