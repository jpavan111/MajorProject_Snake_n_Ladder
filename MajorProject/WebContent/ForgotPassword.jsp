<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./styles/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>Forgot Password</title>

<style>
	<%@ include file="./styles/ForgotPassword.css"%>
</style>
</head>
<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
				<form action="forgot-password" method="post" class="sign-in-form">
					<h2 class="title">Recover Your Password</h2>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="email" name="email"
							placeholder="Enter Your Email ID" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							pattern="^[a-zA-Z0-9.!#$%&+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$"
							onchange="try{setCustomValidity('')}catch(e){}"
							oninput="setCustomValidity(' ')"
							oninvalid="this.setCustomValidity('*Please enter valid Email')" />
					</div>

					<input type="submit" value="Submit" class="btn" />

				</form>
			</div>
		</div>
	</div>
</body>