﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="IndexInstitucion.aspx.cs" Inherits="WebAppAWIES.Formulario_web1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="single-post row">
    <div class="col-lg-8 col-md-8" style="margin-left:100px;">
	<h3 class="mb-30">Publicar Noticias...</h3>
	<form action="#">
		<div class="mt-10">
            <asp:TextBox ID="TextBox1" runat="server" name="Titulo" placeholder="Titulo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Titulo'"
				 class="single-input-primary"></asp:TextBox>
			
		</div>
		<div class="mt-10">
            <asp:TextBox ID="TextBox2" runat="server" name="Titulo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Titulo'"
				class="single-textarea" placeholder="Texto..."></asp:TextBox>
		
		</div>
        <div class="mt-10">
        <asp:Image ID="Image1" runat="server" Height="257px" ImageUrl="~/img/fondoinsertar.jpg" Width="471px"/>
        </div>
        <div class="mt-10">
            <asp:FileUpload ID="fuploadImagen" accept=".jpg" runat="server" />
		</div>
        <div class="mt-10">
            
            <asp:Button ID="Button2" runat="server" class="genric-btn info-border circle arrow" Text="Publicar" OnClick="Button2_Click" style="height: 20px" />
		</div>
        </form>
        </div>
    </div>

        
    
</asp:Content>
