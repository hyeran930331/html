<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리퀘스트 액션</title>
</head>
<body>
	<%
		//원래 디폴트 인코드 방식은 UTF-8이 아니다. 그래서
		request.setCharacterEncoding("UTF-8");
		//한글을 UTF-8로 만들었으니, 인코딩할때 UTF-8로 해달라
	%>
	<div>
		id : <%=request.getParameter("id") %>
	</div>
	<div>
		name : <%=request.getParameter("name") %>
	</div>
</body>
</html>