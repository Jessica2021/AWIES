<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebAppAWIES.Index" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



 <!--######## start banner Area ########-->

	<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}

#fil{
    background-color:#00A3C4;
    padding:5px;
}

</style>

<div class="row" id="fil">
				<div class="col-lg-12">
<div class="w3-content w3-display-container" >
  <img class="mySlides" src="img/1.png" style="width:100%">
  <img class="mySlides" src="img/2.png" style="width:100%">
  <img class="mySlides" src="img/3.png" style="width:100%">
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>
           </div>
    </div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}
</script>

			    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
		
	<!--######## End banner Area ########-->
	<!--######## Start top-category-widget Area ########-->
	<section class="top-category-widget-area pt-90 pb-90 ">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="single-cat-widget">
						<div class="content relative">
							<div class="overlay overlay-bg"></div>
							<a href="Institucion.aspx">
								<div class="thumb">
									<img class="content-image img-fluid d-block mx-auto" src="img/blog/cat-widget1.jpg" alt="">
								</div>
								<div class="content-details">
									<h4 class="content-title mx-auto text-uppercase">Consulte</h4>
									<span></span>
									<p>Instituciones de Educacion Superior</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-cat-widget">
						<div class="content relative">
							<div class="overlay overlay-bg"></div>
							<a href="Programas.aspx" >
								<div class="thumb">
									<img class="content-image img-fluid d-block mx-auto" src="img/blog/cat-widget2.jpg" alt="">
								</div>
								<div class="content-details">
									<h4 class="content-title mx-auto text-uppercase">Consulte</h4>
									<span></span>
									<p>Programas Academicos</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="single-cat-widget">
						<div class="content relative">
							<div class="overlay overlay-bg"></div>
							<a href="https://www2.icfesinteractivo.gov.co/resultadosSaber/resultadosSaber11/res_individuales.htm" target="_blank">
								<div class="thumb">
									<img class="content-image img-fluid d-block mx-auto" src="img/blog/cat-widget3.jpg" alt="">
								</div>
								<div class="content-details">
									<h4 class="content-title mx-auto text-uppercase">Consulte</h4>
									<span></span>
									<p>Resultado ICFES</p>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--######## End top-category-widget Area ########-->


	<!--######## Start post-content Area ########-->
	<section class="post-content-area">
		<div class="container">


			<div class="row">
                <div class="col-lg-10 posts-list">
                    <div class="single-post row">
                <asp:Repeater ID="Repeater1" runat="server">

                    <ItemTemplate>
                        <div class="col-lg-3  col-md-3 meta-details">
							<ul class="tags">
								<li><a href="#">Food,</a></li>
								<li><a href="#">Technology,</a></li>
								<li><a href="#">Politics,</a></li>
								<li><a href="#">Lifestyle</a></li>
							</ul>
							<div class="user-details row">
								<p class="user-name col-lg-12 col-md-12 col-6"><a href="#"><%#Eval("IdUniversidad") %></a> <span class="lnr lnr-user"></span></p>
								<p class="date col-lg-12 col-md-12 col-6"><a href="#">12 Dec, 2017</a> <span class="lnr lnr-calendar-full"></span></p>
								<p class="view col-lg-12 col-md-12 col-6"><a href="#">1.2M Views</a> <span class="lnr lnr-eye"></span></p>
								<p class="comments col-lg-12 col-md-12 col-6"><a href="#">06 Comments</a> <span class="lnr lnr-bubble"></span></p>
							</div>
						</div>
						<div class="col-lg-9 col-md-9 ">
							<div class="feature-img">
								<img class="img-resposive" src="img/Publicaciones/<%#Eval("Foto") %>">
							</div>
							<a class="posts-title" href="blog-single.html"><h3><%#Eval("Titulo") %></h3></a>
							<p class="excert">
							    <%#Eval("Texto") %>	
                            </p>
							
						</div>
                    </ItemTemplate>
                    

                </asp:Repeater>
				
					</div>
                </div>
			</div>
		</div>
	</section>
	<!--######## End post-content Area ########-->
</asp:Content>
