<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="WebAppAWIES.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Start Align Area -->
	<section class="whole-wrap">
		<div class="container">
			
			<div class="section-top-border">
				<h3 class="mb-30">SOLICITUDES</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
                     
						<div class="table-row">
							<div class="country">
                                <div class="button-group-area mt-40">
				                    &nbsp;<br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="16px"></asp:TextBox>
                                    <br />
				                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUniversidades" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="width: 178px; height: 157px; position: absolute; left: 95px; top: 319px; right: 497px">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="IdUniversidades" HeaderText="IdUniversidades" SortExpression="IdUniversidades" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="NombreInstitucion" HeaderText="NombreInstitucion" SortExpression="NombreInstitucion" />
                                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                                            <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                                            <asp:BoundField DataField="Nit" HeaderText="Nit" SortExpression="Nit" />
                                            <asp:BoundField DataField="EstadoSolicitud" HeaderText="EstadoSolicitud" SortExpression="EstadoSolicitud" />
                                        </Columns>
                                    </asp:GridView>
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
			                        <asp:Button ID="Button1" class="genric-btn primary radius" runat="server" OnClick="Button1_Click" Text="Aceptar" />
                                    <asp:Button ID="Button2" class="genric-btn danger radius" runat="server" OnClick="Button2_Click" Text="Eliminar" />
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
