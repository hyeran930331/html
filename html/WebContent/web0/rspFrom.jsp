<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<form action="./rspAction.jsp">
		<div>
		<input type="radio" name="rsp" value="가위">
		<img src="./img/s.png">
		</div>
		
		<div>
		<input type="radio" name="rsp" value="바위">
		<img src="./img/r.png">
		</div>
		
		<div>
		<input type="radio" name="rsp" value="보">
		<img src="./img/p.png">
		</div>
		
		<button type="submit"> 컴퓨터와 대결 </button>
	</form>
</body>
</html>