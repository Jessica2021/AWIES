<%@ Page Title="" Language="C#" MasterPageFile="~/SiteInstitucion.Master" AutoEventWireup="true" CodeBehind="IndexInstitucion.aspx.cs" Inherits="WebAppAWIES.Formulario_web17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style> 
        #imagen{
            width:80%;
            height:auto;

        }
    </style>
    <div class="single-post row">
        <div class="col-lg-10 col-md-10" style="margin-left:100px;">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
	        <form action="#">
                <img  src="img/bienvenido.jpg" id="imagen"/>
            </form>
        </div>
    </div>

</asp:Content>
