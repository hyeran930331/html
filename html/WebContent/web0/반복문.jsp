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
	String[] arr = new String[2]; //
	arr[0] = "son";
	arr[1] = "kang";

	String[] name = {"kim", "gang"};
	
	for(int i=0; i<arr.length; i=i+1){
		System.out.println(i+1);
		System.out.println(arr[i]);
	}

	for(int i=0; i<name.length; i=i+1){
		System.out.println(name[i]);
	}
%>
</body>
</html>