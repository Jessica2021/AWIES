<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EnvioSolicitud.aspx.cs" Inherits="WebAppAWIES.EnvioSolicitud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section-top-border">
				<div class="row">
                    <div class="col-md-4">
                        </div>
					<div class="col-md-4">
					<div class="widget-wrap">
						
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
							
						    <button  class="genric-btn success" type="submit">
                            Enviar Solicitud
                            </button>
						</form>
                    </div>
                </div>
             </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>
    


</asp:Content>
