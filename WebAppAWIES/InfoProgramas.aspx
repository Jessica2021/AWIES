<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InfoProgramas.aspx.cs" Inherits="WebAppAWIES.Formulario_web15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <style>
        h5 {
            text-align: right;
            padding-top: 3%;
            padding-bottom: 3%;

        }


         #cont{
            border-radius: 11px 11px 11px 11px;
            background-color:#C1ECFA ;
        }

        .auto-style1 {

            margin-left:20%;
            margin-right:20%;

            position: relative;
            width: 60%;
            min-height: 1px;
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            text-align: center;
            padding-left: 15px;Response.Write("<script>window.open ('NewQuote.aspx?val=" + txtQuotationNo.Text+"','_blank');</script>");
            padding-right: 15px;
        }
         .auto-style2 {
             font-size: x-large;
         }
         .auto-style3 {
             margin-top: 10px;
             text-align: left;
         }
    </style>

    <!-- Start Align Area -->
    <hr style="border: medium solid #000080" />
     <h2 class="text-sm-center">Informacion General del Programa</h2>
     <hr style="border: medium solid #000080" />

    <div id="cont" class="auto-style1">
        <div class="widget-wrap">
    <div class="section-top-border">
       
       
        <div class="row">

            <div class="col-md-4">

                <div class="mt-10">
                    <h5>Nombre del Programa: </h5>
                </div>
                <div class="mt-10">
                    <h5>Codigo Institucion: </h5>
                </div>
                <div class="mt-10">
                    <h5>Nombre Institucion: </h5>
                </div>
                <div class="mt-10">
                    <h5>Estado del Programa: </h5>
                </div>

                <div class="mt-10">
                    <h5>Nivel Academico: </h5>
                </div>
                <div class="mt-10">
                    <h5>Reconocimiento Ministerio: </h5>
                </div>
                <div class="mt-10">
                    <h5>Nivel de Formacion: </h5>
                </div>
                <div class="mt-10">
                    <h5>Metodologia: </h5>
                </div>
                <div class="mt-10">
                    <h5>Area Conocimiento: </h5>
                </div>
                <div class="mt-10">
                    <h5>Valor Matricula: </h5>
                </div>
                <div class="mt-10">
                    <h5>Numero de Creditos: </h5>
                </div>
                 <div class="mt-10">
                    <h5>Vigencia (Años)</h5>
                </div>
                 <div class="mt-10">
                    <h5>Duracion (Semestres)</h5>
                </div>
                 <div class="mt-10">
                    <h5>Titulo Otorgado: </h5>
                </div>
                 <div class="mt-10">
                    <h5>Tipo de Ingreso: </h5>
                </div>
                 <div class="mt-10">
                    <h5>Primer Puntaje de Ingresado: </h5>
                </div>
                 <div class="mt-10">
                    <h5>Ultimo Puntaje de Ingresado: </h5>
                </div>

            </div>
            <div class="col-md-6">

                <div class="auto-style3" id="tex1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Codigo" runat="server" type="text" text="Arquitectura" name="Codigo"  Height="30px" Width="80%" CssClass="auto-style2" ></asp:Label>
                </div>

               
            </div>
             
            </div>
        
    </div>
            </div>
    </div>
    <!-- End Align Area -->
</asp:Content>
