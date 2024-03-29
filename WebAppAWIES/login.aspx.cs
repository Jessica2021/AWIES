﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebAppAWIES.Datos;

namespace WebAppAWIES
{
    public partial class login : System.Web.UI.Page
    {
       SqlConnection objConexion = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\bdAwies.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnInicio_Click(object sender, EventArgs e)
        {

            string usu = Request.Form["correo"];
            string con = Request.Form["contraseña"];


            objConexion.Open();
            string query = "select IdUniversidades, Correo,Contraseña,Codigo,EstadoSolicitud from Universidades where Correo = @usuario and Contraseña = @password";
            SqlCommand cm = new SqlCommand(query, objConexion);
            cm.Parameters.AddWithValue("@usuario", usu);
            cm.Parameters.AddWithValue("@password", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cm);
            DataTable login = new DataTable();
            adapter.Fill(login);

            

            if (login.Rows.Count == 1)
            {
                if (login.Rows[0][1].ToString() == "awies.adsi@gmail.com" && login.Rows[0][2].ToString() == "admin")
                {
                    Response.Redirect("Notificaciones.aspx");
                }

                else if (login.Rows[0][3].ToString() == "" && login.Rows[0][4].ToString() == "Aprobado")
                {
                    Application["Id"] = login.Rows[0][0].ToString();
                    Response.Redirect("Registrar.aspx");
                    
                }
                else if (login.Rows[0][3].ToString() != "" && login.Rows[0][4].ToString() == "Aprobado")
                {
                    Application["Id"] = login.Rows[0][0].ToString();
                    Response.Redirect("IndexInstitucion.aspx");
                }
               

            }
            
            else
            {
                LblError.Text = "Usuario y/o Contraseña incorrectos";
            }
            objConexion.Close();

        }
    }

       
           
        

    
}