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

                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="NombrePrograma" HeaderText="NombrePrograma" SortExpression="NombrePrograma" />
                                <asp:BoundField DataField="EstadoPrograma" HeaderText="EstadoPrograma" SortExpression="EstadoPrograma" />
                                <asp:BoundField DataField="NivelAcademico" HeaderText="NivelAcademico" SortExpression="NivelAcademico" />
                                <asp:BoundField DataField="ReconocimientoMinisterio" HeaderText="ReconocimientoMinisterio" SortExpression="ReconocimientoMinisterio" />
                                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                <asp:BoundField DataField="Ponderado" HeaderText="Ponderado" SortExpression="Ponderado" />
                                <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                                <asp:BoundField DataField="Metodologia" HeaderText="Metodologia" SortExpression="Metodologia" />
                                <asp:BoundField DataField="NivelFormacion" HeaderText="NivelFormacion" SortExpression="NivelFormacion" />
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
						
					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico, Programas.ReconocimientoMinisterio, Programas.Precio, Programas.Ponderado, Area.Area, Metodologia.Metodologia, NivelFormacion.NivelFormacion FROM Programas INNER JOIN Area ON Programas.IdAreaConocimiento = Area.IdArea INNER JOIN Metodologia ON Programas.IdMetodologia = Metodologia.IdMetodologia INNER JOIN NivelFormacion ON Programas.IdNivelFormacion = NivelFormacion.IdNivelFormacion"></asp:SqlDataSource>
						
					</div>
					
				</div>
				
			</div>
		</div>
	</section>
	<!--######## End post-content Area ########-->
</asp:Content>
