<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>
</head>
<body>
	<form action="update-password" method="post">
	<div>New Password: <input type="text" name="userNewPassword" placeholder="Password">
		 Confirm Password: <input type="text" name="confirmPassword" placeholder="Confirm Password">
							<input type="hidden" name="email" value="${emailOtp}">
							<input type="submit" value="Submit">
	</div>
</form>
</body>
</html>