<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="DGVProgramas.aspx.cs" Inherits="WebAppAWIES.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <a href="RegistrarProgramas.aspx" class="genric-btn success circle arrow">Registrar Programa<span class="lnr lnr-arrow-right"></span></a><asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="16px" Wrap="False"></asp:TextBox>
                                    &nbsp;<asp:GridView ID="gvProgramas" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="gvProgramas_SelectedIndexChanged" PageSize="5">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
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

    <div class="mt-10">
            <asp:Button ID="btnEditar" runat="server" Text="Editar" class="genric-btn primary radius" OnClick="btnEditar_Click"  />
            <asp:Button ID="btnEditar0" runat="server" Text="Ver Más" class="genric-btn primary radius"  />
        </div>
</asp:Content>
