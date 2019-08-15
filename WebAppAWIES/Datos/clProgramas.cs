
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clProgramas
    {
        public int IdProgramas { get; set; }
        public string NombrePrograma { get; set; }
        public string EstadoPrograma { get; set; }
        public string NivelAcadamico { get; set; }
        public string ReconocimientoMinisterio { get; set; }
        public int IdNivelFormacion { get; set; }
        public int IdMetodologia { get; set; }
        public int IdAreaConocimiento { get; set; }
        public float Precio { get; set; }
        public int Ponderado { get; set; }

        clConexion objConexion = new clConexion();

        public int mtdRegistrarCarreras()
        {

            string consulta = "insert into Programas NombrePrograma, EstadoPrograma, NivelAcademico, ReconocimientoMinisterio, IdNivelFormacion, IdMetodologia, IdAreaConocimiento, Precio, Ponderado" +
                "values ('" + NombrePrograma + "', '" + EstadoPrograma + "', '" + NivelAcadamico + "', '" + ReconocimientoMinisterio + "', '" + IdNivelFormacion + "', '" + IdAreaConocimiento + "', '" + Precio + "', '" + Ponderado + "' ) ";

            int res = objConexion.mtdConectado(consulta);

            return res;
        }

        public int mtdEditarCarreras()
        {
            string consulta = "update Programas set NombrePrograma = '" + NombrePrograma + "',EstadoPrograma = '" + EstadoPrograma + "' ,NivelAcademico = '" + NivelAcadamico + "' ,ReconocimientoMinisterio = '" + ReconocimientoMinisterio + "' ,IdNivelFormacion  =  '" + IdNivelFormacion + "',IdMetodologia = '" + IdMetodologia + "',IdAreaConocimiento = '" + IdAreaConocimiento + "',Precio = '" + Precio + "',Ponderado '" + Ponderado + "' where IdProgramas = '" + IdProgramas + "' ";
            int res = objConexion.mtdConectado(consulta);
            return res;
        }


    }
}