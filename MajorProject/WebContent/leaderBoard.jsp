<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <jsp:include page="Header.jsp"></jsp:include> --%>
<%@page errorPage="error.jsp"%>

<%
if (session.getAttribute("newSession") == null)
	response.sendRedirect("login.jsp");
%> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leader Board</title>

<!-- Required meta tags -->
<meta charset="utf-8">
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

<style>
body {
	background-image: url('./images/leaderboardBg.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
}
</style>
<style>
table {
	border: 1px solid black;
	width: 200px;
}

th {
	width: 200px;
}
</style>
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

	<div class=" d-flex align-items-center justify-content-center mt-5 ">
		<div>
			<table
				class="col-11 table table-striped table-dark mr-20 align-center  pr-8 ">
				<thead>
					<tr>
						<th scope="col">Rank</th>
						<th scope="col">Name</th>
						<th scope="col">G.K. Score</th>
						<th scope="col">Java Score</th>
						<th scope="col">Total</th>
					</tr>
				</thead>

				<tbody>
					<%
					int count = 1;
					if (count == 1) {
					%>
					<c:forEach var="item" items="${playerList}">
						<tr>
							<th scope="row"><%=count++%></th>
							<td>${item.name}</td>
							<td>${item.gkScore}</td>
							<td>${item.javaScore}</td>
							<td>${item.gkScore + item.javaScore}</td>
						</tr>
					</c:forEach>
					<%
					}
					count = 1;
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>