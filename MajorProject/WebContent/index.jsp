<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header.jsp"%>

<%-- <div class="container d-flex justify-content-center mt-5 mb-4 form-container">

	<form action="schedule-create" method="post" class="p-5" style="border: none;background-color: #0f0e0e8a; border-radius:10px; box-shadow: #ffffff73 0px 0px 20px 20px inset;">
	<div class="container d-flex justify-content-center mb-5" style="color: #fff">
	<h2>Update Schedule</h2>
</div>
	<input type="hidden" value="${schedule.flightNo}">
	<div class="row">
	<div class="form-group col-6">
			<input type="text"
				class="form-control" id="exampleFlightNo" placeholder="Flight Number"
				name="flightNo" value="${schedule.flightNo}" required="required"
				pattern="^[0-9]{5}"
				oninvalid="this.setCustomValidity('*Please enter valid Flight No.')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
			</div>
			
			<div class="form-group col-6">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				name="airlines"
				placeholder="Flight Name/Code" value="${schedule.airlines}"
				required="required" pattern="^[A-Z0-9-]+$"
				oninvalid="this.setCustomValidity('*Please enter valid Flight Name/Code')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
		
		<div class="form-group col-12">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				name="source"
				placeholder="Source" value="${schedule.source}"
				required="required" pattern="^[a-zA-Z]+$"
				oninvalid="this.setCustomValidity('*Please enter valid Name')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
		
		<div class="form-group col-6">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				 name="departure"
				placeholder="Departure Time" value="${schedule.departure}"
				required="required" pattern="^([0-9]|0[0-9]|1?[0-9]|2[0-3]):[0-5]?[0-9]$"
				oninvalid="this.setCustomValidity('*Please enter valid time (HH:MM)')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
		
		<div class="form-group col-6">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				 name="sDelay"
				placeholder="Departure Delay" value="${schedule.sDelay}"
				pattern="^([0-9]|0[0-9]|1?[0-9]|2[0-3]):[0-5]?[0-9]$"
				oninvalid="this.setCustomValidity('*Please enter valid time (HH:MM)')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
		
		<div class="form-group col-12">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				name="destination"
				placeholder="Destination" value="${schedule.destination}"
				required="required" pattern="^[a-zA-Z]+$"
				oninvalid="this.setCustomValidity('*Please enter valid Name')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
		
		<div class="form-group col-6">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				 name="arrival"
				placeholder="Arrival Time" value="${schedule.arrival}"
				required="required" pattern="^([0-9]|0[0-9]|1?[0-9]|2[0-3]):[0-5]?[0-9]$"
				oninvalid="this.setCustomValidity('*Please enter valid time (HH:MM)')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
		
		<div class="form-group col-6">
		<input type="text"
				class="form-control" id="exampleFlightNo"
				 name="aDelay"
				placeholder="Arrival Delay" value="${schedule.aDelay}"
				pattern="^([0-9]|0[0-9]|1?[0-9]|2[0-3]):[0-5]?[0-9]$"
				oninvalid="this.setCustomValidity('*Please enter valid time (HH:MM)')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')">
		</div>
	</div>
		
	


		<c:if test="${schedule.flightNo == null}">
			<div class="d-flex justify-content-center">
				<input class="btn btn-primary btn-lg mt-3 p-2 mr-2" type="submit" name="btn"
					value="Add Flight Details"  style="width: 100%">
			</div>
		</c:if>

		<c:if test="${schedule.flightNo != null}">
			<div class="d-flex justify-content-center">
				<input class="btn btn-primary btn-lg mt-3 mr-2" type="submit" name="btn"
					formaction="schedule-update?id=${schedule.flightNo}"
					value="Update Schedule"  style="width: 100%">
			</div>
		</c:if>
	</form>
</div>



<div class="container d-flex justify-content-center mt-2 mb-2">


	<c:if test="${operation == 1}">
		<div class="alert alert-success d-flex justify-content-center" style="width:100%; font-weight: 600">Details Saved Successfully</div>
	</c:if>
	
	<c:if test="${operation == 0}">
		<div class="alert alert-danger d-flex justify-content-center" style="color: #b40000; font-weight: 600; width:100%;">Operation failed</div>
	</c:if>


	<c:if test="${operation_del == 1}">
		<div class="alert alert-success d-flex justify-content-center" style="width:100%; font-weight: 600">Deletion
				Successful</div>
	</c:if>
	<c:if test="${operation_del == 0}">
		<div class="alert alert-danger d-flex justify-content-center"
			style="color: #b40000; width:100%; font-weight: 600">Deletion
			Failed</div>
	</c:if>


	<c:if test="${operation_upd == 1}">
		<div class="alert alert-success d-flex justify-content-center" style="width:100%; font-weight: 600">Schedule Updated</div>
	</c:if>
	<c:if test="${operation_upd == 0}">
		<div class="alert alert-danger d-flex justify-content-center"
			style="color: #b40000; width:100%; font-weight: 600">Updation
			Failed</div>
	</c:if>

</div>



<div class="container" style="overflow-x:auto;">

	<table class="col-11 table table-striped table-dark mr-20 align-center pr-8">
		<thead>
			<tr style="background-color: #00000073; color: #1dc4f6">
				<th scope="col">Rank</th>
				<th scope="col">Name</th>
				<th scope="col">Time</th>
				<th scope="col">G.K. Score</th>
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
						<td>${item.date}</td>
						<td>${item.gkScore}</td>

				</tr>
			</c:forEach>
				<%
				}
				count = 1;
				%>
		</tbody>
	</table>
</div>

<%@ include file="footer.jsp"%> --%>

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
<%@ include file="footer.jsp"%> --%>
</body>

</html>