
<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="IndexInstitucion.aspx.cs" Inherits="WebAppAWIES.Formulario_web1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="single-post row">
    <div class="col-lg-10 col-md-10" style="margin-left:100px;">
	<h3 class="mb-30">Publicar Noticias...</h3>
	<form action="#">
       
         <div class="mt-10">
           
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server"  EnableViewState="True" />
                     
                 </ContentTemplate>
                  
             </asp:UpdatePanel>
              <asp:Button ID="btnVer" runat="server" class="genric-btn success-border radius"  Text="Vista Previa" OnClick="btnVer_Click" />

            		</div>
        <div class="mt-10">
            
        <asp:Image ID="ImagenPrevia" runat="server" Height="358px" ImageUrl="~/img/fondoinsertar.jpg" Width="636px"/>
        </div>
        <div class="mt-10">
            <asp:Label ID="lblCorrecto" runat="server" Text="Publicacion Exitosa!!" BackColor="#99CCFF" BorderColor="#000099" BorderStyle="Solid" BorderWidth="1px" ForeColor="#000099" Height="25px" Width="300px" Visible="False"></asp:Label>
		</div>
        <div class="mt-10">
            <asp:Label ID="lblError" runat="server" Text="Error: El tipo de archivo no es Compatible" BackColor="#ECC7C1" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" ForeColor="Maroon" Height="25px" Width="363px" Visible="False"></asp:Label>
		</div>
        <asp:Label ID="lblExtension" runat="server" Visible="False" ></asp:Label>
         <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
		<div class="mt-10">
           
            <asp:TextBox ID="titulo" runat="server" placeholder="Titulo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Titulo'"
				 class="single-input-primary"></asp:TextBox>
			
		</div>
		<div class="mt-10">
            <asp:TextBox ID="texto" runat="server" placeholder="Agrega una Descripcion..." onfocus="this.placeholder = ''" onblur="this.placeholder = 'Agrega una Descripcion...'"
				class="single-textarea" TextMode="MultiLine"></asp:TextBox>
		
		</div>
        <div class="mt-10">
            <asp:Button ID="btnSubir" runat="server" class="genric-btn info-border circle arrow" Text="Subir Archivo" OnClick="btnSubir_Click" />
            </div>
        <asp:Label ID="lblURL" runat="server" ></asp:Label>
        </form>
        </div>
    </div>

        
    
</asp:Content>
