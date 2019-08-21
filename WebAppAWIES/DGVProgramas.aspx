<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="DGVProgramas.aspx.cs" Inherits="WebAppAWIES.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdProgramas" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." PageSize="5">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IdProgramas" HeaderText="IdProgramas" ReadOnly="True" SortExpression="IdProgramas" />
            <asp:BoundField DataField="NombrePrograma" HeaderText="NombrePrograma" SortExpression="NombrePrograma" />
            <asp:BoundField DataField="EstadoPrograma" HeaderText="EstadoPrograma" SortExpression="EstadoPrograma" />
            <asp:BoundField DataField="NivelAcademico" HeaderText="NivelAcademico" SortExpression="NivelAcademico" />
            <asp:BoundField DataField="ReconocimientoMinisterio" HeaderText="ReconocimientoMinisterio" SortExpression="ReconocimientoMinisterio" />
            <asp:BoundField DataField="IdNivelFormacion" HeaderText="IdNivelFormacion" SortExpression="IdNivelFormacion" />
            <asp:BoundField DataField="IdMetodologia" HeaderText="IdMetodologia" SortExpression="IdMetodologia" />
            <asp:BoundField DataField="IdAreaConocimiento" HeaderText="IdAreaConocimiento" SortExpression="IdAreaConocimiento" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
            <asp:BoundField DataField="Ponderado" HeaderText="Ponderado" SortExpression="Ponderado" />
            <asp:BoundField DataField="Duracion" HeaderText="Duracion" SortExpression="Duracion" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Programas] WHERE [IdProgramas] = @IdProgramas" InsertCommand="INSERT INTO [Programas] ([NombrePrograma], [EstadoPrograma], [NivelAcademico], [ReconocimientoMinisterio], [IdNivelFormacion], [IdMetodologia], [IdAreaConocimiento], [Precio], [Ponderado], [Duracion]) VALUES (@NombrePrograma, @EstadoPrograma, @NivelAcademico, @ReconocimientoMinisterio, @IdNivelFormacion, @IdMetodologia, @IdAreaConocimiento, @Precio, @Ponderado, @Duracion)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [IdProgramas], [NombrePrograma], [EstadoPrograma], [NivelAcademico], [ReconocimientoMinisterio], [IdNivelFormacion], [IdMetodologia], [IdAreaConocimiento], [Precio], [Ponderado], [Duracion] FROM [Programas]" UpdateCommand="UPDATE [Programas] SET [NombrePrograma] = @NombrePrograma, [EstadoPrograma] = @EstadoPrograma, [NivelAcademico] = @NivelAcademico, [ReconocimientoMinisterio] = @ReconocimientoMinisterio, [IdNivelFormacion] = @IdNivelFormacion, [IdMetodologia] = @IdMetodologia, [IdAreaConocimiento] = @IdAreaConocimiento, [Precio] = @Precio, [Ponderado] = @Ponderado, [Duracion] = @Duracion WHERE [IdProgramas] = @IdProgramas">
        <DeleteParameters>
            <asp:Parameter Name="IdProgramas" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NombrePrograma" Type="String" />
            <asp:Parameter Name="EstadoPrograma" Type="String" />
            <asp:Parameter Name="NivelAcademico" Type="String" />
            <asp:Parameter Name="ReconocimientoMinisterio" Type="String" />
            <asp:Parameter Name="IdNivelFormacion" Type="Int32" />
            <asp:Parameter Name="IdMetodologia" Type="Int32" />
            <asp:Parameter Name="IdAreaConocimiento" Type="Int32" />
            <asp:Parameter Name="Precio" Type="Double" />
            <asp:Parameter Name="Ponderado" Type="Int32" />
            <asp:Parameter Name="Duracion" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NombrePrograma" Type="String" />
            <asp:Parameter Name="EstadoPrograma" Type="String" />
            <asp:Parameter Name="NivelAcademico" Type="String" />
            <asp:Parameter Name="ReconocimientoMinisterio" Type="String" />
            <asp:Parameter Name="IdNivelFormacion" Type="Int32" />
            <asp:Parameter Name="IdMetodologia" Type="Int32" />
            <asp:Parameter Name="IdAreaConocimiento" Type="Int32" />
            <asp:Parameter Name="Precio" Type="Double" />
            <asp:Parameter Name="Ponderado" Type="Int32" />
            <asp:Parameter Name="Duracion" Type="String" />
            <asp:Parameter Name="IdProgramas" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;
</asp:Content>
