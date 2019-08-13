using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebAppAWIES.Datos
{
    public class clConexion
    {
        SqlConnection objConexion = null;

        public clConexion() //constructor
        {
            try
            {
                objConexion = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\bdAwies.mdf;Integrated Security=True");

            }
            catch (Exception error)
            {

                string salida = error.Message;
            }
        }

        public int mtdConectado(string consulta)//inset,update,delete
        {
            try
            {
                objConexion.Open();
                SqlCommand comando = new SqlCommand(consulta, objConexion);

                int resultado = comando.ExecuteNonQuery();  //toma el numero de filas afectadas

                objConexion.Close();
                return resultado;
            }
            catch (Exception)
            {

                objConexion.Close();
                return 0;
            }



        }

        public DataSet mtdDesconectado(string consulta) //select
        {
            objConexion.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, objConexion);
            //DataTable tblDatos = new DataTable(); //toma las tablas Data set, Data relation, Data row-colum, Data table
            DataSet dsDatos = new DataSet();//conjunto de datos, al devolver el dataset regresa como xml
            adaptador.Fill(dsDatos, "tblDatos"); //obtiene datos de la tabla
            objConexion.Close();

            return dsDatos;


        }
    }
}