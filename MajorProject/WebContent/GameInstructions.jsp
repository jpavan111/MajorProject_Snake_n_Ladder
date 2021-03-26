
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page errorPage="error.jsp"%>

<%@ include file="Header.jsp"%>

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
body {
	font-family: 'Lato', sans-serif;
	background-image: url(./images/Instructions.png);
	background-size: cover;
}

.rules{
	ont-size:2.5rem;
	font-family:cursive;
	margin-bottom: 1%;
	color: white;
	font-size: 1.5rem;
}

.even{
	color: #00f3ff;
}

.odd{
	color: #ffbc00;
}

<%@ include file= "./styles/index1.css" %>
</style>
</head>

<body>

<div class="container mt-5 mb-4">

	<div class="p-5" style="border: none; background-color: #000000a1; border-radius:10px; box-shadow: #ffffffc7 0px 0px 20px 20px inset;">
		<div class="container d-flex justify-content-center mb-4" style="color: #fff">
			<h2>Game Instructions</h2></div>
		<div class="pr-3 pl-3 pt-0">
			  <p class="rules odd">1. You should have a valid email-id to verify yourself and enter into the game.</p>

			  <p class="rules even">2. This isn't the normal game you have played before.</p>
		
			  <p class="rules odd">3. You have to click on "Roll Dice" button to play. The cursor will move automatically and question will appear.</p>

			  <p class="rules even">4. You have to answer the questions to earn points on each correct answer. Wrong answer does not carry any point.</p>

			  <p class="rules odd">5. If you arrive on Ladder, you have to give right answer to climb up the ladder, if your answer is wrong, you cannot climb up and continue to move in same row.</p>

			  <p class="rules even">6. If you arrives on Snake, you have to give correct answer to get rid of the snake, then and only then you will be able continue moving the same row and if you give wrong answer, you will get bitten by snake and get shifted to lower blocks.</P>

			  <p class="rules odd">7. If you reach the 100th position, game will be ended.</p>
		</div>
	</div>
</div>
<div style="margin-top: 1.5%">
	<%@ include file="footer.jsp"%> 
</div>
</body>
</html>