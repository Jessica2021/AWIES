using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace WebAppAWIES.Datos
{
    public class clUniversidades
    {
        public int IdUnversiades{ get; set; }
        public string Codigo { get; set; }
        public string EstadoSeccional { get; set; }
        public string Sector { get; set; }
        public string Nit { get; set; }
        public string Correo { get; set; }
        public string EstadoSolicitud { get; set; }
        public string Contraseña { get; set; }
        public string NombreInstitucion { get; set; }
        public string Acreditada { get; set; }
        public string PrincipalSeccional { get; set; }
        public int IdCaracterAcademico { get; set; }
        public int IdMunicipio { get; set; }
        public int IdPrograma { get; set; }
        

        clConexion objConexion = new clConexion(); //establece la conexion

        public int mtdRegistrar()
        {
            string consulta = "insert into Universidades(Correo,Contraseña,Nit,NombreInstitucion)" +
                              "values('" + Correo + "','" + Contraseña + "','" + Nit + "','" + NombreInstitucion + "')";

            int res = objConexion.mtdConectado(consulta);
            return res;

        }

        public DataSet mtdBuscarInstitucuines(string Instituto)
        {
            string consulta =" select * from Universidades where NombreInstitucion LIKE '%"+ Instituto+"%'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }
        
    }
}