<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="WebAppAWIES.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
							<a class="posts-title" href="blog-single.html"><h3>SOLICITUDES</h3>
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
	
</asp:Content>
