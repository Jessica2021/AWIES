<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="VerInfoProgramas.aspx.cs" Inherits="WebAppAWIES.Formulario_web14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        h5 {
            text-align: right;
            padding-top: 2%;
            padding-bottom: 3%;
        }

        
    </style>

    <!-- Start Align Area -->

    <div class="section-top-border">
        <h3>Datos Generales</h3>
    
        <div class="row">

           <div class="col-md-4">

                <div class="mt-10">
                    <h5>Nombre del Programa: </h5>
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

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Nombre"  runat="server" type="text" name="Codigo" Height="30px" Width="80%" CssClass="auto-style2" ></asp:Label>
                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Estado" runat="server" type="text" name="Codigo"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                  <asp:Label ID="NivelA"  runat="server" type="text" name="Codigo" Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
             
                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                    <asp:Label ID="Recono" runat="server"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                        <asp:Label ID="NivelF" runat="server"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                    </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                    <asp:Label ID="Metodo" runat="server" BorderStyle="None"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                 
                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="AreaC" runat="server" BorderStyle="None"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                    
                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Valo" runat="server"  BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Numero" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Vigencia" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Duracion" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Titulo" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Tipo" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Primero" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="Ultimo" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
               
            </div>
            </div>
        
    </div>
            </div>
    </div>
    <!-- End Align Area -->


</asp:Content>
