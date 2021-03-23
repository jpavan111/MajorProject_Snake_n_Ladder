<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>

<%
if (session.getAttribute("newSession") == null)
	response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- BOOTSTRAP -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>

<!--  Fontawsome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	crossorigin="anonymous" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style>
	<%@ include file="./styles/index.css" %>
	<%@ include file="./styles/AboutUs.css" %>
</style>

</head>
<body>

	<jsp:include page="Header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row text-dark justify-content-center align-items-center"
			style="height: 100%; background-color: #000;">

			<%
				String imgSrc[] =  {"./images/SumitVyas.jpeg",
									"./images/VaibhavBaraskar.jpeg",
									"./images/TejasRane.jpg",
									"./images/AbhayTiwari.jpeg",
									"./images/PoojaDerle.jpeg",
									"./images/ArijitSaha.jpeg",
									"./images/SnehaMore.jpeg",
									"./images/PavanJadhav.jpeg",
									"./images/KomalValivadekar.jpg",
									"./images/AjinkyaPatwardhan.jpeg",
									"./images/VikasKandgul.png",
									"./images/SahilBhagwat.jpeg"};
			
				String name[] = {"Sumit Vyas","Vaibhav Baraskar","Tejas Rane","Abhay Tiwari"
								,"Pooja Derle","Arijit Saha","Sneha More","Pawan Jadav","Komal Valwadekar"
								,"Ajinkya Patwardhan","Vikas Khadgul","Sahil Bhagwat"};
				
				String mobile[] =  {"8989482700","7058091900","9370102116","9179665156","7057853329",
									"8133056380","7588417971","8956783901","9284161610","7757049562","8983428370","8149460110"};
				
				String linkdin[] =  {"https://www.linkedin.com/in/sumit-vyas-4b7a9415a",
									"https://www.linkedin.com/in/vaibhav-baraskar-33a12a155",
									"https://www.linkedin.com/in/tejas-rane-000958209/",
									"https://www.linkedin.com/in/abhay-tiwari-4349a8209/",
									"https://www.linkedin.com/in/pooja-derle-4a85391a6",
									"https://www.linkedin.com/in/arijit-saha-b35a10b9/",
									"https://www.linkedin.com/in/sneha-more-45277a167",
									"https://www.linkedin.com/in/pavan-jadhav-0b409989/",
									"https://www.linkedin.com/in/komal-valivadekar-78b796168",
									"https://www.linkedin.com/in/ajinkya-patwardhan-716150ab",
									"https://www.linkedin.com/in/vikas-kandgul-7366bab5",
									"https://www.linkedin.com/in/sahil-manoj-bhagwat-014551137/"};
				
				String github[] =  {"https://github.com/sumitvyas786",
									"https://github.com/VaibhavBaraskar",
									"https://github.com/tejasgopalrane",
									"https://github.com/abhaytwr02",
									"https://github.com/poojaakgw/PoojaderleE-DAC2020",
									"https://github.com/ArijitSahaE-dac2020",
									"https://github.com/SnehaRmore",
									"https://github.com/jpavan111",
									"https://github.com/komalvalivadekar20",
									"https://github.com/Ajinkya107/Ajinkya_Patwardhan_E-Dac2020",
									"https://github.com/vikaskandgul007",
									"https://github.com/sahil318"};
				
			String mailtoLink[] =  {"mailto:sumitvyas786@gmail.com",
									"mailto:vaibhavbaraskar51@gmail.com",
									"mailto:tejasgopalrane@gmail.com",
									"mailto:abhaytwr02@gmail.com",
									"mailto:poojaderle07@gmail.com",
									"mailto:arijitsaha240@gmail.com",
									"mailto:moresneha7588@gmail.com",
									"mailto:jpavan111@gmail.com",
									"mailto:komalvalivadekar2905@gmail.com",
									"mailto:ajinkyapatwardhan1@gmail.com",
									"mailto:vikaskandgul@gmail.com",
									"mailto:sahilbhagwat000@gmail.com"};
				
			   String mail[] = {"sumitvyas786@gmail.com",
								"vaibhavbaraskar51@gmail.com",
								"tejasgopalrane@gmail.com",
								"abhaytwr02@gmail.com",
								"poojaderle07@gmail.com",
								"arijitsaha240@gmail.com",
								"moresneha7588@gmail.com",
								"jpavan111@gmail.com",
								"komalvalivadekar2905@gmail.com",
								"ajinkyapatwardhan1@gmail.com",
								"vikaskandgul@gmail.com",
								"sahilbhagwat000@gmail.com"};
				
				for(int i=0; i < imgSrc.length; i++)
				{
			%>
				
				<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src=<%= imgSrc[i] %> alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4"><%= name[i] %></h4>
						<p class="m-0 p-0">Developer, Engineer</p>
						<p class="m-0 p-0"><%= mobile[i] %></p>
						<p>
							<a href=<%= mailtoLink[i] %> style="color: #2fdbf7"><%= mail[i] %></a>
						</p>

						<p class="mt-2">
							<a href=<%= linkdin[i] %>
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a>
								<a href=<%= github[i] %> style=""
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>
				
			<%	
				}
			%>
			
		</div>

	</div>
</body>
</html>