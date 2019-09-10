<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="InfoInstituciones.aspx.cs" Inherits="WebAppAWIES.Formulario_web16" %>
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
            padding-left: 15px;
            padding-right: 15px;
        }
         .auto-style2 {
             font-size: medium;
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
     <h2 class="text-sm-center">Informacion General del la Institucion</h2>
     <hr style="border: medium solid #000080" />

    <div id="cont" class="auto-style1">
        <div class="widget-wrap">
    <div class="section-top-border">
       
       
        <div class="row">

           <div class="col-md-4">

                <div class="mt-10">
                    <h5>Codigo Institucional: </h5>
                </div>
                <div class="mt-10">
                    <h5>Nombre Institucion: </h5>
                </div>
                <div class="mt-10">
                    <h5>Nit: </h5>
                </div>
                <div class="mt-10">
                    <h5>Sector: </h5>
                </div>

                <div class="mt-10">
                    <h5>Acreditada: </h5>
                </div>
                <div class="mt-10">
                    <h5>Principal/Seccional: </h5>
                </div>
                <div class="mt-10">
                    <h5>Departamento: </h5>
                </div>
                <div class="mt-10">
                    <h5>Municipio</h5>
                </div>
                <div class="mt-10">
                    <h5>Caracter Academico: </h5>
                </div>
               
            </div>
            <div class="col-md-6">

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Codigo"  runat="server" type="text" name="Codigo" Height="30px" Width="80%" CssClass="auto-style2" ></asp:Label>
                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="Nombre" runat="server" type="text" name="Codigo"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                  <asp:Label ID="Nit"  runat="server" type="text" name="Codigo" Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
             
                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                    <asp:Label ID="sec" runat="server"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                        <asp:Label ID="acre" runat="server"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                    </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                    <asp:Label ID="pri" runat="server" BorderStyle="None"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                 
                </div>

                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                   <asp:Label ID="departamento" runat="server" BorderStyle="None"  Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>
                    
                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="municipio" runat="server"  BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

                </div>
                <div class="mt-10" style="border-bottom-style: solid; border-color: #0099FF; border-width: thin">
                     <asp:Label ID="caracter" runat="server" BorderStyle="None"   Height="30px" Width="80%" CssClass="auto-style2"></asp:Label>

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