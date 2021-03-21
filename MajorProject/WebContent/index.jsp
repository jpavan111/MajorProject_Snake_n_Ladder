<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>


<%
if (session.getAttribute("newSession") == null)
	response.sendRedirect("login.jsp");
else {
	Object playerObj = session.getAttribute("playerObject");
	User player = (User) playerObj;
	System.out.println(player.getId());
}
%>


<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
<%@ include file= "./styles/index.css" %>
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
				<a href="read-leaderboard"><li>Leader board</li></a>
				<a href="#"><li>Contact Us</li></a>
				<a href="#"><li>About</li></a>
				
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
	<!-- UserProfile End -->
			</ul>
		</div>
		<img src="menu-icon.png" class="menu-icon" onclick="showMenu()">
	</div>

	<div class="hero">
		<h1>Snakes & Ladders</h1>
		<br>
		<h3>Learn With Fun</h3>


		<form action="load-game" method="post">
<!-- 			<button class="button"> -->
			<input class="button" type="submit" value="Play with G.K." />
			<input type="hidden" name="obj" value="${playerObj}">
			</form>
		<!-- 	</button> -->
		&nbsp &nbsp
		
		<form action="load-game-java" method="post">
<!-- 			<button class="button"> -->
			<input class="button" type="submit" value="Play with Java" />
			<input type="hidden" name="obj" value="${playerObj}">
			</form>
		
	</div>



	<div class="laan">
		<img src="./images/la.png"> <img src="./images/sn.png"> <img
			src="./images/la.png"> <img src="./images/sn.png">
	</div>

	<script>
		function showMenu() {
			var toggle = document.getElementById("mobileMenu");
			if (toggle.style.height == "0px") {
				toggle.style.height = "200px";
			} else {
				toggle.style.height = "0px";
			}
		}
	</script>

</body>
</html>
