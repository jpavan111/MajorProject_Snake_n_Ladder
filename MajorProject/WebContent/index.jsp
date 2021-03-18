<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



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
				<a href="logout"><li>Log Out</li></a>
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
		
		<a href="game.jsp">
			<button class="button">
				<b><span>Play </span></b><br>
				<h6>
					<b>with JAVA</b>
				</h6>
			</button>
		</a>
		
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
