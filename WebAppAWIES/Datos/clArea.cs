using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clArea
    {
        public int idArea { get; set; }
        public string Area { get; set; }

        clConexion objConexion = new clConexion();

        public DataSet mtdListarArea()
        {
            string consulta = "select * from Area";
            DataSet dsArea = new DataSet();
            dsArea = objConexion.mtdDesconectado(consulta);

            return dsArea;
        }
    }
}