<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Institucion.aspx.cs" Inherits="WebAppAWIES.Institucion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	

	<!--######## Start post-content Area ########-->
	<section class="post-content-area">
		<div class="container">
			<div class="row">
                <div class="col-lg-4 sidebar-widgets" style="left: 0px; top: 0px; height: 866px">
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
                    <br />
                    <br />
                </div>
            </div></div>
				</div>
                    </div>
				<div class="col-lg-8 posts-list">
					<div class="single-post row">

                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" CssClass="position-absolute" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="width: 205px; height: 174px; left: 0px; top: 24px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle   BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
						
                        <asp:Label ID="mensaje" runat="server" Text="No se encontraron resultados!!!" Font-Size="Large" ForeColor="#000099" Visible="False"></asp:Label>

					    <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdUniversidades" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="IdUniversidades" HeaderText="IdUniversidades" InsertVisible="False" ReadOnly="True" SortExpression="IdUniversidades" />
                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                <asp:BoundField DataField="Sector" HeaderText="Sector" SortExpression="Sector" />
                                <asp:BoundField DataField="PrincipalSeccional" HeaderText="PrincipalSeccional" SortExpression="PrincipalSeccional" />
                                <asp:BoundField DataField="NombreInstitucion" HeaderText="NombreInstitucion" SortExpression="NombreInstitucion" />
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <br />
						
					    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdUniversidades], [Codigo], [Sector], [PrincipalSeccional], [NombreInstitucion] FROM [Universidades]"></asp:SqlDataSource>
						
					</div>
					
				</div>
				
			</div>
		</div>
	</section>
	<!--######## End post-content Area ########-->
    
   
</asp:Content>
