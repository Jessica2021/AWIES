<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="WebAppAWIES.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Start Align Area -->
	<section class="whole-wrap">
		<div class="container">
			
			<div class="section-top-border">
				<h3 class="mb-30">SOLICITUDES</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
                     
						<div class="table-head">
                            
							<div class="serial">NIT</div>
							<div class="country">CORREO</div>
							<div class="visit">CONTRASEÑA</div>
							<div class="country">NOMBRE INSTITUCION</div>
                            <div class="country">ACEPTAR/ELIMINAR</div>
						</div>
						<div class="table-row">
							<div class="serial">1000001</div>
							<div class="country">julieth20@gmail.com</div>
							<div class="visit">12345</div>
                            <div class="country">SENA</div>
							<div class="country">
                                <div class="button-group-area mt-40">
				                    <a href="#" class="genric-btn primary radius">Aceptar</a>
				                    <a href="#" class="genric-btn danger radius">Eliminar</a>
			                    </div>
							</div>
							
						</div>
						</div>
					</div>
				</div>
			</div>
		
	</section>
	<!-- End Align Area -->

	
	
</asp:Content>
