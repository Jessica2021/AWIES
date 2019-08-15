using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clNivelFormacion
    {
        public int IdNivelFormacion { get; set; }
        public string NivelFormacion { get; set; }

        clConexion objConexion = new clConexion();

        public DataSet mtdListarNivelFormacion()
        {
            string Consul = "select * from NivelFormacion";
            DataSet dsNivelFormacion = new  DataSet();
            dsNivelFormacion = objConexion.mtdDesconectado(Consul);
            return dsNivelFormacion;
        }
    }
}