<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm OTP</title>
</head>
<body>
	<form action="otp-match" method="post">
		<div>
			Enter OTP: <input type="text" name="userOtp" placeholder="Enter OTP">
			<input type="hidden" name="emailOtp" value="${randomOtp}"> <input
				type="hidden" name="email" value="${emailOtp}"> <input
				type="submit" value="Submit">
		</div>
	</form>
</body>
</html>