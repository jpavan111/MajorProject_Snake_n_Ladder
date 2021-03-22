<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="nav-bar">
	<div class="nav-logo">
		<img src="./images/logo.png">
	</div>
	<div class="nav-links" id="mobileMenu">
		<ul>
			<a href="index.jsp"><li>Home</li></a>
			<a href="GameInstructions.jsp"><li>Instructions</li></a>
			<a href="leaderBoard.jsp"><li>Leader board</li></a>
			<a href="AboutUs.jsp"><li>About Us</li></a>

			<!-- UserProfile -->

			<button class="btn" type="button" id="dropdownMenuButton"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="navbar-text p-0"> <i class='fas fa-user-tie'
					style='font-size: 30px; color: white'></i>
				</span> <span class="d-flex justify-content-center align-items-center"
					style='color: white'>&nbsp;Hi ${playerObject.getUsername()}</span>
			</button>

			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="load-profile"><i
					class="fas fa-user-cog"></i>&nbsp; Profile</a> <a class="dropdown-item"
					href="logout"><i class="fas fa-sign-out-alt"></i>&nbsp; Log Out</a>
			</div>
		</ul>
	</div>

</div>
<!-- UserProfile End -->
<img src="menu-icon.png" class="menu-icon" onclick="showMenu()">