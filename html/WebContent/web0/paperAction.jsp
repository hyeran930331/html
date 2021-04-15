<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String a1 = "RM";
	String a2 = "3";
	String a3 = "이특";
	String a4 = "지효";
	String a5 = "청하";
	String a6 = "1";
	String a7 = "3";
	String a8 = "2";
	String a9 = "4";
	String a10 = "2";
	String totalScore ;
	
	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String q3 = request.getParameter("q3");
	String q4 = request.getParameter("q4");
	String q5 = request.getParameter("q5");	
	String q6 = request.getParameter("q6");
	String q7 = request.getParameter("q7");	
	String q8 = request.getParameter("q8");	
	String q9 = request.getParameter("q9");	
	String q10 = request.getParameter("q10");	
	
	if(a1.equals(q1)){
		//true에만 {}안의 코드가 진행
		totalScore = totalScore+10;
	}
	if(a2.equals(q2)){
		//true에만 {}안의 코드가 진행
		totalScore = totalScore+10;
	}
%>

<div> 점수 : <%= totalScore%></div>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	

</body>
</html>