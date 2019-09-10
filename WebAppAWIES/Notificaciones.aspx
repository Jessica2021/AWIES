<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="WebAppAWIES.Registrar" %>
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

    <style>
       #cont{
           margin-top:50px;
           margin-left:30px;
           margin-bottom:200px;
       }
       #conten{c
           position:relative;
       }
        .auto-style1 {
            margin-top: 0;
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
                                <asp:Button ID="BtmCerrar" runat="server" Text="Cerrar Sesión" BackColor="White" BorderColor="White" BorderStyle="None" CssClass="auto-style1" Height="42px" OnClick="BtmCerrar_Click" Width="145px" />
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
        </header>
        
		<hr/>
	<!--######## Start post-content Area ########-->
	<section class="post-content-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 posts-list">
					<div class="single-post row">
							<div class="col-lg-3  col-md-3 meta-details">
							<ul class="tags">
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
							<div class="user-details row">
							<asp:Button ID="Button2" class="genric-btn danger radius" runat="server" OnClick="Button2_Click" Text="Eliminar" />
			                 <asp:Button ID="Button1" class="genric-btn primary radius" runat="server" OnClick="Button1_Click" Text="Aceptar" />
							</div>
						</div>
						<div class="col-lg-9 col-md-9 ">
							<a class="posts-title"><h3>SOLICITUDES</h3>
                                <asp:Label ID="lblError" runat="server" Text="Error: No se puede eliminar este campo" BackColor="#E18C8C" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" ForeColor="Maroon" Height="25px" Width="334px" Visible="False"></asp:Label>
							</a>
                            <p class="excert">
				                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUniversidades" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="width: 751px; height: 157px; position: absolute; left: 27px; top: 106px; right: 291px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="IdUniversidades" HeaderText="IdUniversidades" SortExpression="IdUniversidades" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="NombreInstitucion" HeaderText="NombreInstitucion" SortExpression="NombreInstitucion" />
                                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                                            <asp:BoundField DataField="Nit" HeaderText="Nit" SortExpression="Nit" />
                                            <asp:BoundField DataField="EstadoSolicitud" HeaderText="EstadoSolicitud" SortExpression="EstadoSolicitud" Visible="False" />
                                        </Columns>
                                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                    </asp:GridView>
							</p>
						</div>
                        
								<asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="16px" Visible="False"></asp:TextBox>
                                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="16px" Visible="False"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
					</div>
                            
				     
                    <br />
                     <br />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdUniversidades], [NombreInstitucion], [Correo], [Contraseña], [Nit], [EstadoSolicitud] FROM [Universidades] WHERE ([EstadoSolicitud] IS NULL)" DeleteCommand="DELETE FROM [Universidades] WHERE [IdUniversidades] = @IdUniversidades" InsertCommand="INSERT INTO [Universidades] ([NombreInstitucion], [Correo], [Contraseña], [Nit], [EstadoSolicitud]) VALUES (@NombreInstitucion, @Correo, @Contraseña, @Nit, @EstadoSolicitud)" UpdateCommand="UPDATE Universidades SET EstadoSolicitud = @EstadoSolicitud WHERE (IdUniversidades = @IdUniversidades)">
                                        <DeleteParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="IdUniversidades" PropertyName="Text" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="NombreInstitucion" Type="String" />
                                            <asp:Parameter Name="Correo" Type="String" />
                                            <asp:Parameter Name="Contraseña" Type="String" />
                                            <asp:Parameter Name="Nit" Type="String" />
                                            <asp:Parameter Name="EstadoSolicitud" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter DefaultValue="Aprobado" Name="EstadoSolicitud" Type="String" />
                                            <asp:ControlParameter ControlID="TextBox1" Name="IdUniversidades" PropertyName="Text" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                    <br />
                     <br />
                     <br />
                     <br />
                     <br />
                                
                     <br />
                     <br />
                    </div>
                
				
				</div>
		</div>
	</section>
	<!--######## End post-content Area ########-->
        
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