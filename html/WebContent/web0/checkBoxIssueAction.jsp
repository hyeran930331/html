<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] hobby = request.getParameterValues("hobby");
%>
	<div>
	선택한 취미의 갯수 :
	<% if(hobby != null){	%>
	<%=hobby.length %>		
	<%} else { %>
		0
	<% } %>
	</div>
</body>
</html>