<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Institucion.aspx.cs" Inherits="WebAppAWIES.Muro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	

	<!--######## Start post-content Area ########-->
	<section class="post-content-area">
		<div class="container">
			<div class="row">
                <div class="col-lg-4 sidebar-widgets">
					<div class="widget-wrap">
							<div class="single-sidebar-widget newsletter-widget">
							<h4 class="newsletter-title">Busqueda</h4>
							<p>
								Instituciones de Educacion Superior
							</p>
							<div class="form-group d-flex flex-row">
								<div class="col-autos">
									<div class="input-group" style="left: 0px; top: 0px; width: 99%">
										<div class="input-group-prepend">
                                            <asp:TextBox ID="txtBuscar" runat="server" class="form-control" name="search"  placeholder="Buscar..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Buscar...'" style="width: 82%"></asp:TextBox>
                                          	
									  <asp:Button ID="btnBuscar" class="bbtns" runat="server" Text="Buscar" style="left: 46px; top: 196px" BorderStyle="None" Height="37px" Width="86px" OnClick="btnBuscar_Click" />
                                            </div>
                                         
                                    </div>
                                
								</div>
         
								
							</div>
							<p class="text-bottom">
								Escribe Nombre de la Universidad o Institucion
							</p>
						</div>
						<div class="single-sidebar-widget post-category-widget">
							<h4 class="category-title">Caracter Academico</h4>
							<ul class="cat-list">
								<li>
									
                                    <asp:Button ID="btnBuscUniver" runat="server"  class="d-flex justify-content-between" Text="Carreras Universitarias"  BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscUniver_Click" />
                                    <asp:Label ID="numUniver" runat="server" Text="37" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
								
								<li>
									 <asp:Button ID="btnBucTec" runat="server"  class="d-flex justify-content-between" Text="Tecnicos"  BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscTecn_Click" />
                                    <asp:Label ID="Label1" runat="server" Text="24" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
								<li>
									 <asp:Button ID="BtmBusTecn" runat="server"  class="d-flex justify-content-between" Text="Tecnologos"  BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscTecnolo_Click" />
                                    <asp:Label ID="Label2" runat="server" Text="59" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
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

                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
						
					</div>
					
				</div>
				
			</div>
		</div>
	</section>
	<!--######## End post-content Area ########-->
    
   
</asp:Content>
