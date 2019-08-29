<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="EditarInstituciones.aspx.cs" Inherits="WebAppAWIES.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
        h5 {
            text-align: right;
            padding-top: 8px;
            padding-bottom: 13px;
        }
    </style>

    <!-- Start Align Area -->

    <div class="section-top-border">
        <h3>Datos Generales</h3>
        
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
            <br />
            <div class="col-md-6">

                <div class="mt-10">
                    <asp:TextBox ID="TextCodigo" runat="server" class="single-input-primary" BorderStyle="None"></asp:TextBox>
                    
                </div>

                <div class="mt-10">
                    <asp:TextBox ID="TextNombre" runat="server" class="single-input-primary" BorderStyle="None"></asp:TextBox>
                 
                </div>

                <div class="mt-10">
                    <asp:TextBox ID="TextNit" runat="server" class="single-input-primary" BorderStyle="None"></asp:TextBox>
                 
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
                       <div class="default-select" id="acre">
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                       </div>
                
                <div class="mt-10">


                    <div class="default-select" id="default-select">
                       
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Principal</asp:ListItem>
                            <asp:ListItem>Seccional</asp:ListItem>
                        </asp:DropDownList>

                        

                    </div>
                </div>

                <div class="mt-10">
                    <div class="default-select" id="Departamento">
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Departamento" DataValueField="IdDepartamento"></asp:DropDownList>
                       
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>



                    </div>
                </div>
                <div class="mt-10">
                    <div class="default-select" id="Municipio">
                       
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Municipio" DataValueField="IdMunicipio"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Municipio] WHERE ([IdDepartamento] = @IdDepartamento)">

                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="IdDepartamento" PropertyName="SelectedValue" />
                            </SelectParameters>

                        </asp:SqlDataSource>

                    </div>
                </div>
                <div class="mt-10">
                    <div class="default-select" id="CaracterAcademico">
                      
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="CaracterAcademico" DataValueField="IdCaracterAcademico"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CaracterAcademico], [IdCaracterAcademico] FROM [CaracterAcademico]"></asp:SqlDataSource>

                    </div>
                </div>

                <div class="mt-10">
                    <asp:TextBox ID="TextCorreo" runat="server" class="single-input-primary"  BorderStyle="None"></asp:TextBox>
                    
                </div>
                <div class="mt-10">

                    <asp:TextBox ID="TextContraseña" runat="server" class="single-input-primary"  BorderStyle="None"></asp:TextBox>
                  
                </div>

            </div>
            
        </div>

        <asp:Button ID="Button1" runat="server" Text="Guardar Cambios" class="genric-btn primary circle arrow" OnClick="Button1_Click" />

         <div class="mt-10">
            
             <asp:Label ID="lblCorrecto" runat="server" Text="Se a editado Correctamente" BackColor="#99CCFF" BorderColor="#000099" BorderStyle="Solid" BorderWidth="1px" ForeColor="#000099" Height="25px" Width="300px" Visible="False"></asp:Label>
		</div>
         <div class="mt-10">
         <a href="DGVInstituciones.aspx" class="genric-btn success-border circle arrow">Volver<span class="lnr lnr-arrow-right"></span></a>
         </div>

        <div class="mt-10">
            <asp:Label ID="lblError" runat="server" Text="Error: No se pudo editar" BackColor="#E18C8C" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" ForeColor="Maroon" Height="25px" Width="268px" Visible="False"></asp:Label>
		</div>

    </div>

    <!-- End Align Area -->


</asp:Content>
