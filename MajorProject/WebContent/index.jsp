<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


 
<%
	if(session.getAttribute("newSession") == null)
		response.sendRedirect("login.jsp");
	else
	{
		Object playerObj = session.getAttribute("playerObject");
		User player = (User)playerObj;
		System.out.println(player.getId());
	}
%>  


<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <style>
   *{
padding:0;
margin:0;
font-family: sans-serif;
}
body{
   background: #000;
}

.button {
  border-radius: 4px;
  background-color: #ffea00;
  border: none;
  color: #080229;
  text-align: center;
  font-size: 25px;
  padding: 3px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}
.button:hover {
  background-color: #8df7c9;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

.nav-bar{
     display: flex;
padding: 2% 4%;
}

.nav-logo img{
     width: 180px;
}


.nav-links{
   flex: 1;
   text-align: right;
  }
.nav-links ul li{
        list-style: none;
        display: inline-block;
        padding: 8px 12px;
}
.nav-links ul a{
          color: #ffea00;
           text-decoration: none;
           font-size: 18px;
}

.hero{
      width: 100%;
      top: 50%;
       left: 50%;
     transform: translate(-50%,-50%);
     position: absolute;
     text-align: center;
      color: #fff;
}

h1{
   font-size: 100px;
   color: transparent;
   -webkit-text-stroke: 1px #ffea00;
   background: url(back.png);
    -webkit-background-clip: text;
    background-position:0 0;
   animation: back 20s linear infinite;
   margin-bottom: 4%;
}

h3{
font-size: 50px;
   color: transparent;
   -webkit-text-stroke: 1px #ffea00;
   background: url(back.png);
    -webkit-background-clip: text;
    background-position:0 0;
   animation: back 20s linear infinite;
   margin-bottom: 4%;

}
@keyframes back{
   100%{
         background-position: 2000px 0;
   }
}




.menu-icon{
    width: 26px;
    display: none;
}

@media (max-width: 700px){
    .hero h1{
       font-size:26px;
        margin-bottom: 10%; 
}

.hero h3{
font-size:16px;
        margin-bottom: 10%; 
}

.button {
  border-radius: 4px;
  font-size: 18px;
  padding: 1px;
  width: 90px;
  margin: 2px;
  
}

.nav-links ul li{
    display: block;
}


.nav-links ul{
    padding: 0px 0px;
}
.nav-links ul a{
           font-size: 15px;
}

.nav-links{
    margin-top: 30px;
}

.nav-logo{
    margin-top: 10px;
    margin-left: 10px;

}
 .menu-icon{
     display: block;
      top: 20px;
      right: 35px;
      position: absolute;
       cursor: pointer;
 
}

   #mobileMenu{
       height: 0;
       overflow: hidden;
       transition: 1s;
       
       }
  
  
  
  .laan img{
      display:block;
      position: absolute;
 }

   
}




.laan img{
 width: 100px;
 animation: la 7s linear infinite;
 animation: sn 7s linear infinite;
 }

   
   .laan{
      width:100%;
      display: flex;
      align-items: center;
      justify-content: space-around ;
      position: absolute;
      bottom: 0;
      }
      
   @keyframes la{
      0%{
         transform: translateY(0);
         opacity: 0.2;
     }
      50%{
         opacity: 0.5;
     }
     
     70%{
           opacity: 0.5;
     }
     
     100%{
         transform: translateY(-80vh);
         opacity: 0.2;
     }
     
     
   } 
   
      
   @keyframes sn{
      0%{
         transform: translateY(0);
         opacity: 1;
     }
      50%{
         opacity: 2;
     }
     
     70%{
           opacity: 2;
     }
     
     100%{
         transform: translateY(-80vh);
         opacity: 1;
     }
     
     
   }  
   
   
   .laan img:nth-child(1){
    animation-delay: 0.5s;
} 
  .laan img:nth-child(2){
    animation-delay: 2s;
} 


  .laan img:nth-child(3){
   animation-delay: 1s;
} 


  .laan img:nth-child(4){
    animation-delay: 3s;
} 



   
   </style>
</head>
<body>
   
    
   <div class="nav-bar">
       <div class="nav-logo">
            <img src="./images/logo.png">
       </div>
        <div class="nav-links" id="mobileMenu" >
         <ul> 
                <a href="index.jsp"><li>Home</li></a>
                <a href="#"><li>About</li></a>
                <a href="leaderboard"><li>Leader board</li></a>
                <a href="#"><li>Contact Us</li></a>
                <a href="logout"><li>Log Out</li></a>
          </ul>
</div>
<img src="menu-icon.png"  class="menu-icon" onclick="showMenu()">
       </div>
      
<div class="hero">
      <h1>Snakes & Ladders</h1><br><h3>Learn With Fun</h3>

<a href="game.jsp"> <button class="button"><b><span>Play  </span></b><br><h6><b>with G.K.</b></h6></button></a>
&nbsp &nbsp  <a href="game.jsp"> <button class="button"><b><span>Play  </span></b><br><h6><b>with JAVA</b></h6></button></a>
</div>



<div class="laan">
<img src="./images/la.png">
<img src="./images/sn.png">
<img src="./images/la.png">
<img src="./images/sn.png">
</div>

<script>
   function showMenu(){
     var toggle = document.getElementById("mobileMenu");
     if(toggle.style.height == "0px"){
      toggle.style.height = "200px";
}
 else{
         toggle.style.height = "0px";
     }
   }    

        
</script>

</body>
</html>
