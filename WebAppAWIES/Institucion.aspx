<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Institucion.aspx.cs" Inherits="WebAppAWIES.Institucion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!--######## Start post-content Area ########-->
    <section class="post-content-area">

        <div class="row">
            <div class="col-lg-4 sidebar-widgets" style="left: 0px; top: 0px; height: 866px">
                <div class="widget-wrap">
                    <div class="single-sidebar-widget newsletter-widget">
                        <h4 class="newsletter-title">Busqueda</h4>
                        <p>
                            Instituciones de Educacion Superior
                        </p>
                        <div class="form-group d-flex flex-row">
                            <div class="col-autos">
                                <div class="input-group" style="left: 0px; top: 0px; width: 99%">
                                    <div class="input-group-prepend">
                                        <asp:TextBox ID="txtBuscar" runat="server" class="form-control" name="search" placeholder="Buscar..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Buscar...'" Style="width: 82%"></asp:TextBox>

                                        <asp:Button ID="btnBuscar" class="bbtns" runat="server" Text="Buscar" Style="left: 46px; top: 196px" BorderStyle="None" Height="37px" Width="86px" OnClick="btnBuscar_Click" />
                                    </div>

                                </div>

                            </div>


                        </div>
                        <p class="text-bottom">
                            Escribe Nombre de la Universidad o Institucion
                        </p>
                    </div>
                    <div class="single-sidebar-widget post-category-widget">
                        <h4 class="category-title">Caracter Academico</h4>
                        <ul class="cat-list">
                            <li>

                                <asp:Button ID="btnBuscUniver" runat="server" class="d-flex justify-content-between" Text="Carreras Universitarias" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" Style="height: 22px" OnClick="btnBuscUniver_Click" />
                                <asp:Label ID="numUniver" runat="server" Text="37" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
                            </li>

                            <li>
                                <asp:Button ID="btnBucTec" runat="server" class="d-flex justify-content-between" Text="Tecnicos" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" Style="height: 22px" OnClick="btnBuscTecn_Click" />
                                <asp:Label ID="Label1" runat="server" Text="24" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
                            </li>
                            <li>
                                <asp:Button ID="BtmBusTecn" runat="server" class="d-flex justify-content-between" Text="Tecnologos" BackColor="#F9FBFB" BorderStyle="None" CssClass="auto-style2" ForeColor="Gray" Style="height: 22px" OnClick="btnBuscTecnolo_Click" />
                                <asp:Label ID="Label2" runat="server" Text="59" class="d-flex justify-content-between" CssClass="auto-style1"></asp:Label>
                            </li>

                        </ul>
                    </div>

                    <div class="single-sidebar-widget tag-cloud-widget">
                        <h4 class="tagcloud-title">Filtrar Por Departamento</h4>
                        <div class="mt-10">
                            <h5>Departamento</h5>

                            <div class="default-select" id="Departamento">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Departamento]"></asp:SqlDataSource>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Departamento" DataValueField="IdDepartamento" AutoPostBack="True"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="mt-10">
                            <h5>Municipio</h5>
                            <div class="default-select" id="Municipio">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Municipio] WHERE ([IdDepartamento] = @IdDepartamento)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="IdDepartamento" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Municipio" DataValueField="IdMunicipio" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 posts-list">
                <div class="single-post row">

                    <br />
                    <br />

                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" AllowPaging="True" PageSize="5" GridLines="None" CssClass="position-absolute" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Style="width: 30px; height: 20px; left: 8px; top: 24px" ForeColor="#333333" Font-Size="Larger" Height="20px" HorizontalAlign="Justify" ShowFooter="True" Width="30px" OnPageIndexChanging="GridView1_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" Font-Size="Smaller" Height="20px" HorizontalAlign="Left" Width="30px" />
                        <Columns>
                            <asp:ButtonField CommandName="Select" ImageUrl="~/img/ver.png" ShowHeader="True" Text="Seleccionar" HeaderText="Seleccionar">
                                <ControlStyle Height="20px" Width="30px" />
                            </asp:ButtonField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Smaller" Height="20px" Width="30px" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Height="20px" Width="30px" />
                        <RowStyle BackColor="#EFF3FB" BorderStyle="None" Font-Size="Smaller" Height="20px" Width="30px" />
                        <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Size="Smaller" Height="20px" HorizontalAlign="Left" VerticalAlign="Top" Width="20px" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" Height="20px" Width="30px" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" Height="20px" Width="30px" />
                    </asp:GridView>

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

                    <asp:Label ID="mensaje" runat="server" Text="No se encontraron resultados!!!" Font-Size="Large" ForeColor="#000099" Visible="False"></asp:Label>



                </div>
             
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
                <asp:Button ID="btnInfo" runat="server" Text="Ver Informacion" class="genric-btn primary radius" OnClick="btnInfo_Click" />

                <asp:Button ID="btnProgramas" runat="server" Text="Ver Programas" class="genric-btn primary radius" OnClick="btnProgramas_Click" />
                
            </div>

        </div>

    </section>
    <!--######## End post-content Area ########-->


</asp:Content>
