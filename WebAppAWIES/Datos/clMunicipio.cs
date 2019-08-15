using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clMunicipio
    {
        public int IdMunicipio { get; set; }
        public string Municipio { get; set; }
        public int IdDepartamento { get; set; }

        clConexion objConexion = new clConexion();

        public DataSet mtdListaMunicipio()
        {
            string Consulta = "select IdMunicipio, Municipio, Departamento.IdDepartamento from Municipio inner joing Departamento on (Municipio.IdDepartamento = Departamento.IdDepartamento )";
            DataSet dsMunicipio = new DataSet();
            dsMunicipio = objConexion.mtdDesconectado(Consulta);
            return dsMunicipio;
        }
    }
}