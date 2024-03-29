﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="DGVInstituciones.aspx.cs" Inherits="WebAppAWIES.DGVInstituciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <style>
        h5 {
            text-align: right;
            padding-top: 5%;
            padding-bottom: 5%;
        }

        #tex1{
            padding-top: 3%;
            padding-bottom: 3%;
        }
        #tex2{
            padding-bottom: 3%;
        }
        #tex3{
            padding-bottom: 3%;
        }
        #tex4{
            padding-bottom: 3%;
        }
        #tex5{
            padding-bottom: 3%;
        }
        #tex6{
            padding-bottom: 3%;
        }
        #tex7{
            padding-bottom: 3%;
        }
        #tex8{
            padding-bottom: 3%;
        }
        #tex9{
            padding-bottom: 3%;
        }
        #tex10{
            padding-bottom: 3%;
        }
    </style>

    <!-- Start Align Area -->

    <div class="section-top-border">
        <h3>Datos Generales</h3>
        <asp:Button ID="Button1" runat="server" Text="Editar" class="genric-btn primary circle arrow" OnClick="Button1_Click" />

        <div class="row">

            <div class="col-md-4">

                <div class="mt-10">
                    <h5>Codigo Institucional</h5>
                </div>
                <div class="mt-10">
                    <h5>Nombre Institucion</h5>
                </div>
                <div class="mt-10">
                    <h5>Nit</h5>
                </div>
                <div class="mt-10">
                    <h5>Sector</h5>
                </div>

                <div class="mt-10">
                    <h5>Acreditada</h5>
                </div>
                <div class="mt-10">
                    <h5>Principal/Seccional</h5>
                </div>
                <div class="mt-10">
                    <h5>Departamento</h5>
                </div>
                <div class="mt-10">
                    <h5>Municipio</h5>
                </div>
                <div class="mt-10">
                    <h5>Caracter Academico</h5>
                </div>
                <div class="mt-10">
                    <h5>Correo</h5>
                </div>
                <div class="mt-10">
                    <h5>Contraseña</h5>
                </div>
            </div>
            <div class="col-md-6">

                <div class="mt-10" id="tex1">
                   <asp:Label ID="Codigo" runat="server" type="text" name="Codigo" BackColor="#E9F4F5" Height="30px" Width="80%" ></asp:Label>
                </div>

                <div class="mt-10" id="tex2">
                   <asp:Label ID="Nombre" runat="server" type="text" name="Codigo"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>

                </div>

                <div class="mt-10" id="tex3">
                  <asp:Label ID="Nit"  runat="server" type="text" name="Codigo" BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>
             
                </div>

                <div class="mt-10" id="tex4">
                    <asp:Label ID="sec" runat="server" Text="Label"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>
                </div>
                <div class="mt-10"id="tex5">
                        <asp:Label ID="acre" runat="server" Text="Label"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>
                    </div>

                <div class="mt-10" id="tex6">
                    <asp:Label ID="pri" runat="server" BorderStyle="None"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>
                 
                </div>

                <div class="mt-10" id="tex7">
                   <asp:Label ID="departamento" runat="server" BorderStyle="None"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>
                    
                </div>
                <div class="mt-10" id="tex8">
                     <asp:Label ID="municipio" runat="server"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>

                </div>
                <div class="mt-10" id="tex9">
                     <asp:Label ID="caracter" runat="server" BorderStyle="None"  BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>

                </div>

                <div class="mt-10" id="tex10">
                   <asp:Label ID="Correo" runat="server" type="text" name="Codigo" BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>

                </div>
                <div class="mt-10" id="tex11">

                    <asp:Label ID="Contraseña"  runat="server" type="text" name="Codigo" BackColor="#E9F4F5" Height="30px" Width="80%"></asp:Label>

                </div>
            </div>
            </div>
        
    </div>

    <!-- End Align Area -->

</asp:Content>



