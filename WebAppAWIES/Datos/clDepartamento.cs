using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clDepartamento
    {
        public int IdDepartamento { get; set; }
        public string Departamento { get; set; }

        clConexion objConexion = new clConexion();

        public DataSet mtdListarDepartamento()
        {
            string consulta = "select * from Departamento";
            DataSet dsDepartamento = new DataSet();
            dsDepartamento = objConexion.mtdDesconectado(consulta);
            return dsDepartamento;
        }
    }
}