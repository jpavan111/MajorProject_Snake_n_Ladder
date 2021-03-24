<%@page import="Entity.Player"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

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
	<%@ include file="./styles/GameCss0000.css"%>
</style>

<meta charset="ISO-8859-1">
<title>GK Snakes and Ladders</title>
</head>
<body onload="cursorPosition()">
<div class="container-fluid">
<div class="row">

<div class="col-3 text-center">
<div class="container1" style="display: block; margin-left: 35%; margin-top: 80%">
	<button type="button" class="btn btn-danger" style="width: 70%; font-size: 20px; border-radius: 10px; width:150px">
	Pause <i class="fas fa-pause"></i>
							</button>
		<div style="margin: 3%;">								
  <button onclick="moveCursor(1)" value="1">1</button>
  <button onclick="moveCursor(2)" value="2">2</button>
  <button onclick="moveCursor(3)" value="3">3</button>
  <button onclick="moveCursor(4)" value="4">4</button>
  <button onclick="moveCursor(5)" value="5">5</button>
  <button onclick="moveCursor(6)" value="6">6</button>
</div></div>							
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
    <marquee  style="font-family:Book Antiqua; font-size: 0.7rem" scrollamount="2"><h3><i>Sowing seeds of knowledge while playing is our prime motive</i></h3></marquee>
  </div>
</nav>
  <div id='main' style="margin-top:-1.75%">
  <form action="GetBlockValueGk" method="post" style="pointer-events: none">
		    <div class='box' id='100'><button onclick="playAudio()" class='button5' name="block" value="100">100</button></div>	
			<div class='box' id='99'><button onclick="playAudio()" class='button5' name="block" value="99">99</button></div>	
			<div class='box' id='98'><button onclick="playAudio()" class='button5' name="block" value="98">98</button></div>	
			<div class='box' id='97'><button onclick="playAudio()" class='button5' name="block" value="97">97</button></div>	
			<div class='box' id='96'><button onclick="playAudio()" class='button5' name="block" value="96">96</button></div>		
			<div class='box' id='95'><button onclick="playAudio()" class='button5' name="block" value="95">95</button></div>	
            <div class='box' id='94'><button onclick="playAudio()" class='button5' name="block" value="94">94</button></div>		
			<div class='box' id='93'><button onclick="playAudio()" class='button5' name="block" value="93">93</button></div>		
			<div class='box' id='92'><button onclick="playAudio()" class='button5' name="block" value="92">92</button></div>		
			<div class='box' id='91'><button onclick="playAudio()" class='button5' name="block" value="91">91</button></div>		
			<div class='box' id='81'><button onclick="playAudio()" class='button5' name="block" value="81">81</button></div>		
			<div class='box' id='82'><button onclick="playAudio()" class='button5' name="block" value="82">82</button></div>		
			<div class='box' id='83'><button onclick="playAudio()" class='button5' name="block" value="83">83</button></div>	
            <div class='box' id='84'><button onclick="playAudio()" class='button5' name="block" value="84">84</button></div>		
            <div class='box' id='85'><button onclick="playAudio()" class='button5' name="block" value="85">85</button></div>		
			<div class='box' id='86'><button onclick="playAudio()" class='button5' name="block" value="86">86</button></div>		
			<div class='box' id='87'><button onclick="playAudio()" class='button5' name="block" value="87">87</button></div>		
			<div class='box' id='88'><button onclick="playAudio()" class='button5' name="block" value="88">88</button></div>		
			<div class='box' id='89'><button onclick="playAudio()" class='button5' name="block" value="89">89</button></div>		
			<div class='box' id='90'><button onclick="playAudio()" class='button5' name="block" value="90">90</button></div>		
			<div class='box' id='80'><button onclick="playAudio()" class='button5' name="block" value="80">80</button></div>
            <div class='box' id='79'><button onclick="playAudio()" class='button5' name="block" value="79">79</button></div>	
			<div class='box' id='78'><button onclick="playAudio()" class='button5' name="block" value="78">78</button></div>	
			<div class='box' id='77'><button onclick="playAudio()" class='button5' name="block" value="77">77</button></div>
			<div class='box' id='76'><button onclick="playAudio()" class='button5' name="block" value="76">76</button></div>	
			<div class='box' id='75'><button onclick="playAudio()" class='button5' name="block" value="75">75</button></div>
			<div class='box' id='74'><button onclick="playAudio()" class='button5' name="block" value="74">74</button></div>
			<div class='box' id='73'><button onclick="playAudio()" class='button5' name="block" value="73">73</button></div>
            <div class='box' id='72'><button onclick="playAudio()" class='button5' name="block" value="72">72</button></div>
            <div class='box' id='72'><button onclick="playAudio()" class='button5' name="block" value="71">71</button></div>
			<div class='box' id='61'><button onclick="playAudio()" class='button5' name="block" value="61">61</button></div>
			<div class='box' id='62'><button onclick="playAudio()" class='button5' name="block" value="62">62</button></div>
			<div class='box' id='63'><button onclick="playAudio()" class='button5' name="block" value="63">63</button></div>	
			<div class='box' id='64'><button onclick="playAudio()" class='button5' name="block" value="64">64</button></div>	
			<div class='box' id='65'><button onclick="playAudio()" class='button5' name="block" value="65">65</button></div>	
			<div class='box' id='66'><button onclick="playAudio()" class='button5' name="block" value="66">66</button></div>
            <div class='box' id='67'><button onclick="playAudio()" class='button5' name="block" value="67">67</button></div>	
			<div class='box' id='68'><button onclick="playAudio()" class='button5' name="block" value="68">68</button></div>	
			<div class='box' id='69'><button onclick="playAudio()" class='button5' name="block" value="69">69</button></div>	
			<div class='box' id='70'><button onclick="playAudio()" class='button5' name="block" value="70">70</button></div>	
			<div class='box' id='60'><button onclick="playAudio()" class='button5' name="block" value="60">60</button></div>	
			<div class='box' id='59'><button onclick="playAudio()" class='button5' name="block" value="59">59</button></div>	
			<div class='box' id='58'><button onclick="playAudio()" class='button5' name="block" value="58">58</button></div>
            <div class='box' id='57'><button onclick="playAudio()" class='button5' name="block" value="57">57</button></div>
            <div class='box' id='56'><button onclick="playAudio()" class='button5' name="block" value="56">56</button></div>	
			<div class='box' id='55'><button onclick="playAudio()" class='button5' name="block" value="55">55</button></div>	
			<div class='box' id='54'><button onclick="playAudio()" class='button5' name="block" value="54">54</button></div>	
			<div class='box' id='53'><button onclick="playAudio()" class='button5' name="block" value="53">53</button></div>	
			<div class='box' id='52'><button onclick="playAudio()" class='button5' name="block" value="52">52</button></div>	
			<div class='box' id='51'><button onclick="playAudio()" class='button5' name="block" value="51">51</button></div>	
			<div class='box' id='41'><button onclick="playAudio()" class='button5' name="block" value="41">41</button></div>
            <div class='box' id='42'><button onclick="playAudio()" class='button5' name="block" value="42">42</button></div>	
			<div class='box' id='43'><button onclick="playAudio()" class='button5' name="block" value="43">43</button></div>	
			<div class='box' id='44'><button onclick="playAudio()" class='button5' name="block" value="44">44</button></div>	
			<div class='box' id='45'><button onclick="playAudio()" class='button5' name="block" value="45">45</button></div>	
			<div class='box' id='46'><button onclick="playAudio()" class='button5' name="block" value="45">46</button></div>	
			<div class='box' id='47'><button onclick="playAudio()" class='button5' name="block" value="47">47</button></div>	
			<div class='box' id='48'><button onclick="playAudio()" class='button5' name="block" value="48">48</button></div>
            <div class='box' id='49'><button onclick="playAudio()" class='button5' name="block" value="49">49</button></div>	
            <div class='box' id='50'><button onclick="playAudio()" class='button5' name="block" value="50">50</button></div>	
			<div class='box' id='40'><button onclick="playAudio()" class='button5' name="block" value="40">40</button></div>	
			<div class='box' id='39'><button onclick="playAudio()" class='button5' name="block" value="39">39</button></div>	
			<div class='box' id='38'><button onclick="playAudio()" class='button5' name="block" value="38">38</button></div>	
			<div class='box' id='37'><button onclick="playAudio()" class='button5' name="block" value="37">37</button></div>	
			<div class='box' id='36'><button onclick="playAudio()" class='button5' name="block" value="36">36</button></div>	
			<div class='box' id='35'><button onclick="playAudio()" class='button5' name="block" value="35">35</button></div>
            <div class='box' id='34'><button onclick="playAudio()" class='button5' name="block" value="34">34</button></div>	
			<div class='box' id='33'><button onclick="playAudio()" class='button5' name="block" value="33">33</button></div>
			<div class='box' id='32'><button onclick="playAudio()" class='button5' name="block" value="32">32</button></div>
			<div class='box' id='31'><button onclick="playAudio()" class='button5' name="block" value="31">31</button></div>	
			<div class='box' id='21'><button onclick="playAudio()" class='button5' name="block" value="21">21</button></div>	
			<div class='box' id='22'><button onclick="playAudio()" class='button5' name="block" value="22">22</button></div>	
			<div class='box' id='23'><button onclick="playAudio()" class='button5' name="block" value="23">23</button></div>
            <div class='box' id='24'><button onclick="playAudio()" class='button5' name="block" value="24">24</button></div>	
            <div class='box' id='25'><button onclick="playAudio()" class='button5' name="block" value="25">25</button></div>	
			<div class='box' id='26'><button onclick="playAudio()" class='button5' name="block" value="26">26</button></div>
			<div class='box' id='27'><button onclick="playAudio()" class='button5' name="block" value="27">27</button></div>	
			<div class='box' id='28'><button onclick="playAudio()" class='button5' name="block" value="28">28</button></div>	
			<div class='box' id='29'><button onclick="playAudio()" class='button5' name="block" value="29">29</button></div>	
			<div class='box' id='30'><button onclick="playAudio()" class='button5' name="block" value="30">30</button></div>	
			<div class='box' id='20'><button onclick="playAudio()" class='button5' name="block" value="20">20</button></div>
            <div class='box' id='19'><button onclick="playAudio()" class='button5' name="block" value="19">19</button></div>	
			<div class='box' id='18'><button onclick="playAudio()" class='button5' name="block" value="18">18</button></div>	
			<div class='box' id='17'><button onclick="playAudio()" class='button5' name="block" value="17">17</button></div>	
			<div class='box' id='16'><button onclick="playAudio()" class='button5' name="block" value="16">16</button></div>	
			<div class='box' id='15'><button onclick="playAudio()" class='button5' name="block" value="15">15</button></div>	
			<div class='box' id='14'><button onclick="playAudio()" class='button5' name="block" value="14">14</button></div>	
			<div class='box' id='13'><button onclick="playAudio()" class='button5' name="block" value="13">13</button></div>
            <div class='box' id='12'><button onclick="playAudio()" class='button5' name="block" value="12">12</button></div>
		    <div class='box' id='11'><button onclick="playAudio()" class='button5' name="block" value="11">11</button></div>
			<div class='box' id='1'><button onclick="playAudio()" class='button5' name="block" value="1">1<img id="cursor" src="./images/token_red.png" /></button></div>
            <div class='box' id='2'><button onclick="playAudio()" class='button5' name="block" value="2">2</button></div>	
			<div class='box' id='3'><button onclick="playAudio()" class='button5' name="block" value="3">3</button></div>	
			<div class='box' id='4'><button onclick="playAudio()" class='button5' name="block" value="4">4</button></div>
			<div class='box' id='5'><button onclick="playAudio()" class='button5' name="block" value="5">5</button></div>	
			<div class='box' id='6'><button onclick="playAudio()" class='button5' name="block" value="6">6</button></div>	
			<div class='box' id='7'><button onclick="playAudio()" class='button5' name="block" value="7">7</button></div>	
			<div class='box' id='8'><button onclick="playAudio()" class='button5' name="block" value="8">8</button></div>
			<div class='box' id='9'><button onclick="playAudio()" class='button5' name="block" value="9">9</button></div>
			<div class='box' id='10'><button onclick="playAudio()" class='button5' name="block" value="10">10</button></div>
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
       
       
       
  <% 
  	/* Getting Player Object from Session */
  	Player player=null;
  	if(session.getAttribute("newSession") == null)
		response.sendRedirect("login.jsp");
	else
	{
		player = (Player)request.getSession().getAttribute("itsme");
	}
  
   int positionBack = player.getPosition();
   System.out.println(positionBack);
  %>
       
       
	<script>
	 function cursorPosition()
     {
    	 
    	 position = <%= positionBack %>;
    	 var cursorElem = document.getElementById("cursor");
    	 var newPosElem = document.getElementById(position);
    		newPosElem.children[0].append(cursorElem);
    	
     } 
	 
	 
	 	var position = 1;
	    
	 	var currentPosition = 1;
		var snakeAndLadderPos = [
		
		{old: 19, new: 38},
		{old: 11, new: 28},
		{old: 24, new: 6},
		{old: 15, new: 34},
		{old: 25, new: 44},
		{old: 59, new: 38},
		{old: 32, new: 53},
		{old: 50, new: 30},
		{old: 51, new: 72},
		{old: 68, new: 36},
		{old: 58, new: 65},
		{old: 59, new: 38},
		{old: 60, new: 79},
		{old: 94, new: 75},
		{old: 77, new: 98},
		{old: 76, new: 66},
		{old: 67, new: 88},
		{old: 91, new: 72},
		{old: 99, new: 78}
	];
	function moveCursor(digits) {
		var cursorElem = document.getElementById("cursor");
		var newPosElem = document.getElementById(position = position + digits);
		newPosElem.children[0].append(cursorElem);
		checkSnakeOrLadder();
		
		
	 	document.getElementById("cursor").click(); 
		currentPosition = document.getElementById("cursor");
	}
	function checkSnakeOrLadder() {
		var cursorElem = document.getElementById("cursor");
		for(var i = 0; i < snakeAndLadderPos.length; i++){
			if(snakeAndLadderPos[i].old === position){
				position = snakeAndLadderPos[i].new;
				break;
			}
		}
		var newPosElem = document.getElementById(position);
		newPosElem.children[0].append(cursorElem);
	}
	 
     </script>
     <!-- <script src="./scripts/GameScript.js" type="text/javascript"></script> -->
     	
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
				<div class="card" style="width: 90%;">
					<div class="card-body ">
						<div class="card-title" style="margin-bottom: 9%; font-size: 2em; font-weight: 600">Welcome <%= player.getPlayerName()%></div>
						<div class="card-title" style="margin-bottom: 9%; font-size: 1em; font-weight: 800">Your Current Score <br><span style="margin-bottom: 9%; font-size: 3em; font-weight: 800">
										<%= player.getGkScore()%> </span></div>
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