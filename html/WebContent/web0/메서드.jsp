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
	double num1 = Math.random(); //0.000000 ~ 0.99999..
	int dice1 = (int)(num1*6) +1; //0.0000 ~ 5.9999
	
	double num2 = Math.random(); //0.000000 ~ 0.99999..
	int dice2 = (int)(num2*6) +1; //0.0000 ~ 5.9999
%>
<%
if (dice1==1) {
%>
	<img src="./img/1.jpg"  width="100" height="100">
<% } else if (dice1==2) {
	%>
	<img width="100" height="100" src="./img/2.jpg">
<% } else if (dice1==3){
	%>
	<img width="100" height="100" src="./img/3.jpg">
<% 	} else if (dice1==4){
	%>
	<img width="100" height="100" src="./img/4.jpg">
<% 	} else if (dice1==5){
	%>
	<img width="100" height="100" src="./img/5.jpg">
<% 	} else if (dice1==6){
	%>
	<img width="100" height="100" src="./img/6.jpg">
<% 	} %>
<%= "&nbsp" %>
<%=dice2 %>
<%="&nbsp" %>
<%=dice1+dice2 %>

	 	<%		System.out.print("5의배수: ");
		for (int i=1; 1<=50; i=i+1) {
			if (i%5==0) {
				System.out.print(i);
			}
		}
		%>
</body>
</html>