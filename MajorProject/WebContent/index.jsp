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

<jsp:include page="Header.jsp"></jsp:include>`
	
	<div class="hero">
		<h1>Snakes & Ladders</h1>
		<h3>Learn With Fun</h3>


		<form action="load-game" method="post">
<!-- 			<button class="button"> -->
			<button class="button" type="submit" ><span><b>Play</b></span><h6><b>with G.K.</b></h6></button>
			<input type="hidden" name="obj" value="${playerObj}">
		</form>
		<!-- 	</button> -->
		&nbsp; &nbsp;
		
		<form action="load-game-java" method="post">
<!-- 			<button class="button"> -->
			<button class="button" type="submit" ><span><b>Play</b></span><h6><b>with Java</b></h6></button>
			<input type="hidden" name="obj" value="${playerObj}">
		</form>
		
	</div>


<!-- 
	<div class="laan">
		 <img src="./images/sn.png">
		<img src="./images/la.png"> 
	</div>
 -->
	<!-- <div class="snn">
          <img src="./images/sn.png">
          <span style="margin-left: 10%"></span>
          <img src="./images/la.png">
     </div>
 -->

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
