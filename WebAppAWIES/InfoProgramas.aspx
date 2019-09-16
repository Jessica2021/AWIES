<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="InfoProgramas.aspx.cs" Inherits="WebAppAWIES.Formulario_web15" %>

   <!DOCTYPE html>

<html>
<head runat="server">


   

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>AWIES</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery/1.6.11/css/lightgallery.min.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">

 <%--   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">--%>

   <style>
   

         h5{
             margin-top:15px;
             margin-bottom:10px;
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
            padding-left: 15px;
            Response.Write("<script>window.open ('NewQuote.aspx?val=" + txtQuotationNo.Text+"','_blank');</script>");
            padding-right: 15px;
        }
         .auto-style4 {
             font-size: small;
         }
    </style>
   

</head>
<body>
    <form id="form1" runat="server">

        <!--################ Start Header Area ########-->
	<header id="header" id="home">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-sm-6 col-4 no-padding">
						<div class="header-top-left">
							<a href="">
								<i class="fa fa-phone"></i>
								012-6532-568-9746
							</a>
						</div>
						<b>A</b>plicacion <b>W</b>eb de <b>I</b>nformacion de <b>E</b>ducacion <b>S</b>uperior
					</div>
					<div class="col-lg-5 col-sm-6 col-8 header-top-right no-padding">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
						<ul>
							<li>
								<a href="login.aspx">Iniciar Sesión</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
        </header>
		<hr> 
     

    <!-- Start Align Area -->
     
    <hr style="border: medium solid #000080" />
     <h2 class="text-sm-center">Informacion General del Programa</h2>
     <hr style="border: medium solid #000080" />

    <div id="cont" class="auto-style1">
        <div class="widget-wrap">
    <div class="section-top-border">
       
       
        <div class="row">

            <div class="col-md-12">

                <div class="mt-10" >
                    <h5>Nombre del Programa: </h5>

                    <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Nombre" runat="server" type="text"  name="Nombre"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
                </div>
                <div class="mt-10" >
                    <h5>Codigo Institucion: </h5>

                    <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Codigo" runat="server" type="text"  name="Codigo"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
                </div>
                <div class="mt-10" >
                    <h5>Nombre Institucion: </h5>

                     <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="NombreIn" runat="server" type="text" name="NombreIn"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
                </div>
                <div class="mt-10" >
                    <h5>Departamento: </h5>

                    <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Departamento" runat="server" type="text"  name="Departamento"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
             
                </div>
                <div class="mt-10" >
                    <h5>Municipio: </h5>

                       <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Municipio" runat="server" type="text"  name="Municipio"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
            
                </div>
                <div class="mt-10" >
                    <h5>Estado del Programa: </h5>

                       <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Estado" runat="server" type="text"  name="Estado"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
                </div>

                <div class="mt-10" >
                    <h5>Nivel Academico: </h5>

                    <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="NivelA" runat="server" type="text" name="NivelA"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
    
                </div>
                <div class="mt-10" >
                    <h5>Reconocimiento Ministerio: </h5>

                                <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Recono" runat="server" type="text" name="Recono"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
          
                </div>
                <div class="mt-10">
                    <h5>Nivel de Formacion: </h5>

                          <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="NivelF" runat="server" type="text" name="NivelF"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
                </div>
                <div class="mt-10">
                    <h5>Metodologia: </h5>

                       <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Metodo" runat="server" type="text" name="Metodo"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
         
                </div>
                <div class="mt-10">
                    <h5>Area Conocimiento: </h5>

                           <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="AreaC" runat="server" type="text" name="AreaC"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
            
                </div>
                <div class="mt-10">
                    <h5>Valor Matricula: </h5>

                        <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Valo" runat="server" type="text" name="Valo"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
     
                </div>
                <div class="mt-10">
                    <h5>Numero de Creditos: </h5>

                               <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Numero" runat="server" type="text" name="Numero"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
      
                </div>
                 <div class="mt-10">
                    <h5>Vigencia (Años)</h5>

                               <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Vigencia" runat="server" type="text" name="Vigencia"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
            
                </div>
                 <div class="mt-10">
                    <h5>Duracion (Semestres)</h5>

                         <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Duracion" runat="server" type="text" name="Duracion"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
               
                </div>
                 <div class="mt-10">
                    <h5>Titulo Otorgado: </h5>

                      <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Titulo" runat="server" type="text" name="Titulo"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
              
                </div>
                 <div class="mt-10">
                    <h5>Tipo de Ingreso: </h5>

                       <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Tipo" runat="server" type="text" name="Tipo"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
          
                </div>
                 <div class="mt-10">
                    <h5>Primer Puntaje de Ingresado: </h5>

                           <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Primero" runat="server" type="text" name="Primero"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
             
                </div>
                 <div class="mt-10">
                    <h5>Ultimo Puntaje de Ingresado: </h5>
                        <div class="text-sm-center" id="contene1" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Ultimo" runat="server" type="text" name="Ultimo"  Height="30px" Width="100%" CssClass="auto-style4" ></asp:Label>
                </div>
                </div>

            </div>
             
            </div>
        
    </div>
            </div>
    </div>

    <!-- End Align Area -->
        </form>
        </body>

        	<script src="js/vendor/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.lightbox.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</html>