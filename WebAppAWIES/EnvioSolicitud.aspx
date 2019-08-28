<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnvioSolicitud.aspx.cs" Inherits="WebAppAWIES.EnvioSolicitud" %>

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
            .auto-style1 {
                position: relative;
                width: 100%;
                min-height: 1px;
                -ms-flex: 0 0 33.333333%;
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
                text-align: center;
                padding-left: 15px;
                padding-right: 15px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="section-top-border">
                 <div class="row">
                    <div class="col-md-4">
                        </div>
					<div id="cont" class="auto-style1">
                    
					<div class="widget-wrap">

                        

                        <div id="imgs">
                            <img src="img/logo.png"  alt="" width="200px" height="100px" title="" />
                        </div>
						
						<div class="single-sidebar-widget user-info-widget">
							
							<h3 class="mb-30">Envio Solicitud</h3>

						<form class="form-horizontal form-label-left" method="post" action="EnvioSolicitud.aspx.cs" novalidate>
                            <div class="mt-10">
                               
								<input type="text" name="correo" placeholder="ejemplo@gmail.com" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ejemplo@gmail.com'"
								 required class="single-input-primary">
							</div>
							<div class="mt-10">
                                
                                
								<input type="password" name="contraseña" placeholder="Contraseña" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Contraseña'"
								 required class="single-input-primary">
							</div>
							<div class="mt-10">
								<input type="text" name="nit" placeholder="Nit" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nit'"
								 required class="single-input-primary">
							</div>
                            <div class="mt-10">
								<input type="text" name="nombre" placeholder="Nombre Institucion" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nombre Institucion'"
								 required class="single-input-primary">
							</div>

							<br />
                            <asp:Button ID="Button1" runat="server" Text="Enviar Solicitud" class="genric-btn success" Height="43px" OnClick="Button1_Click"/>
						    
                            <a href="Index.aspx" class="genric-btn info">Volver</a>

                            <div class="mt-10">
                        <asp:Label ID="lblCorrecto" runat="server" Text="Tu Solicitus a sido enviada" BackColor="#A4D78E" BorderColor="#006600" BorderStyle="Solid" BorderWidth="1px" ForeColor="#006600" Height="26px" Width="284px" Visible="False"></asp:Label>
                    </div>
                        <div class="mt-10">
                            <asp:Label ID="lblError" runat="server" Text="Error: No se a podido enviar tu solicitud" BackColor="#E18C8C" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" ForeColor="Maroon" Height="25px" Width="268px" Visible="False"></asp:Label>
				        </div>
						</form>
                    </div>
                </div>
             </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>
        </div>
    </form>
</body>
</html>
