<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Programas.aspx.cs" Inherits="WebAppAWIES.Programas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<style>
.bbtns
    {
    cursor:pointer;
    }
        </style>

	<!--######## Start post-content Area ########-->
	<section class="post-content-area">
		<div class="container">
			<div class="row">
                <div class="col-lg-4 sidebar-widgets">
					<div class="widget-wrap">
							<div class="single-sidebar-widget newsletter-widget">
							<h4 class="newsletter-title">Busqueda</h4>
							<p>
								Programas de Instituciones de Educacion Superior
							</p>
							<div class="form-group d-flex flex-row">
								<div class="col-autos">
									<div class="input-group" style="left: 0px; top: 0px; width: 99%">
										<div class="input-group-prepend">
                                            <asp:TextBox ID="txbBuscar" runat="server" class="form-control" name="search"  placeholder="Buscar..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Buscar...'" style="width: 82%"></asp:TextBox>
                                          	
									  <asp:Button ID="btnBuscar" class="bbtns" runat="server" Text="Buscar" style="left: 46px; top: 196px" BorderStyle="None" Height="37px" Width="86px" OnClick="btnBuscar_Click" />
                                            </div>
                                         
                                    </div>
                                
								</div>
                                
								<%--<a href="#" class="bbtns"><i class="fa fa-search"></i></a>--%>
							</div>
							<p class="text-bottom">
								Escribe Nombre del Programa
							</p>
						</div>
						<div class="single-sidebar-widget post-category-widget">
							<h4 class="category-title">Nivel de Formacion</h4>
							<ul class="cat-list">
								<li>
									<a href="#" class="d-flex justify-content-between">
										<p>Universitaria</p>
										<p>37</p>
									</a>
								</li>
								<li>
									<a href="#" class="d-flex justify-content-between">
										<p>Tecnológica</p>
										<p>24</p>
									</a>
								</li>
								<li>
									<a href="#" class="d-flex justify-content-between">
										<p>Postdoctorado</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Maestría</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Formacion Tecnica Profecional</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Especializacion Universitaria</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Especializacion Tecnológica</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Especializacion Técnica Profecional</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Especializacion Médico Quirúrgica</p>
										<p>59</p>
									</a>
								</li>
                                <li>
									<a href="#" class="d-flex justify-content-between">
										<p>Doctorado</p>
										<p>59</p>
									</a>
								</li>
							
							</ul>
						</div>
				
						<div class="single-sidebar-widget tag-cloud-widget">
							<h4 class="tagcloud-title">Filtrar</h4>
							<ul>
								<li><a href="#">PRIVADO</a></li>
								<li><a href="#">PUBLICO</a></li>
								<li><a href="#">Food</a></li>
								<li><a href="#">Technology</a></li>
								<li><a href="#">Lifestyle</a></li>
								<li><a href="#">Art</a></li>
								<li><a href="#">Adventure</a></li>
								<li><a href="#">Food</a></li>
								<li><a href="#">Lifestyle</a></li>
								<li><a href="#">Adventure</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 posts-list">
					<div class="single-post row">

					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico, Programas.ReconocimientoMinisterio, Programas.Precio, Programas.Ponderado, Area.Area, Metodologia.Metodologia, NivelFormacion.NivelFormacion FROM Programas INNER JOIN Area ON Programas.IdAreaConocimiento = Area.IdArea INNER JOIN Metodologia ON Programas.IdMetodologia = Metodologia.IdMetodologia INNER JOIN NivelFormacion ON Programas.IdNivelFormacion = NivelFormacion.IdNivelFormacion"></asp:SqlDataSource>
						
					    <br />
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                        <br />
                        dd</div>
					
				</div>
				
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
	</section>
	<!--######## End post-content Area ########-->
</asp:Content>
