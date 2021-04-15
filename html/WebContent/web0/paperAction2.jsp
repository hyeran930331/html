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

	String [] answer= { "RM", "3", "이특", "지효", "청하"};
	String [] question = request.getParameterValues("question");
	
	int total = 0;
	int scorePerQuestion = 20;
	
	for(int i=0; i<answer.length; i=1+1){
		if(answer[i].equals(question[i])){
			total = total + scorePerQuestion ;	
		}
	}
%>

<div> 점수 : <%= total%></div>
<div>
<%
	if(total == 100) {
%>		★★★★★
<%
	} else if(total == 80 ){
%>		★★★★☆		
<%
	} else if(total == 60){
%>		★★★☆☆		
<%
	} else if(total == 40){
%>		★★☆☆☆		
<%
	} else if(total == 20){
%>		★☆☆☆☆
<%	
	} else {
%>		☆☆☆☆☆ 꽝	
<%	
	}
%>
</div>
	

</body>
</html>