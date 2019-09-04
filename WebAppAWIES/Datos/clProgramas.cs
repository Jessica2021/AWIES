
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
        public string NumeroCreditos { get; set; }
        public string VigenciaAños { get; set; }
        public string DuracionSemestre { get; set; }
        public string TituloOtorgado { get; set; }
        public string TipoIngreso { get; set; }
        public float PrimerIngresado { get; set; }
        public float  UltimoIngresado { get; set; }
       

        clConexion objConexion = new clConexion();

        public int mtdRegistrarCarreras()
        {

            string consulta = "insert into Programas (NombrePrograma, EstadoPrograma, NivelAcademico, ReconocimientoMinisterio, IdNivelFormacion, IdMetodologia, IdAreaConocimiento, Precio, NumeroCreditos, VigenciaAños, DuracionSemestre, TituloOtorgado, TipoIngreso, PrimerIngresado, UltimoIngresado)" +
            "values ('" + NombrePrograma + "', '" + EstadoPrograma + "', '" + NivelAcademico + "', '" + ReconocimientoMinisterio + "', " + IdNivelFormacion + ", " + IdMetodologia + ", " + IdAreaConocimiento + ",'" + Precio + "', '" + NumeroCreditos + "', '"+ VigenciaAños +"', '"+ DuracionSemestre +"', '"+ TituloOtorgado + "', '"+ TipoIngreso +"', '"+ PrimerIngresado +"', '"+ UltimoIngresado +"'  ) ";

            int res = objConexion.mtdConectado(consulta);

            return res;
        }

        public int mtdRegistrarRompe(string a)
        {
            string consulta = "DECLARE @a SMALLINT " +
                "set @a = (Select TOP 1 IdProgramas from Programas order by IdProgramas desc) " +
                "insert into InstitucionPrograma(IdUniversidades,IdProgramas) values(" + a  +", @a)";
            int res = objConexion.mtdConectado(consulta);
            return res;
        }



        public int mtdEditarCarreras(string valor)
        {
            string consulta = "update Programas set NombrePrograma = '" + NombrePrograma + "',EstadoPrograma = '" + EstadoPrograma + "' ,NivelAcademico = '" + NivelAcademico + "' ,ReconocimientoMinisterio = '" + ReconocimientoMinisterio + "' ,IdNivelFormacion  =  " + IdNivelFormacion + ",IdMetodologia = " + IdMetodologia + ",IdAreaConocimiento = " + IdAreaConocimiento + ",Precio = '" + Precio + "', NumeroCreditos ='" + NumeroCreditos + "', VigenciaAños = '" + VigenciaAños + "', DuracionSemestre = '" + DuracionSemestre + "',TituloOtorgado = ' " + TituloOtorgado + "' ,TipoIngreso = '" + TipoIngreso + "' ,PrimerIngresado = '" + PrimerIngresado + "' ,UltimoIngresado = '" + UltimoIngresado + "' where IdProgramas = " + valor + "";
            int res = objConexion.mtdConectado(consulta);
            return res;
        }




        public DataSet mtdListarProgramas(string a)
        {
            //Global global = new Global();

            //string a = global.Application["Id"].ToString();
            
            string consulta = "SELECT Programas.IdProgramas,Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico,  " +
                "Programas.Precio,Programas.DuracionSemestre,TituloOtorgado " +
                "FROM InstitucionPrograma INNER JOIN Programas ON InstitucionPrograma.IdProgramas = Programas.IdProgramas INNER JOIN Universidades ON InstitucionPrograma.IdUniversidades = Universidades.IdUniversidades WHERE(Universidades.IdUniversidades = '"+ a +"')";
            DataSet dsPrograma = new DataSet();
            dsPrograma = objConexion.mtdDesconectado(consulta);
            return dsPrograma;
        }

        public DataSet mtdListaInformacion(string id)
        {
            string consulta = " select Programas.NombrePrograma ,Universidades.Codigo, Universidades.NombreInstitucion, EstadoPrograma, NivelAcademico,ReconocimientoMinisterio, NivelFormacion.NivelFormacion,Metodologia.Metodologia, Area.Area, Precio, NumeroCreditos, VigenciaAños, DuracionSemestre,TituloOtorgado,Programas.TipoIngreso, Programas.PrimerIngresado, Programas.UltimoIngresado  from Programas INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion=Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON (Area.IdArea = Programas.IdAreaConocimiento) INNER JOIN InstitucionPrograma ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN Universidades ON (Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) where Universidades.IdUniversidades = '" + id + "'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }
        public DataSet mtdListaInformacion1(string id)
        {
            string consulta = " select Programas.NombrePrograma ,Universidades.Codigo, Universidades.NombreInstitucion, EstadoPrograma, NivelAcademico,ReconocimientoMinisterio, NivelFormacion.NivelFormacion,Metodologia.Metodologia, Area.Area, Precio, NumeroCreditos, VigenciaAños, DuracionSemestre,TituloOtorgado,Programas.TipoIngreso, Programas.PrimerIngresado, Programas.UltimoIngresado  from Programas INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion=Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON (Area.IdArea = Programas.IdAreaConocimiento) INNER JOIN InstitucionPrograma ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN Universidades ON (Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) where Programas.IdProgramas = '" + id + "'";
            DataSet dsInstituto = new DataSet();
            dsInstituto = objConexion.mtdDesconectado(consulta);
            return dsInstituto;
        }

        public DataSet mtdListar2(string valor)
        {
            string consulta = "SELECT Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico, Programas.ReconocimientoMinisterio, " +
                "NivelFormacion.NivelFormacion, Metodologia.Metodologia, Area.Area, Programas.Precio, Programas.NumeroCreditos, Programas.VigenciaAños,Programas.DuracionSemestre,TituloOtorgado, Programas.TipoIngreso, Programas.PrimerIngresado, Programas.UltimoIngresado " +
                "FROM Programas INNER JOIN NivelFormacion ON Programas.IdNivelFormacion = NivelFormacion.IdNivelFormacion INNER JOIN Metodologia ON Programas.IdMetodologia = Metodologia.IdMetodologia INNER JOIN Area ON Programas.IdAreaConocimiento = Area.IdArea WHERE(Programas.IdProgramas = '" + valor + "')";
            DataSet dsPrograma = new DataSet();
            dsPrograma = objConexion.mtdDesconectado(consulta);
            return dsPrograma;
        }

       
        public DataSet mtdBuscar(string programa)
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) where NombrePrograma lIKE '%" + programa + "%' ";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscUniver()
        {
            string query = "Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Universidades'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscTecno()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Tecnológica'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscPostd()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Posdoctorado '";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscMaest()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Maestría'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscTecProfe()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Formacion Técnica Profesional'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspUni()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Universitaria'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspTecno()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Tecnológica'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspProfe()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Técnica Profesional'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspMedic()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Especialización Medico Quirúrgica'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdBuscEspDocto()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelFormacion='Doctorado'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdPosgrado()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelAcademico ='Posgrado'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdPregrado()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE NivelAcademico ='Pregrado'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdDistancia()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE Metodologia ='A DISTANCIA'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdPresencial()
        {
            string query = "Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE Metodologia ='PRESENCIAL'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdVirtual()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON (Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON (NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON (Metodologia.IdMetodologia = Programas.IdMetodologia) WHERE Metodologia ='VIRTUAL'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaAgronomia()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'AGRONOMIA, VETERINARIA Y AFINES'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }
        public DataSet mtdListarProgramas()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento)";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaBellas()
        {
            string query = "select Programas.IdProgramas,Programas.NombrePrograma,  NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'BELLAS ARTES'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }
        public DataSet mtdAreaCienEdu()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'CIENCIAS DE LA EDUCACION'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaCienSal()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'CIENCIAS DE LA SALUD'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaCienSoci()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'CIENCIAS SOCIALES, DERECHO, CIENCIAS POLITICAS'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaCienEco()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'ECONOMIA, ADMINISTRACION, CONTADURIA Y AFINES'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaCienHuma()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'HUMANIDADES Y CIENCIAS RELIGIOSAS'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaIngeni()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'INGENIERIA, ARQUITECTURA, URBANISMO Y AFINES'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdAreaMate()
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE Area = 'MATEMATICAS Y CIENCIAS NATURALES'";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }
        public DataSet mtdPonderado(string valor, string resultado)
        {
            string query = "select Programas.IdProgramas, Programas.NombrePrograma, NombreInstitucion,  NivelFormacion, Metodologia from Universidades INNER JOIN InstitucionPrograma ON(Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades) INNER JOIN Programas ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN NivelFormacion ON(NivelFormacion.IdNivelFormacion = Programas.IdNivelFormacion) INNER JOIN Metodologia ON(Metodologia.IdMetodologia = Programas.IdMetodologia) INNER JOIN Area ON(Area.IdArea = Programas.IdAreaConocimiento) WHERE TipoIngreso = '"+resultado+"' and  PrimerIngresado  <=  '" + valor + "' and  UltimoIngresado >=  '" + valor + "' ";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        public DataSet mtdCount()
        {
            string query = "select COUNT(InstitucionPrograma.IdProgramas) from Programas INNER JOIN InstitucionPrograma ON(Programas.IdProgramas = InstitucionPrograma.IdProgramas) INNER JOIN Universidades ON (Universidades.IdUniversidades = InstitucionPrograma.IdUniversidades)";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

    }
}