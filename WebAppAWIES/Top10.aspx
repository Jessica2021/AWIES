<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Top10.aspx.cs" Inherits="WebAppAWIES.Top10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--######## start banner Area ########-->
<head>
           <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

 <!--######## start banner Area ########-->

	<style>
.mySlides {display:none}
.w3-left, .w3-right, .w3-badge {cursor:pointer}
.w3-badge {height:13px;width:13px;padding:0}

#fil{
    background-image:url(img/fondopun.jpg);
}

#imag{
    border-color:#B6DFE7;
    border:solid 10px;
    border-radius:10px;
}
</style>

<div class="row" id="fil">
    <div class="col-lg-2"></div>
	<div class="col-lg-8"  id="imag" style="border-color: #ADDDEB">
<div class="w3-content w3-display-container">
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
    <div class="col-lg-2"></div>
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
	<!--######## End banner Area ########-->


	<!-- Start Align Area -->
	<section class="whole-wrap">
		<div class="container">
			
			<div class="section-top-border">
				<h3 class="mb-30">TOP 10 MEJORES UNIVERSIDADES</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head">
							<div class="serial">Puesto</div>
							<div class="country">Universidad</div>
							<div class="visit">Puntaje</div>
							<div class="percentage">Porcentaje</div>
						</div>
						<div class="table-row">
							<div class="serial">01</div>
							<div class="country">Universidad Nacional De Colombia – Bogotá</div>
							<div class="visit">140,4</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-1" role="progressbar" style="width: 98%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">02</div>
							<div class="country"> Universidad De Antioquia – Medellín</div>
							<div class="visit">111,702</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-2" role="progressbar" style="width: 90%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">03</div>
							<div class="country"> Universidad Del Valle – Cali</div>
							<div class="visit">72,101</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-3" role="progressbar" style="width: 62%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">04</div>
							<div class="country">Universidad De Los Andes – Bogotá</div>
							<div class="visit">63,283</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-4" role="progressbar" style="width: 53%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">05</div>
							<div class="country"> Universidad Javeriana – Bogotá</div>
							<div class="visit">59,608</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-5" role="progressbar" style="width: 49%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">06</div>
							<div class="country"> Universidad Nacional De Colombia – Medellín</div>
							<div class="visit">51,397</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-6" role="progressbar" style="width: 41%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">07</div>
							<div class="country">Universidad Industrial De Santander – Bucaramanga</div>
							<div class="visit">44,39</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-7" role="progressbar" style="width: 34%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">08</div>
							<div class="country"> Universidad Del Norte – Barranquilla</div>
							<div class="visit">37,011</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-8" role="progressbar" style="width: 27%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">09</div>
							<div class="country">Universidad Pontificia Bolivariana – Medellín</div>
							<div class="visit">36,018</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-8" role="progressbar" style="width: 26%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
						<div class="table-row">
							<div class="serial">10</div>
							<div class="country"> Universidad De Caldas – Manizales</div>
							<div class="visit">33,715</div>
							<div class="percentage">
								<div class="progress">
									<div class="progress-bar color-8" role="progressbar" style="width: 23%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Align Area -->
</asp:Content>
