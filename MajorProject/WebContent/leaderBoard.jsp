<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Snakes and Ladders</title>

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
</head>
<body>



	<div class="container-fluid">
		<div class="row bg-dark text-light sticky-top" style="height: 60px;">

			<div class="col-3 d-flex align-items-center ">
				<a href="home.jsp" class="btn text-light btn-link"
					style="font-weight: bold; font-size: 1.75rem; font-family: cursive;">Snakes
					and Ladders</a>
			</div>

			<div class="col-9  d-flex align-items-center justify-content-end">

				<div>
					<a href="product.jsp" class="btn btn-secondary">Game</a>
				</div>
				<div class="ml-1">
					<a href="product.jsp" class="btn btn-secondary">About us</a>
				</div>
				<div class="ml-1">
					<a href="services.jsp" class="btn btn-secondary">Instructions</a>
				</div>
				<div class="ml-1">
					<a href="login.jsp" class="btn btn-secondary">Log out</a>
				</div>
			</div>
		</div>
	</div>
	
	<%
        String p = request.getParameter("p");
       if("1".equals(p)){
    	 // System.out.println("channn"); 
       }else
       {
    	   String redirectURL = "read-leaderboard";
 	      response.sendRedirect(redirectURL); 
       }
    	   
    
    %>
    
   

	<div class="row bg-light d-flex align-items-center justify-content-center" style="height:100vh" >
	
	 

		<table class="col-5 table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">Rank</th>
					<th scope="col">Name</th>
					<th scope="col">Score</th>
					
				</tr>
			</thead>
			
			<tbody>
			<%! int  count=1; %>
			<c:forEach var="item" items="${playerList}">
				<tr>
					<th scope="row"><%=count %></th>
					<% count = count+1; %>
					<td>${item.name}</td>
					<td>${item.score}</td>
					
				</tr>
			 </c:forEach>
			</tbody>
		</table>

   
	</div>
	
	

</body>
</html>