<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<% 
  	if(session.getAttribute("newSession") == null)
		response.sendRedirect("login.jsp");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="styles.css">
<style>
<%@ include file="./styles/UpdateUserProfile.css"%>
</style>
</head>


<body>

<% 
	User playerObject = (User) request.getSession().getAttribute("userProfileObj");
%>


	<div class="container d-flex justify-content-center align-items-center">
			<div class="row">
			<div class="col-12 d-flex justify-content-center">
		<form action="update-user-by-profile" method="post" id="changePassword">

				<div class="card">
					<div class="card-header">

						<h2>Edit Profile</h2>

					</div>

					<div class="card-body">

						<div class="input-group form-group mt-5 ">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>

							</div>
							<input type="text" class="form-control input " name="username"
								placeholder="username" placeholder="Enter New Username"
								value="${playerObject.getUsername()}" required="required">

						</div>
						<div class="input-group form-group mt-4 mb-4">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-envelope"></i></span>
							</div>
							<input type="text" class="form-control input" name="email"
								placeholder="Enter New Email" value="${playerObject.getEmail()}" readonly="readonly">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control input" name="password"
								value="${playerObject.getPassword()}"
								placeholder="Enter New Password" required="required"
								pattern="^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[a-zA-Z!#$%&?@])[a-zA-Z0-9!#$%&?@]{8,20}$"
								onchange="try{setCustomValidity('')}catch(e){}"
								oninvalid="this.setCustomValidity('*Your password must contain at least 1 uppercase, 1 lowercase letter, 1 no. digit and 1 special character.')"
								oninput="setCustomValidity(' ')" name="password"
								onChange="onChange()"> <span></span> &nbsp;&nbsp;&nbsp;

							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control input" name="confirm"
								placeholder="Confirm Password" required="required"
								value="${playerObject.getPassword()}" onChange="onChange()">
						</div>


					</div>

					<div class="form-group ">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-12 d-flex justify-content-center">
							<input type="submit" class="btn btn-warning ml-2" value="Save Changes">
							<input type="reset" class="btn btn-warning text-right pl-4 pr-4 pt-3 pb-3 ml-2" value="Reset">
						</div>
					</div>
				</div>
		</form>
			</div>
		<div class="row">
		<div class="col-12 d-flex justify-content-center mt-4">
		<form action="index.jsp">
		<input type="submit" class="btn btn-warning text-right pl-4 pr-4 pt-3 pb-3" value="Back">
		</form>
		</div>
		</div>
		</div>
	</div>

	<script>
		function onChange() {
			const password = document.querySelector('input[name=password]');
			const confirm = document.querySelector('input[name=confirm]');
			if (confirm.value === password.value) {
				confirm.setCustomValidity('');
				document.getElementById("changePassword").submit();
			} else {
				confirm.setCustomValidity('Passwords do not match!');
			}
		}
	</script>


</body>
</html>

