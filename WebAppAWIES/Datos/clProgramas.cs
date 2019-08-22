
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
       

        clConexion objConexion = new clConexion();

        public int mtdRegistrarCarreras()
        {

            string consulta = "insert into Programas (NombrePrograma, EstadoPrograma, NivelAcademico, ReconocimientoMinisterio, IdNivelFormacion, IdMetodologia, IdAreaConocimiento, Precio, NumeroCreditos, VigenciaAños, DuracionSemestre, TituloOtorgado)" +
            "values ('" + NombrePrograma + "', '" + EstadoPrograma + "', '" + NivelAcademico + "', '" + ReconocimientoMinisterio + "', " + IdNivelFormacion + ", " + IdMetodologia + ", " + IdAreaConocimiento + ",'" + Precio + "', '" + NumeroCreditos + "', '"+ VigenciaAños +"', '"+ DuracionSemestre +"', '"+ TituloOtorgado + "' ) ";

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

        

        public int mtdEditarCarreras()
        {
            string consulta = "update Programas set NombrePrograma = '" + NombrePrograma + "',EstadoPrograma = '" + EstadoPrograma + "' ,NivelAcademico = '" + NivelAcademico + "' ,ReconocimientoMinisterio = '" + ReconocimientoMinisterio + "' ,IdNivelFormacion  =  '" + IdNivelFormacion + "',IdMetodologia = '" + IdMetodologia + "',IdAreaConocimiento = '" + IdAreaConocimiento + "',Precio = '" + Precio + "',NumeroCreditos '" + NumeroCreditos + "',VigenciaAños = '" + VigenciaAños +"', DuracionSemestre = '"+ DuracionSemestre + "',TituloOtorgado = ' "+ TituloOtorgado +"' where IdProgramas = '" + IdProgramas + "' ";
            int res = objConexion.mtdConectado(consulta);
            return res;
        }

        public DataSet mtdBuscar(string programa)
        {
            string query = "SELECT Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico, Programas.ReconocimientoMinisterio, Programas.Precio, Programas.Ponderado, Area.Area, Metodologia.Metodologia, NivelFormacion.NivelFormacion FROM Programas INNER JOIN Area ON Programas.IdAreaConocimiento = Area.IdArea INNER JOIN Metodologia ON Programas.IdMetodologia = Metodologia.IdMetodologia INNER JOIN NivelFormacion ON Programas.IdNivelFormacion = NivelFormacion.IdNivelFormacion where NombrePrograma = '" + programa + "' ";
            DataSet tblPrograma = new DataSet();
            tblPrograma = objConexion.mtdDesconectado(query);
            return tblPrograma;
        }

        
        public DataSet mtdListarProgramas(string a)
        {
            //Global global = new Global();

            //string a = global.Application["Id"].ToString();
            
            string consulta = "SELECT Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico, Programas.ReconocimientoMinisterio, " +
                "Programas.Precio, Programas.NumeroCreditos, Programas.VigenciaAños,Programas.DuracionSemestre,TituloOtorgado " +
                "FROM InstitucionPrograma INNER JOIN Programas ON InstitucionPrograma.IdProgramas = Programas.IdProgramas INNER JOIN Universidades ON InstitucionPrograma.IdUniversidades = Universidades.IdUniversidades WHERE(Universidades.IdUniversidades = '"+ a +"')";
            DataSet dsPrograma = new DataSet();
            dsPrograma = objConexion.mtdDesconectado(consulta);
            return dsPrograma;
        }

    }
}