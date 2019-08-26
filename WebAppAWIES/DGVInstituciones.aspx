<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="Formulario web1.aspx.cs" Inherits="WebAppAWIES.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
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
