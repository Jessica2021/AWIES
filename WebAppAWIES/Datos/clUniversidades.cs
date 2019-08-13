using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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
    }
}