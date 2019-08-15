using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clCaracterAcademico
    {
        public int IdCaracterAcademico { get; set; }
        public string CaracterAcademico { get; set; }

        clConexion objConexion = new clConexion();
        
       public DataSet mtdListarCaracterAcademico()
        {
            string consulta = "select CaracterAcademico from CaracterAcademico";
            DataSet dsCaracter = new DataSet();
            dsCaracter = objConexion.mtdDesconectado(consulta);
            return dsCaracter;



        }

    }
}