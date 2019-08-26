<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Institucion.aspx.cs" Inherits="WebAppAWIES.Institucion" %>
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
							<h4 class="tagcloud-title">Filtrar Por Departamento</h4>
                             <div class="mt-10">
            <h5>Departamento</h5>
                <div class="default-select" id="Departamento">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Departamento" DataValueField="IdDepartamento" AutoPostBack="True"></asp:DropDownList>
                </div>
            </div>
							<div class="mt-10">
            <h5>Municipio</h5>
                <div class="default-select" id="Municipio">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Municipio] WHERE ([IdDepartamento] = @IdDepartamento)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="IdDepartamento" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Municipio" DataValueField="IdMunicipio" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>  
                </div>
            </div></div>
				</div>
                    </div>
				<div class="col-lg-8 posts-list">
					<div class="single-post row">

                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
						
					</div>
					
				</div>
				
			</div>
		</div>
	</section>
	<!--######## End post-content Area ########-->
    
   
</asp:Content>
