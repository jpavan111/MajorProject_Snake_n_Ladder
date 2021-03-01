<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css'>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
</head>
<style>
body {
    background-color: #616161
}

label.btn {
    padding: 18px 60px;
    width: 100%;
    white-space: normal;
    -webkit-transform: scale(1.0);
    -moz-transform: scale(1.0);
    -o-transform: scale(1.0);
    -webkit-transition-duration: .3s;
    -moz-transition-duration: .3s;
    -o-transition-duration: .3s
}

label.btn:hover {
    text-shadow: 0 3px 2px rgba(0, 0, 0, 0.4);
    -webkit-transform: scale(1.1);
    -moz-transform: scale(1.1);
    -o-transform: scale(1.1)
}

label.btn-block {
    text-align: left;
    position: relative
}

label .btn-label {
    position: absolute;
    left: 0;
    top: 0;
    display: inline-block;
    padding: 0 10px;
    background: #000000;
    height: 100%
}

label .glyphicon {
    top: 34%
}

.element-animation1 {
    animation: animationFrames ease .8s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease .8s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease .8s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

.element-animation2 {
    animation: animationFrames ease 1s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease 1s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease 1s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

.element-animation3 {
    animation: animationFrames ease 1.2s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease 1.2s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease 1.2s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

.element-animation4 {
    animation: animationFrames ease 1.4s;
    animation-iteration-count: 1;
    transform-origin: 50% 50%;
    -webkit-animation: animationFrames ease 1.4s;
    -webkit-animation-iteration-count: 1;
    -webkit-transform-origin: 50% 50%;
    -ms-animation: animationFrames ease 1.4s;
    -ms-animation-iteration-count: 1;
    -ms-transform-origin: 50% 50%
}

@keyframes animationFrames {
    0% {
        opacity: 0;
        transform: translate(-1500px, 0px)
    }

    60% {
        opacity: 1;
        transform: translate(30px, 0px)
    }

    80% {
        transform: translate(-10px, 0px)
    }

    100% {
        opacity: 1;
        transform: translate(0px, 0px)
    }
}

@-webkit-keyframes animationFrames {
    0% {
        opacity: 0;
        -webkit-transform: translate(-1500px, 0px)
    }

    60% {
        opacity: 1;
        -webkit-transform: translate(30px, 0px)
    }

    80% {
        -webkit-transform: translate(-10px, 0px)
    }

    100% {
        opacity: 1;
        -webkit-transform: translate(0px, 0px)
    }
}

.modal-header {
    background-color: transparent;
    color: inherit
}

.modal-body {
    min-height: 300px
}
</style>
<body>
	<div class="container-fluid">
		<div class="modal-dialog " style="margin-top: 5%">
			<div class="modal-content">
				<div class="modal-header">
					<h3>Q${que.id}.${que.question}</h3>
				</div>
				<div class="modal-body">
					<div class="col-xs-3 5"></div>
					<div class="quiz" id="quiz" data-toggle="buttons">
						<a href="answer-match?id=${que.id}&option=${que.option1}"><label
							class="element-animation1 btn btn-lg btn-danger btn-block mt-1"><span
							class="btn-label"><i
								class="glyphicon glyphicon-chevron-right"></i></span>
							<h5>${que.option1}</h5></label></a><br>
							
							
						<a href="answer-match?id=${que.id}&option=${que.option2}"><label
							class="element-animation2 btn btn-lg btn-danger btn-block mt-1"><span
							class="btn-label"><i
								class="glyphicon glyphicon-chevron-right"></i></span>
							<h5>${que.option2}</h5></label></a><br>
						
						
						<a href="answer-match?id=${que.id}&option=${que.option3}"><label
							class="element-animation3 btn btn-lg btn-danger btn-block mt-1"><span
							class="btn-label"><i
								class="glyphicon glyphicon-chevron-right"></i></span>
								<h5>${que.option3}</h5></label></a><br>
							
							
						<a href="answer-match?id=${que.id}&option=${que.option4}">
						<label
							class="element-animation4 btn btn-lg btn-danger btn-block mt-1"><span
							class="btn-label"><i
								class="glyphicon glyphicon-chevron-right"></i></span>
							<h5>${que.option4}</h5></label></a>
							
							
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>