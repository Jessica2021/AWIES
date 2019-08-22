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
                    <asp:TextBox ID="TextBox1" runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Codigo'"  class="single-input-primary"></asp:TextBox>
		        </div>
            <div class="mt-10">
            <h5>Principal/Seccional<asp:Label ID="Label1" runat="server"></asp:Label>
                </h5>
                <div class="default-select" id="default-select">
			        
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Principal</asp:ListItem>
                            <asp:ListItem>Seccional</asp:ListItem>
                        </asp:DropDownList>
			           
		        </div>
            </div>
            <div class="mt-10">
            <h5>Sector</h5>
                <div class="default-select" id="Sector">
                    
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem>Oficial</asp:ListItem>
                            <asp:ListItem>Privada</asp:ListItem>
                        </asp:DropDownList>
                    
                </div>
            </div>
            <div class="mt-10">
            <h5>¿Acreditada de alta Calidad?</h5>
                <div class="default-select" id="Acreditada">
                    
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    
                </div>
            </div>
                
            <div class="mt-10">
            <h5>Departamento</h5>
                <div class="default-select" id="Departamento">
                    
                        <asp:DropDownList ID="DropDownList3" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource1" DataTextField="Departamento" DataValueField="IdDepartamento" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                  
                </div>
            </div>
            <div class="mt-10">
            <h5>Municipio</h5>
                <div class="default-select" id="Municipio">
                    
                        
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Municipio" DataValueField="IdMunicipio" DataMember="DefaultView" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdMunicipio], [Municipio] FROM [Municipio] WHERE ([IdDepartamento] = @IdDepartamento)">
                        
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" DefaultValue="1" Name="IdDepartamento" PropertyName="SelectedValue" />
                        </SelectParameters>
                        
                    </asp:SqlDataSource>
                        
                </div>
            </div>
            <div class="mt-10">
            <h5>Caracter Academico</h5>
                <div class="default-select" id="CaracterAcademico">
                   
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="CaracterAcademico" DataValueField="IdCaracterAcademico" DataMember="DefaultView"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CaracterAcademico, IdCaracterAcademico FROM CaracterAcademico" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
                    
                </div>
            </div>
            <br />
               <asp:Button ID="Button1" runat="server"  class="genric-btn success" Text="Registrar" Height="29px" OnClick="Button1_Click1" />
                
				
            </div>
            <div class="col-md-4">
            </div>
            
					</div>
					</form>

		
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
