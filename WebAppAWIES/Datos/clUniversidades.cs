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
            string consulta = " select Universidades.Codigo ,  Universidades.PrincipalSeccional, Universidades.Sector, Universidades.NombreInstitucion, CaracterAcademico.CaracterAcademico,  Departamento.Departamento, Municipio.Municipio, Universidades.Acreditada from Universidades inner join CaracterAcademico on (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio ) inner join Departamento on (Departamento.IdDepartamento = Municipio.IdDepartamento) where NombreInstitucion LIKE '%" + Instituto+"%'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }
        
    }
}