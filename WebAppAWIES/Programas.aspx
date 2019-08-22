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
                                    <asp:Button ID="btnBuscUniver" runat="server" Text="Universitaria" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscUniver_Click" />
                                    <asp:Label ID="numUniver" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
								<li>
                                  <asp:Button ID="btnBuscTecno" runat="server" Text="Tecnologica" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscTecno_Click" />
                                    <asp:Label ID="numTecno" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								  
								</li>
								<li>
									<asp:Button ID="btnBuscPostd" runat="server" Text="Postdoctorado" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscPostd_Click" />
                                    <asp:Label ID="numPostd" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscMaest" runat="server" Text="Maestria" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscMaest_Click" />
                                    <asp:Label ID="numMaest" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscTecProfe" runat="server" Text="Formacion Tecnica Profecional" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscTecProfe_Click" />
                                    <asp:Label ID="numTecProfe" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscEspUni" runat="server" Text="Especializacion Univercitaria" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscEspUni_Click" />
                                    <asp:Label ID="numEspUni" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscEspTecno" runat="server" Text="Especializacion Tecnologica" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscEspTecno_Click" />
                                    <asp:Label ID="numEspTecno" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscEspProfe" runat="server" Text="Especializacion Tecnica Profecional" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscEspProfe_Click" />
                                    <asp:Label ID="numEspProfe" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscEspMedic" runat="server" Text="Especializacion Medico Quirúrgica" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscEspMedic_Click" />
                                    <asp:Label ID="numEspMedic" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
                                <li>
									<asp:Button ID="btnBuscEspDocto" runat="server" Text="Doctorado" class="d-flex justify-content-between" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" style="height: 22px" OnClick="btnBuscEspDocto_Click" />
                                    <asp:Label ID="numEspDocto" runat="server" Text="25" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
								</li>
							
							</ul>
						</div>
				
						<div class="single-sidebar-widget tag-cloud-widget">
							<h4 class="tagcloud-title">Filtrar</h4>
                            
                            
							<ul>
                                <asp:Button ID="Button1" runat="server" Text="Button" class="genric-btn success-border medium"/>
                                <asp:Button ID="Button2" runat="server" Text="Button" class="genric-btn success-border medium"/>
                                <asp:Button ID="Button3" runat="server" Text="Button" class="genric-btn success-border medium"/>
							</ul>
                            <ul>
                                <asp:Button ID="Button4" runat="server" Text="Button" class="genric-btn success-border medium"/>
                                <asp:Button ID="Button5" runat="server" Text="Button" class="genric-btn success-border medium"/>
                                <asp:Button ID="Button6" runat="server" Text="Button" class="genric-btn success-border medium"/>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 posts-list">
					<div class="single-post row">

                        <asp:Label ID="mensaje" runat="server" Text="No se encontraron resultados!!!" Font-Size="Large" ForeColor="#000099" Visible="False"></asp:Label>

					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Programas.NombrePrograma, Programas.EstadoPrograma, Programas.NivelAcademico, Programas.ReconocimientoMinisterio, Programas.Precio, Programas.Ponderado, Area.Area, Metodologia.Metodologia, NivelFormacion.NivelFormacion FROM Programas INNER JOIN Area ON Programas.IdAreaConocimiento = Area.IdArea INNER JOIN Metodologia ON Programas.IdMetodologia = Metodologia.IdMetodologia INNER JOIN NivelFormacion ON Programas.IdNivelFormacion = NivelFormacion.IdNivelFormacion"></asp:SqlDataSource>
						
					    <br />
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                        <br />
                        </div>
					
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
