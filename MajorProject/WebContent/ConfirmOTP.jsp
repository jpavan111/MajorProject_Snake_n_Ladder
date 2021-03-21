<%@page import="Entity.OtpClass"%>
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
<title>Enter OTP</title>

<style>
	<%@ include file="./styles/ConfirmOTP.css"%>
</style>
</head>
<body>

	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
				<form action="otp-match" method="post" class="sign-in-form">
					<h2 class="title">Verify Your Account</h2>
					<div class="input-field">
						<i class="fas fa-otp"></i> <input type="text" name="userOtp"
							placeholder="Enter OTP here" />
					</div>

					<input type="submit" value="Submit" class="btn" />

				</form>
			</div>
		</div>
	</div>
</body>