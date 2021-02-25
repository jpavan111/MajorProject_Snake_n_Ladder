<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="padding: 20%; display:flex; justify-content: center; align-items: center; background-color: cyan; display: block; font-weight: 600;">
	Question Id ==> <label>${que.id}</label><br>
	Question ==> <label>${que.question}</label><br>
	<br>
	Option 1 ==> <label><a href="answer-match?id=${que.id}&option=${que.option1}"><input type="button" value="${que.option1}"></a></label><br>
	Option 2 ==> <label><a href="answer-match?id=${que.id}&option=${que.option2}"><input type="button" value="${que.option2}"></a></label><br>
	Option 3 ==> <label><a href="answer-match?id=${que.id}&option=${que.option3}"><input type="button" value="${que.option3}"></a></label><br>
	Option 4 ==> <label><a href="answer-match?id=${que.id}&option=${que.option4}"><input type="button" value="${que.option4}"></a></label><br>
	<br>
</div>

</body>
</html>