<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
<style>
.flip-card {
	background-color: transparent;
	width: 350px;
	height: 300px;
	perspective: 1000px;
	border-radius: 5%;
}

.flip-card-inner {
	position: relative;
	width: 100%;
	height: 100%;
	text-align: center;
	transition: transform 0.6s;
	transform-style: preserve-3d;
	border-radius: 5%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.9);
}

.flip-card:hover .flip-card-inner {
	transform: rotateY(180deg);
	border-radius: 5%;
}

.flip-card-front, .flip-card-back {
	position: absolute;
	width: 100%;
	height: 100%;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	border-radius: 5%;
}

.flip-card-front {
	background-color: #bbb;
	color: black;
	border-radius: 5%;
}

.flip-card-back {
	background-image: linear-gradient(to top, #dddcd7 24%, #e2c9cc 30%, #e7627d 46%, #b8235a
		59%, #801357 71%, #3d1635 84%, #1c1a27 100%);
	color: white;
	transform: rotateY(180deg);
	border-radius: 5%;
}

.fa1 {
	padding: 20px;
	font-size: 30px;
	border-radius: 30%;
	width: 50px;
	text-align: center;
	text-decoration: none;
	margin: 5px 5px;
}

.fa1:hover {
	opacity: 0.6;
	color: rgb(0, 0, 0);
}

.fa1-facebook {
	background: #3B5998;
	color: white;
}

.fa1-twitter {
	background: #55ACEE;
	color: white;
}

.fa1-linkedin {
	background: #007bb5;
	color: white;
}

.fa1-instagram {
	background: #125688;
	color: white;
}
</style>
</head>
<body>


	<div class="nav-bar">
		<div class="nav-logo">
			<img src="./images/logo.png">
		</div>
		<div class="nav-links" id="mobileMenu">
			<ul>
				<a href="index.jsp"><li>Home</li></a>
				<a href="GameInstructions.jsp"><li>Instructions</li></a>
				<a href="read-leaderboard"><li>Leader board</li></a>
				<a href="AboutUs.jsp"><li>About Us</li></a>
				
				<!-- UserProfile -->

				<button class="btn" type="button" id="dropdownMenuButton"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="navbar-text p-0">
					<i class='fas fa-user-tie' style='font-size:30px;color:white'></i>
					</span>
					<span class="d-flex justify-content-center align-items-center" style='color:white'>&nbsp;Hi ${playerObject.getUsername()}</span>
				</button>
				
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="load-profile"><i class="fas fa-user-cog"></i>&nbsp; Profile</a>
					<a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt"></i>&nbsp; Log Out</a>
				</div>
		</div>
		</ul>
	</div>

	<div class="container-fluid">
		<div class="row text-dark justify-content-center align-items-center"
			style="height: 100%; background-color: #000;">


			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/SumitVyas.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Sumit Vyas</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">8989482700</p>
						<p>
							<a href="mailto:sumitvyas786@gmail.com" style="color: #2fdbf7;">sumitvyas786@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/sumit-vyas-4b7a9415a"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href=" https://github.com/sumitvyas786"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/VaibhavBaraskar.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Vaibhav Baraskar</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">7058091900</p>
						<p>
							<a href="mailto:vaibhavbaraskar51@gmail.com"
								style="color: #2fdbf7;">vaibhavbaraskar51@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="www.linkedin.com/in/vaibhav-baraskar-33a12a155"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/VaibhavBaraskar"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>


			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/VikasKandgul.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Vikas Kandgul</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">8983428370</p>
						<p>
							<a href="mailto:vikaskandgul@gmail.com" style="color: #2fdbf7;">vikaskandgul@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="www.linkedin.com/in/vikas-kandgul-7366bab5"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/vikaskandgul007"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/Sachin.jpg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Tejas Rane</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">9370102116</p>
						<p>
							<a href="mailto:tejasgopalrane@gmail.com" style="color: #2fdbf7;">tejasgopalrane@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/tejas-rane-000958209/"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/tejasgopalrane"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/AbhayTiwari.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Abhay Tiwari</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">9179665156</p>
						<p>
							<a href="mailto:abhaytwr02@gmail.com" style="color: #2fdbf7;">abhaytwr02@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/abhay-tiwari-4349a8209/"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/abhaytwr02"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>


			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/PoojaDerle.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Pooja Derle</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">7057853329</p>
						<p>
							<a href="mailto:poojaderle07@gmail.com" style="color: #2fdbf7;">poojaderle07@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/pooja-derle-4a85391a6"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/poojaakgw/PoojaderleE-DAC2020"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/ArijitSaha.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Arijit Saha</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">8133056380</p>
						<p>
							<a href="mailto:arijitsaha240@gmail.com" style="color: #2fdbf7;">arijitsaha240@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/arijit-saha-b35a10b9/"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/ArijitSahaE-dac2020"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/SnehaMore.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Sneha More</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">7588417971</p>
						<p>
							<a href="mailto:moresneha7588@gmail.com" style="color: #2fdbf7;">moresneha7588@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/sneha-more-45277a167"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/SnehaRmore"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/AjinkyaPatwardhan.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Ajinkya Patwardhan</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">7757049562</p>
						<p>
							<a href="mailto:ajinkyapatwardhan1@gmail.com"
								style="color: #2fdbf7;">ajinkyapatwardhan1@gmail.com </a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/ajinkya-patwardhan-716150ab"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/Ajinkya107/Ajinkya_Patwardhan_E-Dac2020"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>


			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/Sachin.jpg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Komal Valivadekar</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">9284161610</p>
						<p>
							<a href="mailto:komalvalivadekar2905@gmail.com"
								style="color: #2fdbf7;">komalvalivadekar2905@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/komal-valivadekar-78b796168"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://Github.com/komalvalivadekar20"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>



			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/Sachin.jpg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Sahil Bhagwat</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">8149460110</p>
						<p>
							<a href="mailto:sahilbhagwat000@gmail.com"
								style="color: #2fdbf7;">sahilbhagwat000@gmail.com</a>
						</p>

						<p class="mt-2">
							<a
								href="https://www.linkedin.com/in/sahil-manoj-bhagwat-014551137/"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/sahil318"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>


			<div class="col-3 flip-card m-3">
				<div class="flip-card-inner">
					<div class="flip-card-front">
						<img src="./images/PavanJadhav.jpeg" alt="Avatar"
							style="width: 100%; height: 100%; border-radius: 5%; box-shadow: white 0px 0px 10px 8px;" />
					</div>
					<div class="flip-card-back"
						style="box-shadow: white 0px 0px 10px 8px;">
						<h4 class="mt-4">Pavan Jadhav</h4>
						<p class="m-0 p-0">Developer &amp; Engineer</p>
						<p class="m-0 p-0">8956783901</p>
						<p>
							<a href="mailto:jpavan111@gmail.com" style="color: #2fdbf7;">jpavan111@gmail.com</a>
						</p>

						<p class="mt-2">
							<a href="https://www.linkedin.com/in/pavan-jadhav-0b409989/"
								class="fab fa-linkedin fa-4x m-2" target="_blank"></a> <a
								href="https://github.com/jpavan111"
								class="fab fa-github-square fa-4x m-2" target="_blank"></a>
						</p>

					</div>
				</div>
			</div>







		</div>

	</div>
</body>
</html>