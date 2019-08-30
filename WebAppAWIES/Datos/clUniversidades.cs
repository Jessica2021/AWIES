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

        public int mtdTerminar(string id)
        {
            
            string consu = "update Universidades set Codigo = " + Codigo + ",PrincipalSeccional = '" + PrincipalSeccional + "' ,Sector = '" + Sector + "' ,Acreditada =  '" + Acreditada + "',IdMunicipio = " + IdMunicipio + " ,IdCaracterAcademico = " + IdCaracterAcademico + " where IdUniversidades = " + id + " ";

            int res = objConexion.mtdConectado(consu);
            return res;

        }
        public DataSet mtdBuscarInstitucuines(string Instituto)
        {
            string consulta = " select Universidades.IdUniversidades, Universidades.Codigo, Universidades.PrincipalSeccional,Universidades.NombreInstitucion,  CaracterAcademico.CaracterAcademico , Departamento.Departamento, Municipio.Municipio from Universidades inner join CaracterAcademico on  (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio) inner join Departamento on (Departamento.IdDepartamento=Municipio.IdDepartamento) where NombreInstitucion LIKE '%" + Instituto + "%'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }

        public DataSet mtdBusquedaUniversidades()
        {
            string consulta = " select Universidades.IdUniversidades, Universidades.Codigo, Universidades.PrincipalSeccional,Universidades.NombreInstitucion,  CaracterAcademico.CaracterAcademico , Departamento.Departamento, Municipio.Municipio from Universidades inner join CaracterAcademico on  (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio) inner join Departamento on (Departamento.IdDepartamento=Municipio.IdDepartamento) where CaracterAcademico.IdCaracterAcademico = 4";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }

        public DataSet mtdBusquedaTecnica()
        {
            string consulta = " select Universidades.IdUniversidades, Universidades.Codigo, Universidades.PrincipalSeccional,Universidades.NombreInstitucion, CaracterAcademico.CaracterAcademico , Departamento.Departamento, Municipio.Municipio from Universidades inner join CaracterAcademico on  (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio) inner join Departamento on (Departamento.IdDepartamento=Municipio.IdDepartamento) where CaracterAcademico.IdCaracterAcademico = 1";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }
        public DataSet mtdBusquedaTecnologica()
        {
            string consulta = " select Universidades.IdUniversidades, Universidades.Codigo, Universidades.PrincipalSeccional,Universidades.NombreInstitucion, CaracterAcademico.CaracterAcademico , Departamento.Departamento, Municipio.Municipio from Universidades inner join CaracterAcademico on  (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio) inner join Departamento on (Departamento.IdDepartamento=Municipio.IdDepartamento) where CaracterAcademico.IdCaracterAcademico = 2";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }

        public DataSet mtdBusquedaMunicipio(int a)
        {
            string consulta = " select  Universidades.IdUniversidades, Universidades.Codigo, Universidades.PrincipalSeccional,Universidades.NombreInstitucion, CaracterAcademico.CaracterAcademico , Departamento.Departamento, Municipio.Municipio  from Universidades inner join CaracterAcademico on  (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio) inner join Departamento on (Departamento.IdDepartamento=Municipio.IdDepartamento) where Municipio.IdMunicipio = '" + a+"'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }

        public DataSet mtdListaInformacion(string id)
        {
            string consulta = " select Universidades.Codigo,Universidades.NombreInstitucion, Universidades.Nit, Universidades.Sector,Universidades.Acreditada, Universidades.PrincipalSeccional, Departamento.Departamento, Municipio.Municipio,   CaracterAcademico.CaracterAcademico , Universidades.Correo, Universidades.Contraseña from Universidades inner join CaracterAcademico on  (CaracterAcademico.IdCaracterAcademico = Universidades.IdCaracterAcademico) inner join Municipio on (Municipio.IdMunicipio = Universidades.IdMunicipio) inner join Departamento on (Departamento.IdDepartamento=Municipio.IdDepartamento) where Universidades.IdUniversidades = '" + id + "'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }
        public int mtdEditar(string id)
        {

            string consu = "update Universidades set Codigo = '" + Codigo + "',Sector = '" + Sector + "',Nit = '" + Nit + "',Correo = '" + Correo + "' ,Contraseña =  '" + Contraseña + "',NombreInstitucion = '" + NombreInstitucion + "' ,Acreditada = '" + Acreditada + "',PrincipalSeccional = '" + PrincipalSeccional + "', IdCaracterAcademico = " + IdCaracterAcademico + ", IdMunicipio = " + IdMunicipio + "  where IdUniversidades = " + id + " ";

            int res = objConexion.mtdConectado(consu);
            return res;

        }
        
    }
}