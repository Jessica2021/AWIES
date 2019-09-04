using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clPublicaciones
    {
        public string foto { get; set; }
        public string titulo { get; set; }
        public string texto { get; set; }
        public int idUniversidad { get; set; }

        clConexion objConexion = new clConexion(); //establece la conexion

        public int mtdRegistrar()
        {
            string consulta = "insert into Muro(Foto,Titulo,Texto,IdUniversidad)" +
                              "values('" + foto + "','" + titulo + "','" + texto + "','" + idUniversidad + "')";

            int res = objConexion.mtdConectado(consulta);
            return res;

        }

        public DataSet mtdPublicar()
        {
            string consulta = "select * from Muro";
            DataSet dsPublicar = new DataSet();
            dsPublicar = objConexion.mtdDesconectado(consulta);
            return dsPublicar;

        }
    }
}