<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="DGVProgramas.aspx.cs" Inherits="WebAppAWIES.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <a href="RegistrarProgramas.aspx" class="genric-btn success circle arrow">Registrar Programa<span class="lnr lnr-arrow-right"></span></a><asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="16px" Wrap="False" Visible="False"></asp:TextBox>
                                    <br />
    <br />
                                    &nbsp;<asp:GridView ID="gvProgramas" runat="server" CellPadding="4" GridLines="None" CssClass="position-static"  style="width: 30px; height: 20px; left: 264px; top: 21px; float: left;" ForeColor="#333333" Font-Size="Larger" Height="20px" HorizontalAlign="Justify" ShowFooter="True" Width="30px" OnSelectedIndexChanged="gvProgramas_SelectedIndexChanged"  >
                            <AlternatingRowStyle BackColor="White" Font-Size="Smaller" Height="20px" HorizontalAlign="Left" Width="30px" />
                            <Columns>

                                <asp:CommandField ShowSelectButton="True" />

                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Smaller" Height="20px" Width="30px" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Height="20px" Width="30px" />
                            <RowStyle BackColor="#EFF3FB" BorderStyle="None" Font-Size="Smaller" Height="20px" Width="30px" />
                            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Size="Smaller" Height="20px" HorizontalAlign="Left" VerticalAlign="Top" Width="20px"   /> 
                            <SortedAscendingCellStyle BackColor="#F5F7FB"  />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" Height="20px" Width="30px"  />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" Height="20px" Width="30px" />
                        </asp:GridView>

    <div class="mt-10">
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
            <asp:Button ID="btnEditar" runat="server" Text="Editar" class="genric-btn primary radius" OnClick="btnEditar_Click"  />
            <asp:Button ID="btnEditar0" runat="server" Text="Ver Más" class="genric-btn primary radius" OnClick="btnEditar0_Click"  />
        </div>
</asp:Content>
