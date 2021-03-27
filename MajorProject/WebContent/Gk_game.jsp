<%@page import="Entity.Cell"%>
<%@page import="java.util.LinkedList"%>
<%@page import="Entity.Player"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@page errorPage="error.jsp"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<style>
<%@ include file="./styles/GameCss.css"%>
</style>
<meta charset="ISO-8859-1">
<title>GK Snakes and Ladders</title>
</head>


<body onload="cursorPosition()" style="overflow-y: hidden">

<%
	/* Getting Player Object from Session */
	Player player = null;
	
	if (session.getAttribute("newSession") == null)
		response.sendRedirect("login.jsp");
	else
		player = (Player) request.getSession().getAttribute("itsme");
		
	LinkedList<Cell> CellBlock= (LinkedList<Cell>)request.getSession().getAttribute("cells");
	int positionBack = player.getPosition();
%>


	<div class="container-fluid">
		<div class="row">
		
			<div class="col-3 text-center">
				<div class="container1"
					style="display: block; margin-left: 35%; margin-top: 30%">
					<div class="card" style="height: 39%; width: 90%; background-color:#86b3ffb3">
						<div class="card-body">
							<div style="align-text: center;">
								<form action="RollDiceActionGk" method="post">
									<input type="submit" class="btn btn-secondary btn-lg" onclick="mycouterPart()" value="Roll Dice">
								</form>
								
							</div>
							<div class="card-title"
								style="margin-top: 15%;" >
								 
								 <c:if test="${diceValue == 1}">
						          	<img src="./images/dice_1.png">
						         </c:if>
						         
						         <c:if test="${diceValue == 2}">
						          	<img src="./images/dice_2.png">
						         </c:if>
						         
						         <c:if test="${diceValue == 3}">
						          	<img src="./images/dice_3.png">
						         </c:if>
						         
						         <c:if test="${diceValue == 4}">
						          	<img src="./images/dice_4.png">
						         </c:if>
						         
						         <c:if test="${diceValue == 5}">
						          	<img src="./images/dice_5.png">
						         </c:if>
						         
						         <c:if test="${diceValue == 6}">
						          	<img src="./images/dice_6.png">
						         </c:if>
								
								</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="container-sm">
					<div class="container-md">
						<div class="container-lg">
							<div class="container-xl">
								<div class="container-xxl">
									<div class="container">
									
									<nav class="navbar navbar-light bg-light" style="opacity: 80%">
  										<div style="opacity: 100%">
	    									<marquee style="font-family:Book Antiqua; font-size: 0.7rem" scrollamount="2">
	    									<h3 style="font-weight: 800;"><i>Sowing seeds of knowledge while playing is our prime motive</i></h3>
	    									</marquee>
  										</div>
									</nav>
									
										<div id='main' style="margin-top:-0.3%">
											<form action="GetBlockValueGk" method="post" style="pointer-events: none">
											    <div class='box' id='100'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(99).getValue() %>">100</button></div>	
												<div class='box' id='99'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(98).getValue() %>">99</button></div>	
												<div class='box' id='98'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(97).getValue() %>">98</button></div>	
												<div class='box' id='97'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(96).getValue() %>">97</button></div>	
												<div class='box' id='96'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(95).getValue() %>">96</button></div>		
												<div class='box' id='95'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(94).getValue() %>">95</button></div>	
									            <div class='box' id='94'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(93).getValue() %>">94</button></div>		
												<div class='box' id='93'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(92).getValue() %>">93</button></div>		
												<div class='box' id='92'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(91).getValue() %>">92</button></div>		
												<div class='box' id='91'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(90).getValue() %>">91</button></div>		
												<div class='box' id='81'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(80).getValue() %>">81</button></div>		
												<div class='box' id='82'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(81).getValue() %>">82</button></div>		
												<div class='box' id='83'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(82).getValue() %>">83</button></div>	
									            <div class='box' id='84'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(83).getValue() %>">84</button></div>		
									            <div class='box' id='85'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(84).getValue() %>">85</button></div>		
												<div class='box' id='86'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(85).getValue() %>">86</button></div>		
												<div class='box' id='87'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(86).getValue() %>">87</button></div>		
												<div class='box' id='88'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(87).getValue() %>">88</button></div>		
												<div class='box' id='89'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(88).getValue() %>">89</button></div>		
												<div class='box' id='90'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(89).getValue() %>">90</button></div>		
												<div class='box' id='80'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(79).getValue() %>">80</button></div>
									            <div class='box' id='79'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(78).getValue() %>">79</button></div>	
												<div class='box' id='78'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(77).getValue() %>">78</button></div>	
												<div class='box' id='77'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(76).getValue() %>">77</button></div>
												<div class='box' id='76'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(75).getValue() %>">76</button></div>	
												<div class='box' id='75'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(74).getValue() %>">75</button></div>
												<div class='box' id='74'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(73).getValue() %>">74</button></div>
												<div class='box' id='73'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(72).getValue() %>">73</button></div>
									            <div class='box' id='72'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(71).getValue() %>">72</button></div>
									            <div class='box' id='72'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(70).getValue() %>">71</button></div>
												<div class='box' id='61'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(60).getValue() %>">61</button></div>
												<div class='box' id='62'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(61).getValue() %>">62</button></div>
												<div class='box' id='63'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(62).getValue() %>">63</button></div>	
												<div class='box' id='64'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(63).getValue() %>">64</button></div>	
												<div class='box' id='65'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(64).getValue() %>">65</button></div>	
												<div class='box' id='66'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(65).getValue() %>">66</button></div>
									            <div class='box' id='67'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(66).getValue() %>">67</button></div>	
												<div class='box' id='68'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(67).getValue() %>">68</button></div>	
												<div class='box' id='69'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(68).getValue() %>">69</button></div>	
												<div class='box' id='70'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(69).getValue() %>">70</button></div>	
												<div class='box' id='60'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(59).getValue() %>">60</button></div>	
												<div class='box' id='59'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(58).getValue() %>">59</button></div>	
												<div class='box' id='58'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(57).getValue() %>">58</button></div>
									            <div class='box' id='57'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(56).getValue() %>">57</button></div>
									            <div class='box' id='56'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(55).getValue() %>">56</button></div>	
												<div class='box' id='55'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(54).getValue() %>">55</button></div>	
												<div class='box' id='54'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(53).getValue() %>">54</button></div>	
												<div class='box' id='53'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(52).getValue() %>">53</button></div>	
												<div class='box' id='52'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(51).getValue() %>">52</button></div>	
												<div class='box' id='51'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(50).getValue() %>">51</button></div>	
												<div class='box' id='41'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(40).getValue() %>">41</button></div>
									            <div class='box' id='42'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(41).getValue() %>">42</button></div>	
												<div class='box' id='43'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(42).getValue() %>">43</button></div>	
												<div class='box' id='44'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(43).getValue() %>">44</button></div>	
												<div class='box' id='45'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(44).getValue() %>">45</button></div>	
												<div class='box' id='46'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(45).getValue() %>">46</button></div>	
												<div class='box' id='47'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(46).getValue() %>">47</button></div>	
												<div class='box' id='48'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(47).getValue() %>">48</button></div>
									            <div class='box' id='49'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(48).getValue() %>">49</button></div>	
									            <div class='box' id='50'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(49).getValue() %>">50</button></div>	
												<div class='box' id='40'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(39).getValue() %>">40</button></div>	
												<div class='box' id='39'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(38).getValue() %>">39</button></div>	
												<div class='box' id='38'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(37).getValue() %>">38</button></div>	
												<div class='box' id='37'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(36).getValue() %>">37</button></div>	
												<div class='box' id='36'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(35).getValue() %>">36</button></div>	
												<div class='box' id='35'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(34).getValue() %>">35</button></div>
									            <div class='box' id='34'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(33).getValue() %>">34</button></div>	
												<div class='box' id='33'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(32).getValue() %>">33</button></div>
												<div class='box' id='32'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(31).getValue() %>">32</button></div>
												<div class='box' id='31'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(30).getValue() %>">31</button></div>	
												<div class='box' id='21'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(20).getValue() %>">21</button></div>	
												<div class='box' id='22'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(21).getValue() %>">22</button></div>	
												<div class='box' id='23'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(22).getValue() %>">23</button></div>
									            <div class='box' id='24'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(23).getValue() %>">24</button></div>	
									            <div class='box' id='25'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(24).getValue() %>">25</button></div>	
												<div class='box' id='26'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(25).getValue() %>">26</button></div>
												<div class='box' id='27'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(26).getValue() %>">27</button></div>	
												<div class='box' id='28'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(27).getValue() %>">28</button></div>	
												<div class='box' id='29'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(28).getValue() %>">29</button></div>	
												<div class='box' id='30'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(29).getValue() %>">30</button></div>	
												<div class='box' id='20'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(19).getValue() %>">20</button></div>
									            <div class='box' id='19'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(18).getValue() %>">19</button></div>	
												<div class='box' id='18'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(17).getValue() %>">18</button></div>	
												<div class='box' id='17'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(16).getValue() %>">17</button></div>	
												<div class='box' id='16'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(15).getValue() %>">16</button></div>	
												<div class='box' id='15'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(14).getValue() %>">15</button></div>	
												<div class='box' id='14'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(13).getValue() %>">14</button></div>	
												<div class='box' id='13'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(12).getValue() %>">13</button></div>
									            <div class='box' id='12'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(11).getValue() %>">12</button></div>
											    <div class='box' id='11'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(10).getValue() %>">11</button></div>
												<div class='box' id='1'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(0).getValue() %>">1 <div id="cursor" class="center"><div class="pointer"><div class="shadow"></div></div></div></button></div>
									            <div class='box' id='2'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(1).getValue() %>">2</button></div>	
												<div class='box' id='3'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(2).getValue() %>">3</button></div>	
												<div class='box' id='4'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(3).getValue() %>">4</button></div>
												<div class='box' id='5'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(4).getValue() %>">5</button></div>	
												<div class='box' id='6'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(5).getValue() %>">6</button></div>	
												<div class='box' id='7'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(6).getValue() %>">7</button></div>	
												<div class='box' id='8'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(7).getValue() %>">8</button></div>
												<div class='box' id='9'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(8).getValue() %>">9</button></div>
												<div class='box' id='10'><button onclick="playAudio()" class='button5' name="block" value="<%=CellBlock.get(9).getValue() %>">10</button></div>
												</form>
										    
										    <img src='./images/ladder1.png' id='l1'>
											<img src='./images/ladder1.png' id='l2'>
											<img src='./images/ladder1.png' id='l3'>
											<img src='./images/ladder1.png' id='l4'>
											<img src='./images/ladder1.png' id='l5'>
											<img src='./images/ladder1.png' id='l6'>
											<img src='./images/ladder1.png' id='l7'>
											<img src='./images/ladder1.png' id='l8'>
											<img src='./images/ladder1.png' id='l9'>
											 <img src='./images/ladder1.png' id='l10'> 
											<img src='./images/s1.png' id='s1'>
											<img src='./images/s2.png' id='s2'>
											<img src='./images/s3.png' id='s3'>
											<img src='./images/s4.png' id='s4'>
											<img src='./images/s5.png' id='s5'>
											<img src='./images/s6.png' id='s6'>
											<img src='./images/s7.png' id='s7'>
											<img src='./images/s8.png' id='s8'>
												          
		
			                     
										 <div>
											<audio id="myAudio">
									          <source src="./images/click.mp3" type="audio/mpeg">
									        </audio>
			
						
						
												<script>
						
											 	position = <%= positionBack %>;
											 	var currentPosition = <%= positionBack %>;
												
											 	var dicePos = <%= request.getAttribute("diceValue") %> ;
												function cursorPosition()
												   {
													
													
													 var position = <%= positionBack %>;
												  	 var cursorElem = document.getElementById("cursor");
												  	 
												  	 var newPosElem = document.getElementById(position);
												  		newPosElem.children[0].append(cursorElem);
												   }
										 	
										 	function moveCursor() {
												var cursorElem = document.getElementById("cursor");
												
												var newPosElem = document.getElementById(position = position + dicePos);
												newPosElem.children[0].append(cursorElem);
						
						
												document.getElementById("cursor").click(); 
											
											}
											
										 	
											if(dicePos!=null){
												moveCursor();
											}
											
											</script>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-3">
			<div class="container2 text-center"
				style="display: block; margin-right: 30%; margin-top: 30%; margin-left: 8%">
				<div class="card" style="width: 90%; background-color:#86b3ffb3">
					<div class="card-body ">
						<div class="card-title" style="margin-bottom: 9%; font-size: 2em; font-weight: 600">Welcome <%= player.getPlayerName()%></div>
						
						<c:if test="${answerMessage == 1}">
							<div style="margin-bottom: 9%; font-size: 1em; font-weight: 800; color: green">
							Right Answer &#128526;<i class="far fa-grin-beam"></i></div>
						</c:if>
						
						<c:if test="${answerMessage == 0}">
							<div style="margin-bottom: 9%; font-size: 1em; font-weight: 800; color: red">
							Wrong Answer &#x1F613;<i class="far fa-frown"></i></div>
						</c:if>
						
						<div class="card-title" style="margin-bottom: 9%; font-size: 1em; font-weight: 800">Your Current Score <br><span style="margin-bottom: 9%; font-size: 3em; font-weight: 800">
										<%= player.getScore()*10%> </span></div>
						<div style="align-text: center;">
							<a href="index.jsp" class="btn btn-danger btn-lg" style="width: 80%">Exit</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>