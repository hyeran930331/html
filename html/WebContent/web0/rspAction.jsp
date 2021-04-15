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
	String myRsp = request.getParameter("rsp");
	String[] systemRspArr = {"가위", "바위", "보"};
	int num = (int)(Math.random()*3); // 0, 1, 2
	
	String systemRsp = systemRspArr[num]; //가위, 바위, 보
	
	// &&(and) ||(or)

	String result ="";
	if(myRsp.equals(systemRsp)){
	result = "비겼다";		
	} 	else if( (myRsp.equals("가위")&&systemRsp.equals("보"))||(myRsp.equals("바위")&&systemRsp.equals("가위"))||(myRsp.equals("보")&&systemRsp.equals("바위")) )
	{
		result = "이겼다";
	} else {
		result = "졌다";
	}
	
%>

<table border="1">
	<tr>
		<td> my rsp </td>
		<td> 결과 </td>
		<td> system rsp </td>
	</tr>
	<tr>
		<td>
		<%
			if (myRsp=="가위"){
		%> <img src="./img/s.png">
		<%
			} else if (myRsp=="바위"){
		%> <img src="./img/r.png">
		<%
			} else {
		%>	<img src="./img/p.png">
		<%
			}
		%>
		</td>
		<td><%=result %></td>
		<td><%=systemRsp %></td>
	</tr>
</table>
</body>
</html>