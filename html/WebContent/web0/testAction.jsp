<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보처리 기사 채점</title>
<style>
	    fieldset 
	{
		border: 1px solid #ddd !important;
		margin: 0;
		xmin-width: 0;
		padding: 10px;       
		position: relative;
		border-radius:4px;
		background-color:#f5f5f5;
		padding-left:10px!important;
	}	
	
		legend
		{
			font-size:14px;
			font-weight:bold;
			margin-bottom: 0px; 
			width: 35%; 
			border: 1px solid #ddd;
			border-radius: 4px; 
			padding: 5px 5px 5px 10px; 
			background-color: #ffffff;
		}
</style>
</head>

<body>
<%
	String[] myAnswer = new String[9];
	//내답 배열 생성
	String[] answer = { "3", "3", "2", "4", "4", "1", "2", "4", "3", "2"};
	//정답 배열 생성 및 입력
	
	int totalScore = 0; //총점 숫자변수
	int scorePerQuestion = 10; //문제갯수당 10점
	int right = 0; //맞은 갯수 변수
	String[] checkMyAnswer = new String[9] ; //내 정답 체크용 배열
	
	int i;
	
	for(i = 0; i<myAnswer.length;) {
		myAnswer[i] = request.getParameter("problem"+(i+1));
		//라디오값1부터~9까지 반복
		if(answer[i].equals(myAnswer[i]))//반복중에 정답과 내답이 같다면
			{
			totalScore = totalScore + scorePerQuestion;		//총점에 10점을 더하기	
			i=i+1;} //i를 하나 더하기.
		else {i=i+1;} //아니여도 i 하나 더하기
	}	//내답배열마다 라디오value 넣는 for문

	
	i = 0;//i 초기화
	
	while(i<9){
		checkMyAnswer[i] = (myAnswer[i].equals(answer[i]));  
		//체크배열에 (정답배열과 내대답배열이 같다면) true, 다르면 false 
		i=i+1; // 한바퀴 돌고
	} //i가 10이 될때지 반복되는 while문.
	

	for(i = 0; i <10; i++) {
	{ // 0인 변수i 가 문제길이 10 보다 길때까지 반복
		if(checkMyAnswer[i])//만약 체크배열이 트루라면
		{
			totalScore = totalScore + scorePerQuestion ;	//총점에 기준점수를 더하고,
			right = right+1; //정답갯수 변수에 1을 더하고,
			checkMyAnswer[i] = "O"; //정답체크 배열에 O를 입력하고
			i=i+1; // 변수i을 더하고 if문을 종료한다.
		} 
			else 
		{ //나머지 경우=정답배열과 내대답배열이 다르다면
				checkMyAnswer[i] = "X"; // 정답체크 배열에 X를 입력하고
				i=i+1; //변수 i를 더하고 if문을 종료한다.
		}
		// 다시 while로
	} //변수i가 대답길이보다 길면 종료
	

	 
%>
<h1></h1>
<fieldset>
	<legend>몇 개나 맞추었나요?</legend>
		<div>
		<%
			while(right<=0) //맞은 갯수가 0보다 작을때까지
			{
		%>	★		
		<% //별 출력
			right=right-1;
			//출력 후 맞은갯수 -1
			} //맞은갯수가 0이 되면 그만.
		%>
		</div>
</fieldset>

<fieldset>
	<legend>총 점수</legend>
		<div>
		<%=totalScore		%>점
		</div>
</fieldset>

<fieldset>
	<legend>합격여부</legend>
<div>
<%
	if (totalScore >= 60) { //총점이 60보다 높으면
%>	합격입니다.
<%
	} else { //아니면
%>	불합격입니다.
<%
	}
%>
</div>
</fieldset>

<fieldset>
	<legend>정답확인</legend>
		<table>
			<tr> <!-- 0 -->
				<th>문제번호</th>
				<th>내가 입력한 답</th>
				<th>정답</th>
				<th>정답여부</th>
			</tr>		
			
			<tr> <!-- 1 -->
				<td> 1 </td>
				<td><%=myAnswer[0] %></td>
				<td><%=answer[0] %></td>
				<td><%=checkMyAnswer[0]%></td>
		</table>
</fieldset>




</body>
</html>