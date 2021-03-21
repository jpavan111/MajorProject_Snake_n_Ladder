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
<title>Update Password</title>

<style>
<%@ include file="./styles/UpdatePassword.css"%>
</style>
</head>
<body>

	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
				<form action="update-password" method="post" class="sign-in-form">
					<h2 class="title">Change Your Password</h2>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Enter New Password" class="form-control"
							id="passwordid"
							pattern="^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[a-zA-Z!#$%&?@])[a-zA-Z0-9!#$%&?@]{8,20}$"
							onchange="try{setCustomValidity('')}catch(e){}"
							oninvalid="this.setCustomValidity('*Your password must contain at least 1 uppercase, 1 lowercase letter, 1 no. digit and 1 special character.')"
							oninput="setCustomValidity(' ')" name="password"
							onChange="onChange()" />

					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i>
						<input type="password" placeholder="Confirm Password" class="form-control"
							id="confirm_passwordid" name="confirm" onChange="onChange()" />
					</div>

					<input type="submit" value="Submit" class="btn" />

				</form>
			</div>
		</div>
	</div>
	<script>
		function onChange() {
			const password = document.querySelector('input[name=password]');
			const confirm = document.querySelector('input[name=confirm]');
			if (confirm.value === password.value) {
				confirm.setCustomValidity('');
			} else {
				confirm.setCustomValidity('Passwords do not match');
			}
		}
	</script>
</body>