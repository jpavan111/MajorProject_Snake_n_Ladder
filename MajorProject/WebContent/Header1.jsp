<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>s_airlines</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- bootstrap-->
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

<!-- font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
	integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
	crossorigin="anonymous" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<!-- <link href="./styles/index2.css" rel="stylesheet" type="text/css"> -->
<style>
 	<%@ include file="./styles/index1.css"%>
 </style>
</head>




<body>
	<div>
		<nav class="navbar navbar-expand-lg" id="header-color">
			<a class="navbar-brand logo" href="home.jsp?s=1"><i class="fad fa-snake"></i><!-- <img src="./images/logo.jpg"> --></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarText" aria-controls="navbarText"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav ml-auto d-flex justify-content-end align-items-center">
					
					<li class="nav-item active"><a class="nav-link"
						href="index1.jsp"><i class="fa fa-home" aria-hidden="true"></i> 
						Home <span class="sr-only">(current)</span></a></li>
					
					<li class="nav-item"><a class="nav-link" href="GameInstructions.jsp">
							<i class="fa fa-table" aria-hidden="true"></i> Instructions</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="leaderBoard.jsp">
						<i class="fa fa-table" aria-hidden="true"></i> Leader board</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="AboutUs.jsp">
						<i class="fa fa-table" aria-hidden="true"></i> About Us</a>
					</li>
					
					<li>
						<button class="btn" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<span class="navbar-text p-0"><i class='fas fa-user-tie' style='font-size:30px;color:white'></i>
							</span><span style="margin:0px; color: white;">&nbsp; ${playerObject.getUsername()}</span>
						</button>
<!-- 						<span class="d-flex justify-content-center align-items-center" style='color: white'></span> -->
						
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="load-profile">
								<i class="fas fa-user-cog"></i>&nbsp; Profile</a>
								
							<a class="dropdown-item" href="logout">
								<i class="fas fa-sign-out-alt" style="font-size:20px"></i>&nbsp; Log Out</a>
						</div>
						
					</li>
				</ul>

			
			</div>
		</nav>
		
		<!-- <img src="menu-icon.png" class="menu-icon" onclick="showMenu()">
		<script>
		function showMenu() {
			var toggle = document.getElementById("mobileMenu");
			if (toggle.style.height == "0px") {
				toggle.style.height = "200px";
			} else {
				toggle.style.height = "0px";
			}
		}
		</script> -->
	</div>