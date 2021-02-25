<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<style> 
.box{ 
    float:left;
	height:9.6vmin;
	width:9.6vmin;
	border:0.2vmin solid black;
	text-align:center;
	line-height:9.4vmin;
	font-size:3vmin;
	background-color:rgb(243, 245, 137);

}	

#main{
	position: absolute;
	margin:auto;
	top:0;
	left:0;
	right:0;
	bottom:0;
	border:2vmin solid rgb(46, 75, 92);
	height:100vmin;
	width:100vmin;
 }

 .button2 {
  position: relative;
  background-color:#bbd494;
  border: none;
  font-size: 18px;
  color: #FFFFFF;
  padding: 0px;
   width: 100%;
   height:auto;
  text-align: center;
  webkit-transition-duration: 0.4s; /* Safari */
 transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
 }
.button2:hover {background-color: #549072;}


.button2:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s;
}

.button2:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s;
} 
 .button1 {
  position: relative;
  background-color:#e7c73a;
  border: none;
  font-size: 18px;
  color: #051d60;
  padding: 0px;
  width: 100%;
  height:auto;
  text-align: center;
  webkit-transition-duration: 0.4s; /* Safari */
 transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}
.button1:hover {background-color: #ebfa07;}


.button1:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s;
}

.button1:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s;
} 
 
 .button3 {
  position: relative;
  background-color: #d9847b;
  border: none;
  font-size: 18px;
  color:#FFFFFF;
  padding: 0px;
  width: 100%;
  height:auto;
  text-align: center;
  webkit-transition-duration: 0.4s; /* Safari */
 transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}
.button3:hover {background-color: #a54252;}


.button3:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s;
}

.button3:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s;
} 
 .button4 {
  position: relative;
  background-color:#77c2f1;
  border: none;
  font-size: 18px;
  color: #051d60;
  padding: 0px;
  width: 100%;
  height:auto;
  text-align: center;
  webkit-transition-duration: 0.4s; /* Safari */
 transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}
.button4:hover {background-color: #07ebfa;}


.button4:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s;
}

.button4:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s;
} 
 .button5 {
  position: relative;
  background-color:#384c60;
  border: none;
  font-size: 18px;
  color:#FFFFFF;
  padding: 0px;
  width: 100%;
  height:auto;
  text-align: center;
  webkit-transition-duration: 0.4s; /* Safari */
 transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}
.button5:hover {background-color: #b349b3;}


.button5:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s;
}

.button5:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s;
} 

img{
	height:100%;
	width:100%;
}


#main img{
	position: absolute;
}


#l1{
	transform:scaleX(0.15) scaleY(0.2) rotate(31deg);
	top:34.3vmin;
	left:-29.5vmin;
}

#l2{
	transform:scaleX(0.15) scaleY(0.2) rotate(31deg);
	top:24.5vmin;
	left:9.7vmin;
}
#l3{
	transform:scaleX(0.15) scaleY(0.2) rotate(31deg);
	top:-14.7vmin;
	left:-39.3vmin;
}

#l4{
	transform:scaleX(0.15) scaleY(0.2) rotate(31deg);
	top:-24.4vmin;
	left:19.5vmin;
}

#l5{
	transform:scaleX(0.15) scaleY(0.2) rotate(-31deg);
	top:14.7vmin;
	left:-9.7vmin;
}

#l6{
	transform:scaleX(0.15) scaleY(0.2) rotate(-31deg);
	top:4.9vmin;
	left:29.5vmin;
}

#l7{
	transform:scaleX(0.15) scaleY(0.2) rotate(-31deg);
	top:-14.7vmin;
	left:39.3vmin;
}

#l8{
	transform:scaleX(0.15) scaleY(0.2) rotate(-31deg);
	top:-34.3vmin;
	left:-19.5vmin;
}

#l9{
	transform:scaleX(0.2) scaleY(0.2) rotate(65deg);
	top:-10vmin;
	left:-14.8vmin;
}

#l10{
	transform:scaleX(0.17) scaleY(0.2) rotate(-65deg);
	top:29.2vmin;
	left:34.2vmin;
}

#s1{
	transform:scaleX(0.3) scaleY(0.35) rotate(90deg);
	left:8.7vmin;
	top:-1vmin;
}

#s2{
	transform:scaleX(0.2) scaleY(0.2);
	left:-29.4vmin;
	top:4.3vmin;
}

#s3{
	transform:scaleX(0.18) scaleY(0.18);
	top:-20vmin;
	left:0.5vmin;
}

#s4{
	transform:scaleX(0.3) scaleY(0.2) rotate(10deg);
	top:37vmin;
	left:-6vmin;
}

#s5{
	transform:scaleX(0.19) scaleY(0.19) rotate(90deg);
	top:-35vmin;
	left:10vmin;
}

#s6{
	transform:scaleX(0.17) scaleY(0.17) rotate(5deg);
	top:-34.5vmin;
	left:-28vmin;
}
#s7{
	transform:scaleX(0.2) scaleY(0.2) rotate(30deg);
	top:-34.5vmin;
	left:38vmin;
}

#s8{
	transform:scaleX(0.2) scaleY(0.2) rotate(50deg);
	top:15.2vmin;
	left:41.2vmin;
}

</style>
<meta charset="ISO-8859-1">
<title>Snakes and Ladders</title>
</head>
<body>


<div class="container-sm">
<div class="container-md">
<div class="container-lg">
<div class="container-xl">
<div class="container-xxl">


<div class="container">
  <div id='main'>
  <form action="GetBlockValue">
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
			<div class='box' id='1'><button onclick="playAudio()" class='button5' name="block" value="1">1</button></div>
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
	    <img src='ladder1.png' id='l1'>
		<img src='ladder1.png' id='l2'>
		<img src='ladder1.png' id='l3'>
		<img src='ladder1.png' id='l4'>
		<img src='ladder1.png' id='l5'>
		<img src='ladder1.png' id='l6'>
		<img src='ladder1.png' id='l7'>
		<img src='ladder1.png' id='l8'>
		<img src='ladder1.png' id='l9'>
		<img src='ladder1.png' id='l10'>
		<img src='s1.png' id='s1'>
		<img src='s2.png' id='s2'>
		<img src='s3.png' id='s3'>
		<img src='s4.png' id='s4'>
		<img src='s5.png' id='s5'>
		<img src='s6.png' id='s6'>
		<img src='s7.png' id='s7'>
		<img src='s8.png' id='s8'>
			                     
	<div>
		<audio id="myAudio">
          <source src="click.mp3" type="audio/mpeg">
       </audio>
	<script>
     var x = document.getElementById("myAudio"); 
     function playAudio() { 
                           x.play();
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
</body>
</html>