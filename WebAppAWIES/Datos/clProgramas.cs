
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clProgramas
    {
        public int IdProgramas { get; set; }
        public string NombrePrograma { get; set; }
        public string EstadoPrograma { get; set; }
        public string NivelAcademico { get; set; }
        public string ReconocimientoMinisterio { get; set; }
        public int IdNivelFormacion { get; set; }
        public int IdMetodologia { get; set; }
        public int IdAreaConocimiento { get; set; }
        public float Precio { get; set; }
        public int Ponderado { get; set; }
        public string Duracion { get; set; }

        clConexion objConexion = new clConexion();

        public int mtdRegistrarCarreras()
        {

            string consulta = "insert into Programas (NombrePrograma, EstadoPrograma, NivelAcademico, ReconocimientoMinisterio, IdNivelFormacion, IdMetodologia, IdAreaConocimiento, Precio, Ponderado, Duracion)" +
            "values ('" + NombrePrograma + "', '" + EstadoPrograma + "', '" + NivelAcademico + "', '" + ReconocimientoMinisterio + "', " + IdNivelFormacion + ", " + IdMetodologia + ", " + IdAreaConocimiento + ",'" + Precio + "', '" + Ponderado + "', '"+ Duracion +"' ) ";

            int res = objConexion.mtdConectado(consulta);

            return res;
        }

        public int mtdEditarCarreras()
        {
            string consulta = "update Programas set NombrePrograma = '" + NombrePrograma + "',EstadoPrograma = '" + EstadoPrograma + "' ,NivelAcademico = '" + NivelAcademico + "' ,ReconocimientoMinisterio = '" + ReconocimientoMinisterio + "' ,IdNivelFormacion  =  '" + IdNivelFormacion + "',IdMetodologia = '" + IdMetodologia + "',IdAreaConocimiento = '" + IdAreaConocimiento + "',Precio = '" + Precio + "',Ponderado '" + Ponderado + "',Duracion = '"+ Duracion +"' where IdProgramas = '" + IdProgramas + "' ";
            int res = objConexion.mtdConectado(consulta);
            return res;
        }

        public DataSet mtdBuscar(string programa)
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) where NombrePrograma lIKE '%" + programa + "%' ";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscUniver()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Universidades'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscTecno()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Tecnológica'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscPostd()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Posdoctorado '";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscMaest()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Maestría'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscTecProfe()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Formacion Técnica Profesional'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspUni()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Universitaria'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspTecno()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Tecnológica'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspProfe()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Técnica Profesional'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspMedic()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Medico Quirúrgica'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspDocto()
        {
            string query = "select Codigo,NombreInstitucion,NombrePrograma,EstadoPrograma,NivelFormacion,Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Doctorado'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }


    }
}