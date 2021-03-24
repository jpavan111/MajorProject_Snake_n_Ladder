<%@page import="Entity.Player"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>


		<%
			/* Getting Player Object from Session */
			Player player = null;
		
			if (session.getAttribute("newSession") == null)
				response.sendRedirect("login.jsp");
			else
				player = (Player) request.getSession().getAttribute("itsme");
		%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Congratulations</title>
<style>
	<%@ include file="./styles/GameEnd.css"%>
</style>
</head>
<body>
<div>
<h1 style=color:#f4cc3d;>Congratulations <%= player.getPlayerName() %>!</h1>
<h2 style=color:#6eba4e;>You have successfully completed the game & your final score is</h2>
<h1 style=color:#6eba4e;><%= player.getGkScore() %></h1>
<a href="index.jsp" style="text-decoration: none;"><button class="button btnSubmit"><span><b>Home</b></span></button></a>
<a href="read-leaderboard-gk" style="text-decoration: none;"><button class="button"><span><b>Leader Board</b></span></button></a>
</div>
<div class="firework" id="firework1">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework2">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework3">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework4">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework5">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework6">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework7">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>

</body>
</html>


