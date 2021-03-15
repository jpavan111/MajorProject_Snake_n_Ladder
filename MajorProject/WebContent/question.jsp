<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<title>Question</title>
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

<%@ include file="QuestionCss.css"%>
</style>


<body id="bdy">
	<div class="container">
		<div class="modal-dialog " style="margin-top: 12%">
			<div class="modal-content">
				<div class="modal-header">
					<h3>Q${que.id}.${que.question}</h3>
				</div>
				<div class="modal-body">
					<div class="col-xs-3 5"></div>
					<div class="quiz" id="quiz" data-toggle="buttons">
						
							
							<form action="answer-match" method="post">
								<label class="element-animation1 btn btn-lg btn-danger btn-block mt-1">
								<span class="btn-label">
								<i class="glyphicon glyphicon-chevron-right"></i></span>
								<input type="submit" style="display: none">${que.option1}</label>
								<input type="hidden" name="id" value="${que.id}">
								<input type="hidden" name="option" value="${que.option1}">
								<input type="hidden" name="pos" value="${valp.position}">
							</form>
							
							
							
							<form action="answer-match" method="post">
								<label class="element-animation2 btn btn-lg btn-danger btn-block mt-1">
								<span class="btn-label">
								<i class="glyphicon glyphicon-chevron-right"></i></span>
								<input type="submit" style="display: none">${que.option2}</label>
								<input type="hidden" name="id" value="${que.id}">
								<input type="hidden" name="option" value="${que.option2}">
								<input type="hidden" name="pos" value="${valp.position}">
							</form>
							
							
							
							<form action="answer-match" method="post">
								<label class="element-animation3 btn btn-lg btn-danger btn-block mt-1">
								<span class="btn-label">
								<i class="glyphicon glyphicon-chevron-right"></i></span>
								<input type="submit" style="display: none">${que.option3}</label>
								<input type="hidden" name="id" value="${que.id}">
								<input type="hidden" name="option" value="${que.option3}">
								<input type="hidden" name="pos" value="${valp.position}">
							</form>
							
							
							
							<form action="answer-match" method="post">
								<label class="element-animation4 btn btn-lg btn-danger btn-block mt-1">
								<span class="btn-label">
								<i class="glyphicon glyphicon-chevron-right"></i></span>
								<input type="submit" style="display: none">${que.option4}</label>
								<input type="hidden" name="id" value="${que.id}">
								<input type="hidden" name="option" value="${que.option4}">
								<input type="hidden" name="pos" value="${valp.position}">
							</form>
							
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>