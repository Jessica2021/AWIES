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

            h1{
    color: white;
    padding-top: 50px;

}

h3{
	color: #2E2E2E;
	font-size: 40px;
	font-family: calibri;

}

p{
	color: #151515;
	font-size: 30px;
	font-family: calibri;
}

img.icono{
	width: 100px;
    float: left;

}

img.ser{
    width: 100px;
    float: left;
}

div.tec{
  
   float:left;
}

.tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    font-size: 15px;
    width: 30%;
}

.tablink:hover {
    background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
    color: white;
    display: none;
    padding: 50px 20px;
    height: 100%;
}

#icfes {
      border-radius: 11px 11px 11px 11px;
      border: 5px solid #006C90;
      background-color:#FFFFFF ;

}

#ponde {
border-radius: 11px 11px 11px 11px;
      border: 5px solid #008BB9;
      background-color:#FFFFFF ;

}

#puntaje {
border-radius: 11px 11px 11px 11px;
      border: 5px solid #00B4F0;
      background-color:#FFFFFF ;
}

#tit{
    color:white;
    margin-bottom:20px;
    font-size:25px;
}

    </style>


</head>

    

<body>

	<!-- Start Align Area -->
    
	 <form id="form1" runat="server">
       <div class="section-top-border">
                 <div class="row">
                     <div class="col-md-2">
                         </div>
					<div id="cont" class="auto-style1">
                    
					<div class="widget-wrap">
                        <div id="imgs">
                            <img src="img/logo.png"  alt="" width="200px" height="100px" title="" />
                        </div>
						
						<div class="single-sidebar-widget user-info-widget">
							
							<h3 class="mb-30">Agregar Programas Academicos</h3>

						<form class="form-horizontal form-label-left" method="post" action="EnvioSolicitud.aspx.cs" novalidate/>
                            

                <div class="mt-10">
                     <h5>Nombre del Programa</h5>
			        <input type="text" name="Nombre" placeholder="Nombre" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nombre'"
				        required class="single-input-primary">
		        </div>
                            <div class="mt-10">
            <h5>Estado</h5>
                <div class="default-select" id="default-select" name ="Estado">
			        &nbsp;<asp:DropDownList ID="ddEstado" runat="server">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:DropDownList>
		        </div>
            </div>
            <div class="mt-10">
            <h5>Nivel Academico</h5>
                <div class="default-select" id="NivelAcademico" name ="NivelAcademico">
			        &nbsp;<asp:DropDownList ID="ddlNivelAcademico" runat="server">
                        <asp:ListItem>Posgrado</asp:ListItem>
                        <asp:ListItem>Pregrado</asp:ListItem>
                    </asp:DropDownList>
		        </div>
            </div>
            <div class="mt-10">
            <h5>Reconocimiento Ministerio</h5>
                <div class="default-select" id="Sector"  name ="ReconocimientoMin">
                    &nbsp;<asp:DropDownList ID="ddlMinisterio" runat="server">
                        <asp:ListItem>Registro de Alta Calidad</asp:ListItem>
                        <asp:ListItem>Registro Calificado</asp:ListItem>
                        <asp:ListItem>Registro Simple</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="mt-10">
            <h5>Nivel de Formacion</h5>
                <div class="default-select" id="Acreditada"  name ="NivelFormacion">
                    &nbsp;<asp:DropDownList ID="ddlNivelFormacion" runat="server" DataSourceID="SqlDataSource1" DataTextField="NivelFormacion" DataValueField="IdNivelFormacion">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NivelFormacion] WHERE [IdNivelFormacion] = @IdNivelFormacion" InsertCommand="INSERT INTO [NivelFormacion] ([NivelFormacion]) VALUES (@NivelFormacion)" SelectCommand="SELECT * FROM [NivelFormacion]" UpdateCommand="UPDATE [NivelFormacion] SET [NivelFormacion] = @NivelFormacion WHERE [IdNivelFormacion] = @IdNivelFormacion">
                        <DeleteParameters>
                            <asp:Parameter Name="IdNivelFormacion" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NivelFormacion" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NivelFormacion" Type="String" />
                            <asp:Parameter Name="IdNivelFormacion" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
                
            <div class="mt-10">
            <h5>Metodologia</h5>
                <div class="default-select" id="Departamento"  name ="Departamento">
                    &nbsp;<asp:DropDownList ID="ddlMetodologia" runat="server" DataSourceID="DataMetodologia" DataTextField="Metodologia" DataValueField="IdMetodologia">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DataMetodologia" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Metodologia] WHERE [IdMetodologia] = @IdMetodologia" InsertCommand="INSERT INTO [Metodologia] ([Metodologia]) VALUES (@Metodologia)" SelectCommand="SELECT * FROM [Metodologia]" UpdateCommand="UPDATE [Metodologia] SET [Metodologia] = @Metodologia WHERE [IdMetodologia] = @IdMetodologia">
                        <DeleteParameters>
                            <asp:Parameter Name="IdMetodologia" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Metodologia" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Metodologia" Type="String" />
                            <asp:Parameter Name="IdMetodologia" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="mt-10">
            <h5>Area Conocimiento</h5>
                <div class="default-select" id="Municipio"  name ="Municipio">
                    &nbsp;<asp:DropDownList ID="ddlArea" runat="server" DataSourceID="DataArea" DataTextField="Area" DataValueField="IdArea">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DataArea" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Area]"></asp:SqlDataSource>
                </div>
            </div>
            
                <div class="mt-10">
                     <h5>Precio</h5>
			        <input type="text" name="Precio" placeholder="000.000.000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '000.000.000'"
				        required class="single-input-primary">
		        </div>
                <div class="mt-10">
                     <h5>Numero de Creditos</h5>
			        <input type="text" name="NumeroCreditos" placeholder="00.00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00.00'"
				        required class="single-input-primary">
		        </div>
              <div class="mt-10">
                     <h5>Vigencia (Por años)</h5>
			        <input type="text" name="VigenciaAños" placeholder="00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00'"
				        required class="single-input-primary">
		        </div>
                    
                 <div class="mt-10">
                     <h5>Duracion(Por semestres)</h5>
			        <input type="text" name="DuracionSemestre" placeholder="0000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '0000'"
				        required class="single-input-primary">
		        </div>
                        
                 <div class="mt-10">
                     <h5>Titulo Otorgado</h5>
			        <input type="text" name="TituloOtorgado" placeholder="Ingeniero en..." onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Ingeniero en...'"
				        required class="single-input-primary">
		        </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Registrar" class="genric-btn success" Height="41px" OnClick="Button1_Click"  />
            <a href="Index.aspx" class="genric-btn info">Inicio</a>
            </div>
            <div class="mt-10">
                            <asp:Label ID="lblCorrecto" runat="server" Text="El programa se a Registrado Correctamente" BackColor="#99CCFF" BorderColor="#000099" BorderStyle="Solid" BorderWidth="1px" ForeColor="#000099" Height="25px" Width="300px" Visible="False"></asp:Label>
				        </div>

                        <div class="mt-10">
                            <asp:Label ID="lblError" runat="server" Text="Error: No se pudo registrar" BackColor="#E18C8C" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" ForeColor="Maroon" Height="25px" Width="268px" Visible="False"></asp:Label>
				        </div>
                        </div>
                        </div>
                     

         
            <div class="col-md-4">

        <div class="col-md-12">
 
       			
		        <h3 id="tit">Tipo de Admicion de Estudiantes</h3>

        <button class="tablink" onclick="openPage('puntaje', this, '#006C90')">Icfes</button>
        <button class="tablink" onclick="openPage('puntaje', this, '#008BB9')" id="defaultOpen">Ponderado</button>
        <button class="tablink" onclick="openPage('puntaje', this, '#00B4F0')">Prueba</button>
        
        <div id="puntaje" class="tabcontent">
             <br />
            <h4>Puntaje</h4>
         
        <div class="mt-10">
                     <h5>Primero</h5>
			        <input type="text" name="puntajeP" placeholder="000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '000'"
				        required class="single-input-primary">
		        </div>
                <div class="mt-10">
                     <h5>Ultimo</h5>
			        <input type="text" name="puntajeU" placeholder="000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '000'"
				        required class="single-input-primary">
		        </div>
        </div>

       <%-- <div id="ponde" class="tabcontent">
        <br />
                  <h4>Ponderado del Programa</h4>
           
        <div class="mt-10">
                     <h5>Primero</h5>
			        <input type="text" name="ponderadoP" placeholder="00.00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00.00'"
				        required class="single-input-primary">
		        </div>
                <div class="mt-10">
                     <h5>Ultimo</h5>
			        <input type="text" name="ponderadoU" placeholder="00.00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00.00'"
				        required class="single-input-primary">
		        </div>
        </div>

        <div id="prueba" class="tabcontent">
             <br />
           <h4>Prueba de Admicion</h4>

        <div class="mt-10">
                     <h5>Primero</h5>
			        <input type="text" name="pruebaP" placeholder="0000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '0000'"
				        required class="single-input-primary">
		        </div>
                <div class="mt-10">
                     <h5>Ultimo</h5>
			        <input type="text" name="pruebaU" placeholder="0000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '0000'"
				        required class="single-input-primary">
		        </div>
        </div>--%>

        
        </div>
                    </div>
            </div>
            </div>
                </div>

        </div>
            </div>
        </form>
        <script>
        function openPage(pageName,elmnt,color) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].style.backgroundColor = "";
        }
        document.getElementById(pageName).style.display = "block";
        elmnt.style.backgroundColor = color;

        }
        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpen").click();
</script>




		
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

