<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리퀘스트 폼</title>
</head>
<body>
	<h1>GET / POST 테스트</h1>
	<form method="post" action="./requestAction.jsp">
	<!--  get방식 : 숨김방식-->
	<!-- post방식 : 한글이 깨짐 주소뒤에 ?id=guest&name=goodee 오픈방식, 바디에 묶어서-->
		<div>
			id: <input type="text" name="id">
		</div>
		<div>
			name: <input type="text" name="name">
		</div>
		
		<button type="submit">전송</button>
	</form>
</body>
</html>