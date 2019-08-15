<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarProgramas.aspx.cs" Inherits="WebAppAWIES.RegistrarProgramas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
        #Estado{
            margin-left:20px;
            margin-top:10px;
        }
    </style>

</head>

    

<body>

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
            <h3 class="mb-30">Agregar Programas Academicos</h3>
                <div class="mt-10">
                     <h5>Nombre del Programa</h5>
			        <input type="text" name="Nombre" placeholder="Nombre" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nombre'"
				        required class="single-input-primary">
		        </div>
                            <div class="mt-10">
                            <h5>Estado</h5>
                                <div id="Estado">
			                        <div class="primary-switch">
									<input type="checkbox" id="primary-switch" checked>
									<label for="primary-switch"></label>
								</div>
								</div>
                           
                                </div>
            <div class="mt-10">
            <h5>Nivel Academico</h5>
                <div class="default-select" id="default-select">
			        <select>
                        <option value="1 ">Posgrado</option>
				        <option value="1 ">Pregrado</option>
									
			        </select>
		        </div>
            </div>
            <div class="mt-10">
            <h5>Reconocimiento Ministe3rio</h5>
                <div class="default-select" id="Sector">
                    <select>
	                    <option value="1 ">Registro Alta Calidad</option>
	                    <option value="1 ">Registro Calificado</option>
                                <option value="1 ">Registro Simple</option>
                    </select>
                </div>
            </div>
            <div class="mt-10">
            <h5>Nivel de Formacion</h5>
                <div class="default-select" id="Acreditada">
                    <select>
	                    <option value="1 ">Si</option>
	                    <option value="1 ">No</option>
                    </select>
                </div>
            </div>
                
            <div class="mt-10">
            <h5>Metodologia</h5>
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
            <h5>Area Conocimiento</h5>
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
                     <h5>Precio</h5>
			        <input type="text" name="Precio" placeholder="000.000.000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '000.000.000'"
				        required class="single-input-primary">
		        </div>
                <div class="mt-10">
                     <h5>Ponderado</h5>
			        <input type="text" name="ponderado" placeholder="00.00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00.00'"
				        required class="single-input-primary">
		        </div>
            <br />
           <button  class="genric-btn success" type="submit">
                Agregar Programa
            </button>
            <a href="Index.aspx" class="genric-btn info">Inicio</a>
				
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

