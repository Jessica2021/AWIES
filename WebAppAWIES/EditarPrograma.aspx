<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="EditarPrograma.aspx.cs" Inherits="WebAppAWIES.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        h5{
            text-align:right;
            padding-top: 5%;
            padding-bottom: 5%;
        }
    </style>

    	<!-- Start Align Area -->
     
             <div class="section-top-border">
                 <h3>Editar Programa de Formacion</h3>
               
                 <div class="row">
                     
                    <div class="col-md-4">

                        <div class="mt-10">
								<h5>Nombre Programa</h5>
							</div>
                            <div class="mt-10">
								<h5>Estado Programa</h5>
							</div>
                            <div class="mt-10">
								<h5>Nivel Academico</h5>
							</div>
							<div class="mt-10">
								<h5>Reconocimiento Ministerio</h5>
							</div>
							
                            <div class="mt-10">
								<h5>Nivel de Formacion</h5>
							</div>
                            <div class="mt-10">
								<h5>Metodologia</h5>
							</div>
                           <div class="mt-10">
								<h5>Area de Conocimiento</h5>
							</div>
                           <div class="mt-10">
								<h5>Precio</h5>
							</div>
                          <div class="mt-10">
								<h5>Numero de Creditos</h5>
							</div>
                        <div class="mt-10">
								<h5>Vigencia (Años)</h5>
							</div>
						<div class="mt-10">
								<h5>Duracion (Semestre)</h5>
						</div>
                        <div class="mt-10">
								<h5>Titulo Otorgado</h5>
						</div>
                        <div class="mt-10">
								<h5>Tipo Ingreso</h5>
						</div>
                        <div class="mt-10">
								<h5>Primero</h5>
						</div>
                        <div class="mt-10">
								<h5>Ultimo</h5>
						</div>
                        </div>
					 <div class="col-md-6">

                    <div class="mt-10">
                         <asp:TextBox class="single-input-primary" ID="Nombre" runat="server" placeholder="Nombre" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nombre'"></asp:TextBox>
		            </div>

                     <div class="mt-10">
                        <div class="default-select" id="default-select" name ="Estado">
			                &nbsp;<asp:DropDownList ID="ddEstado" runat="server">
                                <asp:ListItem>Activo</asp:ListItem>
                                <asp:ListItem>Inactivo</asp:ListItem>
                            </asp:DropDownList>
		                </div>
            </div>
            <div class="mt-10">
                <div class="default-select" id="NivelAcademico" name ="NivelAcademico">
			        &nbsp;<asp:DropDownList ID="ddlNivelAcademico" runat="server">
                        <asp:ListItem>Posgrado</asp:ListItem>
                        <asp:ListItem>Pregrado</asp:ListItem>
                    </asp:DropDownList>
		        </div>
            </div>
            <div class="mt-10">
                <div class="default-select" id="Sector"  name ="ReconocimientoMin">
                    &nbsp;<asp:DropDownList ID="ddlMinisterio" runat="server">
                        <asp:ListItem>Registro de Alta Calidad</asp:ListItem>
                        <asp:ListItem>Registro Calificado</asp:ListItem>
                        <asp:ListItem>Registro Simple</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="mt-10">
                <div class="default-select" id="Acreditada"  name ="NivelFormacion">
                    &nbsp;<asp:DropDownList ID="ddlNivelFormacion" runat="server" DataSourceID="SqlDataSource1" DataTextField="NivelFormacion" DataValueField="IdNivelFormacion">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [NivelFormacion] WHERE [IdNivelFormacion] = @IdNivelFormacion" InsertCommand="INSERT INTO [NivelFormacion] ([NivelFormacion]) VALUES (@NivelFormacion)" SelectCommand="SELECT * FROM [NivelFormacion]" UpdateCommand="UPDATE [NivelFormacion] SET [NivelFormacion] = @NivelFormacion WHERE [IdNivelFormacion] = @IdNivelFormacion">
                        <DeleteParameters>
                            <asp:Parameter Name="IdNivelFormacion" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NivelFormacion" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NivelFormacion" Type="String" />
                            <asp:Parameter Name="IdNivelFormacion" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
                
            <div class="mt-10">
                <div class="default-select" id="metodo"  name ="Metodologia">
                    <asp:DropDownList ID="ddlMetodologia" runat="server" DataSourceID="DataMetodologia" DataTextField="Metodologia" DataValueField="IdMetodologia">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DataMetodologia" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Metodologia] WHERE [IdMetodologia] = @IdMetodologia" InsertCommand="INSERT INTO [Metodologia] ([Metodologia]) VALUES (@Metodologia)" SelectCommand="SELECT * FROM [Metodologia]" UpdateCommand="UPDATE [Metodologia] SET [Metodologia] = @Metodologia WHERE [IdMetodologia] = @IdMetodologia">
                        <DeleteParameters>
                            <asp:Parameter Name="IdMetodologia" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Metodologia" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Metodologia" Type="String" />
                            <asp:Parameter Name="IdMetodologia" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                </div>
            <div class="mt-10">
                <div class="default-select" id="area"  name ="Area">
                    &nbsp;<asp:DropDownList ID="ddlArea" runat="server" DataSourceID="DataArea" DataTextField="Area" DataValueField="IdArea">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DataArea" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Area]"></asp:SqlDataSource>
                </div>
                </div>
            
                <div class="mt-10">
                    <asp:TextBox ID="Precio" class="single-input-primary" runat="server" placeholder="000.000.000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '000.000.000'"></asp:TextBox>
		        </div>
                <div class="mt-10">
                    <asp:TextBox ID="NumeroCreditos" runat="server" placeholder="00.00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00.00'"
				         class="single-input-primary"></asp:TextBox>
		        </div>
              <div class="mt-10">
                  <asp:TextBox ID="VigenciaAños" runat="server" placeholder="00" onfocus="this.placeholder = ''"  onblur="this.placeholder = '00'"
				         class="single-input-primary"></asp:TextBox>
		        </div>
                    
                 <div class="mt-10">
                     <asp:TextBox ID="Duracion" runat="server" placeholder="0000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '0000'"
				         class="single-input-primary"></asp:TextBox>
		        </div>
                        
                 <div class="mt-10">
                     <asp:TextBox ID="TituloOtorgado" runat="server" placeholder="Ingeniero en..." onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Ingeniero en...'"
				        required class="single-input-primary"></asp:TextBox>
		        </div>
                
                <div class="mt-10">
                     <div class="default-select" id="Tipo" name ="Tipo">
			               <asp:DropDownList ID="ddTipo" runat="server">
                                <asp:ListItem>Icfes</asp:ListItem>
                                <asp:ListItem>Ponderado</asp:ListItem>
                               <asp:ListItem>Prueba de Admicion</asp:ListItem>
                            </asp:DropDownList>
		                </div>
		        </div>

                <div class="mt-10">
                     <asp:TextBox ID="primero" runat="server" placeholder="0000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '0000'"
				        required class="single-input-primary"></asp:TextBox>
		        </div>

                <div class="mt-10">
                     <asp:TextBox ID="Ultimo" runat="server" placeholder="0000" onfocus="this.placeholder = ''"  onblur="this.placeholder = '0000'"
				        required class="single-input-primary"></asp:TextBox>
		        </div>
            <br />
       
            </div>
            <div class="mt-10">
                <asp:Label ID="lblCorrecto" runat="server" Text="El programa se a Registrado Correctamente" BackColor="#99CCFF" BorderColor="#000099" BorderStyle="Solid" BorderWidth="1px" ForeColor="#000099" Height="25px" Width="300px" Visible="False"></asp:Label>
			</div>

            <div class="mt-10">
                <asp:Label ID="lblError" runat="server" Text="Error: No se pudo registrar" BackColor="#E18C8C" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" ForeColor="Maroon" Height="25px" Width="268px" Visible="False"></asp:Label>
			</div>
            </div>
            <div class="mt-10">
            <asp:Button ID="btnEditar" runat="server" Text="Editar" class="genric-btn primary radius" OnClick="btnEditar_Click"  />
            <a href="DGVProgramas.aspx" class="genric-btn primary-border radius">Volver</a>
               </div> 
                        </div>

                     


</asp:Content>
