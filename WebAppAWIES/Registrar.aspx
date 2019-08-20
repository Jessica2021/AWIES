<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="WebAppAWIES.Registrar1" %>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->| 
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
	<title>Registrar</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">
    <style>
        .container{
            margin-top:50px;
        }

        body{
            background-color:#345F6D;
        }
        h5{
            margin-top:20px;
            text-align:left;
        }
        #cont{
            border-radius: 11px 11px 11px 11px;
            background-color:#C1ECFA ;
        }
    </style>

</head>

    

<body>

	<p>
        <br />
    </p>

	<!-- Start Align Area -->
    
	<form id="form1" runat="server">
       
             <div class="section-top-border">
                 
				<div class="row">
                    <div class="col-md-4">
                        </div>
					<div  id="cont" class="col-md-4">
					<div  class="widget-wrap">
                        <div id="imgs">
                            <img src="img/logo.png"  alt="" width="200px" height="100px" title="" />
                        </div>
						<div class="single-sidebar-widget user-info-widget">
            <h3 class="mb-30">Registrar</h3>
                <div class="mt-10">
                     <h5>Codigo de Institucion</h5>
			        <input type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Codigo'"
				        required class="single-input-primary">
		        </div>
            <div class="mt-10">
            <h5>Principal/Seccional</h5>
                <div class="default-select" id="default-select">
			        <select>
                        <option value="1 ">Principal</option>
				        <option value="1 ">Seccional</option>
									
			        </select>
		        </div>
            </div>
            <div class="mt-10">
            <h5>Sector</h5>
                <div class="default-select" id="Sector">
                    <select>
	                    <option value="1 ">Privada</option>
	                    <option value="1 ">Publica</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            <h5>¿Acreditada de alta Calidad?</h5>
                <div class="default-select" id="Acreditada">
                    <select>
	                    <option value="1 ">Si</option>
	                    <option value="1 ">No</option>
                    </select>
                </div>
            </div>
                
            <div class="mt-10">
            <h5>Departamento</h5>
                <div class="default-select" id="Departamento">
                    <select>
	                    <option value="1 ">Boyaca</option>
	                    <option value="1 ">Antioquia</option>
	                    <option value="1 ">Arabic</option>
	                    <option value="1 ">Portuguise</option>
	                    <option value="1 ">Bengali</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            <h5>Municipio</h5>
                <div class="default-select" id="Municipio">
                    <select>
	                    <option value="1 ">Sogamoso</option>
	                    <option value="1 ">Duitama</option>
	                    <option value="1 ">Arabic</option>
	                    <option value="1 ">Portuguise</option>
	                    <option value="1 ">Bengali</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            <h5>Caracter Academico</h5>
                <div class="default-select" id="CaracterAcademico">
                    <select>
	                    <option value="1 ">Universidad</option>
	                    <option value="1 ">Institucion Tecnica Profecional</option>
	                    <option value="1 ">Institucion Tecnologica</option>
                    </select>
                </div>
            </div>
            <br />
           <button  class="genric-btn success" type="submit">
                Enviar Solicitud
            </button>
				
            </div>
            <div class="col-md-4">
            </div>
            
					</div>
					</form>
					</div>

		
	<!-- End Align Area -->

	

	<script src="js/vendor/jquery.min.js "></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js " integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q "
	 crossorigin="anonymous "></script>
	<script src="js/vendor/bootstrap.min.js "></script>
	<script type="text/javascript " src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA "></script>
	<script src="js/easing.min.js "></script>
	<script src="js/hoverIntent.js "></script>
	<script src="js/superfish.min.js "></script>
	<script src="js/jquery.ajaxchimp.min.js "></script>
	<script src="js/jquery.magnific-popup.min.js "></script>
	<script src="js/owl.carousel.min.js "></script>
	<script src="js/isotope.pkgd.min.js "></script>
	<script src="js/owl.carousel.min.js "></script>
	<script src="js/jquery.nice-select.min.js "></script>
	<script src="js/mail-script.js "></script>
	<script src="js/main.js "></script>
</body>

</html>
