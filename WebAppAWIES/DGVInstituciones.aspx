<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="DGVInstituciones.aspx.cs" Inherits="WebAppAWIES.DGVInstituciones" %>
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
                 <h3>Datos Generales</h3>
                <asp:Button ID="Button1" runat="server" Text="Editar" class="genric-btn primary circle arrow"  />
                
                 <div class="row">
                     
                    <div class="col-md-4">

                        <div class="mt-10">
								<h5>Codigo Institucional</h5>
							</div>
                            <div class="mt-10">
								<h5>Nombre Institucion</h5>
							</div>
                            <div class="mt-10">
								<h5>Nit</h5>
							</div>
							<div class="mt-10">
								<h5>Sector</h5>
							</div>
							
                            <div class="mt-10">
								<h5>Acreditada</h5>
							</div>
                            <div class="mt-10">
								<h5>Principal/Seccional</h5>
							</div>
                           <div class="mt-10">
								<h5>Departamento</h5>
							</div>
                           <div class="mt-10">
								<h5>Municipio</h5>
							</div>
                          <div class="mt-10">
								<h5>Caracter Academico</h5>
							</div>
                        <div class="mt-10">
								<h5>Correo</h5>
							</div>
						<div class="mt-10">
								<h5>Contraseña</h5>
							</div>
                        </div>
					 <div class="col-md-6">

                         <div class="mt-10">
                            <asp:TextBox ID="TextBox1" runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Codigo'"  class="single-input-primary"></asp:TextBox>
		                </div>

                         <div class="mt-10">
								<input type="text" name="nombre" placeholder="Nombre Institucion" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nombre Institucion'"
								 required class="single-input-primary">
							</div>

                         <div class="mt-10">
								<input type="text" name="nit" placeholder="Nit" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Nit'"
								 required class="single-input-primary">
							</div>

                  <div class="mt-10">
  
                <div class="default-select" id="Sector">
                    
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem>Oficial</asp:ListItem>
                            <asp:ListItem>Privada</asp:ListItem>
                        </asp:DropDownList>
                    
                </div>
            </div>
                         
            
                          <div class="mt-10">
   
                <div class="default-select" id="Acreditada">
                    
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    
                </div>
            </div>
            
           <div class="mt-10">
           <asp:Label ID="Label1" runat="server"></asp:Label>
               
                <div class="default-select" id="default-select">
			        
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Principal</asp:ListItem>
                            <asp:ListItem>Seccional</asp:ListItem>
                        </asp:DropDownList>
			           
		        </div>
            </div>
                
            <div class="mt-10">
                <div class="default-select" id="Departamento">
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource1" DataTextField="Departamento" DataValueField="IdDepartamento" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                  
                </div>
            </div>
            <div class="mt-10">
                <div class="default-select" id="Municipio">
                    
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Municipio" DataValueField="IdMunicipio"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdMunicipio], [Municipio] FROM [Municipio] WHERE ([IdDepartamento] = @IdDepartamento)">
                        
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList7" DefaultValue="1" Name="IdDepartamento" PropertyName="SelectedValue" />
                        </SelectParameters>
                        
                    </asp:SqlDataSource>
                        
                </div>
            </div>
            <div class="mt-10">
                <div class="default-select" id="CaracterAcademico">
                   
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="CaracterAcademico" DataValueField="IdCaracterAcademico" DataMember="DefaultView"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CaracterAcademico, IdCaracterAcademico FROM CaracterAcademico" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
                    
                </div>
            </div>

                <div class="mt-10">
                               
					<input type="text" name="correo" placeholder="ejemplo@gmail.com" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ejemplo@gmail.com'"
						required class="single-input-primary">
				</div>
				<div class="mt-10">
                                
                                
					<input type="password" name="contraseña" placeholder="Contraseña" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Contraseña'"
						required class="single-input-primary">
				</div>

                        </div>

                      </div>
            
                
            </div>
            
	<!-- End Align Area -->

</asp:Content>



