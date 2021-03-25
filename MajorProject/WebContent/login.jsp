<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styles/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <title>Sign in & Sign up Form</title>
    
    <link rel="stylesheet" href="style.css" />
    
    <style>
 		@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap");
 		<%@ include file="./styles/LoginCss.css" %>
    </style>
    
  </head>
  <body>
  
<%
Cookie[] cookies=request.getCookies();
String Email="",Password="", RememberVal="";
if (cookies != null) {
     for (Cookie cookie : cookies) {
       if (cookie.getName().equals("email")) {
           Email=cookie.getValue();
       }
       if(cookie.getName().equals("password")){
           Password=cookie.getValue();
       }
       if(cookie.getName().equals("remember")){
           RememberVal=cookie.getValue();
       }
    }
}
%>
  
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        
        
          <form action="login-servlet" method="post" class="sign-in-form">
          
          
          <c:if test="${userExistance == 1}">
          	<h3 style="color: red">User Already Exists!</h3>
          </c:if>
          
          <c:if test="${loginAuth == 1}">
          	<h3 style="color: red">Enter valid Email/Password!</h3>
          </c:if>
          
          <c:if test="${updatedPassword == 1}">
          	<h3 style="color: green">Password Updated Successfully!</h3>
          </c:if>
          
           <c:if test="${profileUpdationStatus == 1}">
          	<h3 style="color: green">Profile Updation Successful <br>&nbsp;&nbsp;&nbsp; Login again to continue!</h3>
          </c:if>
          
          
          
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              
              <input type="email" placeholder="Email" name="email"
                class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" value="<%=Email%>"
                pattern="^[a-zA-Z0-9.!#$%&+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')"
				oninvalid="this.setCustomValidity('*Please enter valid Email')" required="required"/>
              
              
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" value="<%=Password%>"
               name="password" placeholder="Password" required="required"/>
            </div>
            
            
            <div class="securityCode">
				<p id="code"></p>
				<div class="icons">
					<span class="changeText"> <i class="fas fa-sync-alt"></i></span>
				</div>
			</div>


			<div class="userInput">
            	<i class="fas fa-captcha"></i>
            	<input type="text" placeholder="Enter Captcha here" onChange="onDiff()" required /> 
        	</div>
            
            
            <div class="row align-items-center remember">
	        	<input type="checkbox" name="remember"
	        	 value="1" <%= "1".equals(RememberVal) ? "checked=\"checked\"" : "" %>> &nbsp;Remember Me
			</div>
			<div class="pass-link">
                <a href="ForgotPassword.jsp">Forgot password?</a>
            </div>
                        
                       
            
            <input type="submit" value="Login" class="btn solid" />
          </form>
          
          
          
          <form action="register-servlet" method="post" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              
              <input type="text" placeholder="Username" name="username"
                class="form-control" id="exampleInputName"
				placeholder="Enter Username" pattern="^[a-zA-Z0-9_]+$"
				oninvalid="this.setCustomValidity('*Please enter valid Username')"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              
              <input type="email" placeholder="Email" name="email"
                class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" 
                pattern="^[a-zA-Z0-9.!#$%&+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninput="setCustomValidity(' ')"
				oninvalid="this.setCustomValidity('*Please enter valid Email')" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              
              <input type="password" placeholder="Password" name="password" 
                class="form-control" id="passwordid"
				pattern="^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[a-zA-Z!#$%&?@])[a-zA-Z0-9!#$%&?@]{8,20}$"
				onchange="try{setCustomValidity('')}catch(e){}"
				oninvalid="this.setCustomValidity('*Your password must contain at least 1 uppercase, 1 lowercase letter, 1 no. digit and 1 special character.')"  
				oninput="setCustomValidity(' ')"
				name="password" onChange="onChange()" />
            </div>
            
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Confirm Password"
              class="form-control" id="confirm_passwordid"
              name="confirm" onChange="onChange1()"/>
            </div>
            
            <input type="submit" class="btn" value="Sign up" />
            
         
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here?</h3>
            <p>
             Get ready to re-live your all time favorite game Snake and Ladder. 
             The perfect Educational board game that assures you won't get bored! 
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="./images/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>Already One of us?</h3>
            <p>
             We welcome you back as you are our old companion & wish you luck!
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="./images/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>
    
	<script src="./scripts/script.js"></script>
    <script>   
    const sign_in_btn = document.querySelector("#sign-in-btn");
    const sign_up_btn = document.querySelector("#sign-up-btn");
    const container = document.querySelector(".container");

    sign_up_btn.addEventListener("click", () => {
      container.classList.add("sign-up-mode");
    });

    sign_in_btn.addEventListener("click", () => {
      container.classList.remove("sign-up-mode");
    });
    
    form.addEventListener('submit', e => {
    	e.preventDefault();
    	checkInputs();
    });
    
    const password = document.getElementById('password');
    const password2 = document.getElementById('password2');
    
    function checkInputs() { 
    if(password2Value === '') {
		setErrorFor(password2, 'Password2 cannot be blank');
	} else if(passwordValue !== password2Value) {
		setErrorFor(password2, 'Passwords does not match');
	} else{
		setSuccessFor(password2);
	}
    }
    
    
    function onChange1() {
    	  const password = document.getElementById('passwordid');
    	  const confirm = document.getElementById('confirm_passwordid');
    	  if (confirm.value == password.value) {
    	    confirm.setCustomValidity('');
    	  } else {
    	    confirm.setCustomValidity('Passwords do not match');
    	  }
    	}
    
    </script>
  </body>
</html>    