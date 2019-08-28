<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebAppAWIES.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        #imgs{
            text-align:center;
        }
            .auto-style2 {
                position: relative;
                width: 100%;
                min-height: 1px;
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
                margin-bottom: 0px;
                padding-left: 15px;
                padding-right: 15px;
            }
            .auto-style3 {
                width: 346px;
                height: 22px;
                position: absolute;
                left: 50px;
                top: 385px;
                right: 603px;
            }
    </style>

</head>
<body>
     <form id="form1" runat="server" >
        <div>
             <div class="section-top-border">
                 
				<div class="row">
                    <div class="col-md-4">
                        </div>
					<div id="cont" class="col-md-4">
					<div class="widget-wrap">
                        <div id="imgs">
                            <img src="img/logo.png"  alt="" width="200px" height="100px" title="" />
                        </div>
						
						<div class="single-sidebar-widget user-info-widget">
							
							<h3 class="mb-30">Iniciar Sesión</h3>

						<form class="form-horizontal form-label-left" method="post" action="EnvioSolicitud.aspx.cs" novalidate>
                            <div class="mt-10">
                               
								<input id="correo" type="text" name="correo" placeholder="ejemplo@gmail.com" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ejemplo@gmail.com'"
								 required class="single-input-primary"/>
							</div>
							<div class="mt-10">
								<input id="contraseña" type="password" name="contraseña" placeholder="Contraseña" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Contraseña'"
								 required class="single-input-primary"/>
							</div>

                                <asp:Label ID="LblError" runat="server" BorderColor="Black" CssClass="auto-style3" Font-Size="Medium" ForeColor="Red"></asp:Label>
                               
                            <div class="mt-10">
                                <asp:Button ID="Btn" runat="server" Text="Inicio Sesion" class="genric-btn success" type="submit" OnClick="BtnInicio_Click" Height="41px" Width="133px" />
                           
                           <a href="EnvioSolicitud.aspx" class="genric-btn info">Enviar Solicitud</a>
                                
                            </div>
                       
                        <br />
                        <br />
                        </form>
                    </div>
                </div>
             </div>
            <div class="auto-style2">
            </div>
        </div>
    </div>
        </div>
    </form>
</body>
</html>
