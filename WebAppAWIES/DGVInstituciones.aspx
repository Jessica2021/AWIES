<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="DGVInstituciones.aspx.cs" Inherits="WebAppAWIES.DGVInstituciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <p>
        <br />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Universidades] WHERE [IdUniversidades] = @IdUniversidades" InsertCommand="INSERT INTO [Universidades] ([Codigo], [EstadoSeccional], [Sector], [Nit], [Correo], [EstadoSolicitud], [Contraseña], [NombreInstitucion], [Acreditada], [PrincipalSeccional], [IdCaracterAcademico], [IdMunicipio], [IdPrograma]) VALUES (@Codigo, @EstadoSeccional, @Sector, @Nit, @Correo, @EstadoSolicitud, @Contraseña, @NombreInstitucion, @Acreditada, @PrincipalSeccional, @IdCaracterAcademico, @IdMunicipio, @IdPrograma)" SelectCommand="SELECT * FROM [Universidades]" UpdateCommand="UPDATE [Universidades] SET [Codigo] = @Codigo, [EstadoSeccional] = @EstadoSeccional, [Sector] = @Sector, [Nit] = @Nit, [Correo] = @Correo, [EstadoSolicitud] = @EstadoSolicitud, [Contraseña] = @Contraseña, [NombreInstitucion] = @NombreInstitucion, [Acreditada] = @Acreditada, [PrincipalSeccional] = @PrincipalSeccional, [IdCaracterAcademico] = @IdCaracterAcademico, [IdMunicipio] = @IdMunicipio, [IdPrograma] = @IdPrograma WHERE [IdUniversidades] = @IdUniversidades">
            <DeleteParameters>
                <asp:Parameter Name="IdUniversidades" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Codigo" Type="String" />
                <asp:Parameter Name="EstadoSeccional" Type="String" />
                <asp:Parameter Name="Sector" Type="String" />
                <asp:Parameter Name="Nit" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="EstadoSolicitud" Type="String" />
                <asp:Parameter Name="Contraseña" Type="String" />
                <asp:Parameter Name="NombreInstitucion" Type="String" />
                <asp:Parameter Name="Acreditada" Type="String" />
                <asp:Parameter Name="PrincipalSeccional" Type="String" />
                <asp:Parameter Name="IdCaracterAcademico" Type="Int32" />
                <asp:Parameter Name="IdMunicipio" Type="Int32" />
                <asp:Parameter Name="IdPrograma" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Codigo" Type="String" />
                <asp:Parameter Name="EstadoSeccional" Type="String" />
                <asp:Parameter Name="Sector" Type="String" />
                <asp:Parameter Name="Nit" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="EstadoSolicitud" Type="String" />
                <asp:Parameter Name="Contraseña" Type="String" />
                <asp:Parameter Name="NombreInstitucion" Type="String" />
                <asp:Parameter Name="Acreditada" Type="String" />
                <asp:Parameter Name="PrincipalSeccional" Type="String" />
                <asp:Parameter Name="IdCaracterAcademico" Type="Int32" />
                <asp:Parameter Name="IdMunicipio" Type="Int32" />
                <asp:Parameter Name="IdPrograma" Type="Int32" />
                <asp:Parameter Name="IdUniversidades" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>--%>

    <style>
        h5 {
            text-align: right;
            padding-top: 5%;
            padding-bottom: 5%;
        }
    </style>

    <!-- Start Align Area -->

    <div class="section-top-border">
        <h3>Datos Generales</h3>
        <asp:Button ID="Button1" runat="server" Text="Editar" class="genric-btn primary circle arrow" OnClick="Button1_Click" />

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
                    <asp:TextBox ID="TextCodigo" runat="server" BorderStyle="None"></asp:TextBox>
                    
                    <asp:Label ID="Codigo" runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Codigo'" class="single-input-primary" Enabled="False" EnableTheming="True"></asp:Label>
                </div>

                <div class="mt-10">
                    <asp:TextBox ID="TextNombre" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Nombre" runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nombre Institucion'" class="single-input-primary" Enabled="False"></asp:Label>

                </div>

                <div class="mt-10">
                    <asp:TextBox ID="TextNit" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Nit"  runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Codigo'" class="single-input-primary" Enabled="False" EnableTheming="True"></asp:Label>
             
                </div>

                <div class="mt-10">

                    <div class="default-select" id="Sector">
                        <asp:Label ID="sec" runat="server" Text="Label"></asp:Label>

                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem>Oficial</asp:ListItem>
                            <asp:ListItem>Privada</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="acre" runat="server" Text="Label"></asp:Label>
                     
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem>Si</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>

                <div class="mt-10">


                    <div class="default-select" id="default-select">
                         <asp:Label ID="pri" runat="server" BorderStyle="None"></asp:Label>
                 
                        <asp:DropDownList ID="DropDownList4" runat="server">
                            <asp:ListItem>Principal</asp:ListItem>
                            <asp:ListItem>Seccional</asp:ListItem>
                        </asp:DropDownList>

                        

                    </div>
                </div>

                <div class="mt-10">
                    <div class="default-select" id="Departamento">
                        <asp:Label ID="departamento" runat="server" BorderStyle="None"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Departamento" DataValueField="IdDepartamento"></asp:DropDownList>
                       
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>



                    </div>
                </div>
                <div class="mt-10">
                    <div class="default-select" id="Municipio">
                        <asp:Label ID="municipio" runat="server"></asp:Label>

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
                        <asp:Label ID="caracter" runat="server" BorderStyle="None"></asp:Label>

                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="CaracterAcademico" DataValueField="IdCaracterAcademico"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CaracterAcademico], [IdCaracterAcademico] FROM [CaracterAcademico]"></asp:SqlDataSource>

                    </div>
                </div>

                <div class="mt-10">
                    <asp:TextBox ID="TextCorreo" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Correo" runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Codigo'" class="single-input-primary" Enabled="False" EnableTheming="True"></asp:Label>

                </div>
                <div class="mt-10">

                    <asp:TextBox ID="TextContraseña" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Contraseña"  runat="server" type="text" name="Codigo" placeholder="Codigo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Codigo'" class="single-input-primary" Enabled="False" EnableTheming="True"></asp:Label>

                </div>

            </div>
            <asp:Button ID="Button2" runat="server" Text="Guardar Cambios" class="genric-btn primary circle arrow" OnClick="Button2_Click"  />

        </div>


        <asp:Label ID="mensaje" runat="server" Text=""></asp:Label>


    </div>

    <!-- End Align Area -->

</asp:Content>



