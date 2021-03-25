<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="Header1.jsp"%>

<div class="container d-flex justify-content-center mt-5 mb-4 form-container">

	<%-- <form action="schedule-create" method="post" class="p-5" style="border: none;background-color: #0f0e0e8a; border-radius:10px; box-shadow: #ffffff73 0px 0px 20px 20px inset;">
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

	<table class="table table-style" style="color: #161717; border-radius: 10px">
		<thead>
			<tr style="background-color: #00000073; color: #1dc4f6">
				<th scope="col">Flight No</th>
				<th scope="col">Airlines</th>
				<th scope="col">Source</th>
				<th scope="col">Departure</th>
				<th style="color: red" scope="col">Departure Delay</th>
				<th scope="col">Destination</th>
				<th scope="col">Arrival</th>
				<th style="color: red" scope="col">Arrival Delay</th>
				<th scope="col">Operations</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach  var="item" items="${userList}">
				<tr>
					<th scope="row">${item.flightNo}</th>
					<td>${item.airlines}</td>
					<td>${item.source}</td>
					<td>${item.departure}</td>
					<td style="color: red">${item.sDelay}</td>
					<td>${item.destination}</td>
					<td>${item.arrival}</td>
					<td style="color: red">${item.aDelay}</td>

					<td><a href="schedule-one?id=${item.flightNo}"> <i class='far fa-edit mr-4' style='font-size:24px; color: #dee2e6'></i></a>
					<a href="schedule-delete?id=${item.flightNo}"> <i class='fas fa-trash-alt' style='font-size:24px; color: #dee2e6'></i>
					</a> 
					</td>

				</tr>
			</c:forEach>

		</tbody>
		
	</table>
	
</div>

<%@ include file="footer.jsp"%>
 --%>
</body>

</html>