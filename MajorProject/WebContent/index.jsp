<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header.jsp"%>

<% 
  	if(session.getAttribute("newSession") == null)
		response.sendRedirect("login.jsp");
%>

<style>

div[class*=box] {
  height: 20%;
  width: 100%; 
  display: flex;
  justify-content: center;
}

.btn:hover {
    color: #ff0000;
    text-decoration: none;
}

.btn {
  line-height: 52px;
  height: 50px;
  text-align: center;
  width: 250px;
  cursor: pointer;
  font-family: cursive;
}

.btn-two {
  color: #19ffea;
  transition: all 0.5s;
  position: relative; 
}
.btn-two span {
  z-index: 2; 
  display: block;
  position: absolute;
  width: 100%;
  height: 100%;
  font-size: 25px;
  font-weight: 600;
}
.btn-two::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 111%;
  height: 145%;
  z-index: 1;
  transition: all 0.5s;
  border: 1px solid rgba(255,255,255,0.2);
  background-color: rgba(255,255,255,0.1);
}
.btn-two::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 111%;
  height: 145%;
  z-index: 1;
  transition: all 0.5s;
  border: 1px solid rgba(255,255,255,0.2);
  background-color: #fc03034d;
}
.btn-two:hover::before {
  transform: rotate(-45deg);
  background-color: rgba(255,255,255,0);
}
.btn-two:hover::after {
  transform: rotate(45deg);
  background-color: rgba(255,255,255,0);
}
body {
	font-family: 'Lato', sans-serif;
	background-image: url(images/board.png);
	background-size: cover;
	overflow-y: hidden;
}
	
</style>



<div class="container-fluid">
<div class="row">
<div class="col-8">
</div>
<div class="col-4" style="margin-top: 22%; ">

<div><a href="load-game">
  <div class="btn btn-two">
    <span>Play with G.K.</span>
  </div></a>
</div>

</div>
</div>

<div class="row">
<div class="col-8">
</div>
<div class="col-4" style="padding-top: 9%;">

<div><a href="load-game-java">
  <div class="btn btn-two">
    <span>Play with JAVA</span>
  </div></a>
</div>

</div>
</div>
</div>
<div style="margin-top: 7%">
	<%@ include file="footer.jsp"%>
</div>
</body>

</html>