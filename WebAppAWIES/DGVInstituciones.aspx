<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="Formulario web1.aspx.cs" Inherits="WebAppAWIES.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-justify">
        <span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">CODIGO DE LA INSTITUCIÓN<asp:Label ID="Label1" runat="server" style="width: 34px; height: 16px; position: absolute; left: 464px; top: 3px"></asp:Label>
        </span></p>
    <p class="text-justify">
        <span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">NÚMERO DE IDENTIFICACION TRIBUTARIA - NIT</span></p>
    <p>
        <span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">PRINCIPAL O SECCIONAL</span></p>
    <p>
       <span style="color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(249, 249, 249); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"> SECTOR</span></p>
    <p>
        CARÁCTER ACADÉMICO</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
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
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>



