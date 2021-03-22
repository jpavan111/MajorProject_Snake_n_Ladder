<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="error.jsp"%>

<% 
  	if(session.getAttribute("newSession") == null)
		response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instructions</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<!--  Fontawsome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

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
		<div class="row text-light justify-content-center align-items-center" style="background-color:#000; height: 100vh;">

		
			
		<div class="alert alert-success col-9 border border-warning pb-5" role="alert">
  <h1 class="alert-heading" style="font-family:cursive; text-align:center;">Instructions!!!</h1>
  <p style="font-size:1.5rem;font-family:cursive">Yes...We know you are not finding dice there.</p>
  <hr>
  <p class="mb-0" style="font-size:1.5rem;font-family:cursive">The faster you solve the question the bigger number you will get on dice.</p>
  <hr>
  <p class="mb-0" style="font-size:1.5rem;font-family:cursive">You can check the leader board to know your and your friend's positions </p>
  <hr>
  <p class="mb-0" style="font-size:1.5rem;font-family:cursive">If you have given wrong Answer then you will remain on same position.</p>
  <hr>
  <p class="mb-0" style="font-size:1.5rem;font-family:cursive">You can pause the play if you want to using pause button.</p>
</div>
			
		
			

		</div>

	</div>
</body>
</html>