<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id;
String pw, pww;

id = request.getParameter("id"); //아이디
pw = request.getParameter("pw"); //비번 
/*
비번은 개인정보라 표기하지않음
*/
pww = request.getParameter("pww"); //비번확인용

boolean pwCheck;
pwCheck = (pw==pww); //비번확인이 맞는지 체크

String name; //이름이니깐
String frontIdNum, backIdNum; //앞front주민Id번호Num, 뒷back주민Id번호Num

boolean idNumCheck; //주민번호체크용

name = request.getParameter("name");
frontIdNum = request.getParameter("frontIdNum");
backIdNum = request.getParameter("backIdNum");

if (frontIdNum == "null") //앞주민번호가 없고,
{ 
		if (backIdNum == "null") //뒷주민번호가 없으면
		{
			idNumCheck = (3<0); //주민번호 확인=false
		}
} 
else 
{
	idNumCheck = (3>0); //둘다 아니면 주민번호 확인=true
} //왜 안될까요 ㅠㅜㅠㅜ

String y, m, d, cal; //y생년 m월 d일 cal음-양력
String call, frontCall, midCall, endCall; //연락처 장소라디오, 셀렉트앞번호,중간번호,끝번호
String frontPhone, midPhone, endPhone; //휴대전화 앞번호, 중간번호, 끝번호
String email; //이메일주소
String loc,postNum, frontLoc, midLoc, endLoc; //장소라디오, 우편번호, 주소시, 주소구, 주소길


y = request.getParameter("y");
m = request.getParameter("m");
d = request.getParameter("d");
cal = request.getParameter("cal");

frontPhone= request.getParameter("frontPhone");
midPhone= request.getParameter("midPhone");
endPhone = request.getParameter("endPhone");
call = request.getParameter("call");
frontCall= request.getParameter("frontCall");
midCall= request.getParameter("midCall");
endCall = request.getParameter("endCall");
email= request.getParameter("email");

loc =request.getParameter("loc");
postNum=request.getParameter("postNum");
frontLoc=request.getParameter("frontLoc");
midLoc =request.getParameter("midLoc");
endLoc=request.getParameter("endLoc");

String job, jobLoc, work; //직업, 직업장소, 회사인지자택인지라디오
String bizNum, jobPart, grade; //사업자번호, 직업부서, 직급
String freeTime, adMail, web, profile; //관심분야, 홍보메일여부, 웹주소, 자기소개
//홍보메일은 boolean으로는 어떻게 받는지 몰라서 그냥 String으로 문자열로 받음.
job=request.getParameter("job");
jobLoc=request.getParameter("jobLoc");
work=request.getParameter("work");
bizNum=request.getParameter("bizNum");
jobPart=request.getParameter("jobPart");
grade=request.getParameter("grade");
freeTime=request.getParameter("freeTime");
adMail=request.getParameter("adMail");
web=request.getParameter("web");
profile=request.getParameter("profile");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
	th {align:left;
		width:300px;}
		
	td{
	width: 150px;
	}
	</style>
</head>

<body>
<fieldset class="container">
	<legend>01 로그인 정보</legend>
	<table class="table table-bright">	<!-- 간격맞추기 위해 사용 -->
	<!-- 3tr 3td -->
		<tr> <!-- 1 -->
			<!-- 아이콘은 캡쳐후 img태그로 입력 -->
			<td>사용자 ID</td>
			<th><%=id %></th>
		</tr>

		<tr> <!-- 2 -->
			
			<td>비밀번호<span style="color:blue";> 확인 </span></td>
			<th><%=pwCheck %></th>
		</tr>
		
<!-- 이게 구동되게 하고싶은데, 안되요 ㅠㅜ -->
<!-- <tr> -->
<!--<td>주민번호<span style="color:blue";> 확인 </span></td>-->
<!--<th>idNumCheck </th> -->
<!--</tr>-->

	</table>
</fieldset>

<fieldset class="container">
	 <legend>02 개인 정보</legend>
	 <table class="table table-bright"> <!-- 7tr 3td -->
	 	<tr> <!-- 1 -->
	 	
	 		<td>이름</td>
	 		<th> <%=name %></th>
	 	</tr>
	 	
	 	<tr> <!-- 2 -->
	 		<td>주민등록번호 <span style="color:blue";> 확인 </span></td>
	 	<!-- 주민번호도 입력 확인용으로 해야할듯. -->
	 		<th> %bnsp; </th>
	 	</tr>
	 	
	 	<tr> <!-- 3 -->
	 		<td>생년월일</td>
	 		<th> <%=cal %> <%=y %>.<%=m %>.<%=d %></th>
	 	</tr>
	 	
	 	<tr> <!-- 4 -->
	 		
	 		<td>연락처</td>
	 		<th><%=call %>&nbsp;<%=frontCall %>-<%=midCall %>-<%=endCall %>  </th>
	 	</tr>
	 	
	 	<tr> <!-- 5 -->
	 		
	 		<td>휴대전화</td>
	 		<th><%=frontPhone %>-<%=midPhone%>-<%=endPhone %>  </th>
	 	</tr>
	 	
	 	<tr> <!-- 6 -->
	 		
	 		<td>E-mail 주소</td>
	 		<th> <%=email %>	 		</th>
	 	</tr>
	 	
	 	<tr> <!-- 7 -->
	 		<td>주소</td>
	 		<th>
			<%=loc %> &nbsp; <%=postNum %>
	 		</th>
	 	</tr>
	 	
	 	<tr> <!-- 8 -->
	 		<td>&nbsp;</td>
	 		<th> City:<%=frontLoc %> &nbsp; Gu,Gun:<%=midLoc %>&nbsp; Dong,Myeon,Eup:<%=endLoc %>	 		</th>
	 	</tr>
	 
	 </table>
</fieldset>	

<fieldset class="container">
	 <legend>03 기타정보</legend>
	 <table class="table table-bright"> <!-- 9tr 2td -->
	 	<tr> <!-- 1 -->
	 		<td>직업</td>
	 		<th> <%=job %></th>
	 	</tr>
	 	
	 	<tr> <!-- 2 -->
	 		<td>회사명(학교)</td>
	 		<th><%=work %>&nbsp;<%=jobLoc %>
	 		</th> 		
	 	</tr>
	 	
	 	<tr> <!-- 3 -->
	 		<td>사업자번호</td>
	 		<th><%=bizNum%></th> 		
	 	</tr>
	 	
	 	<tr> <!-- 4 -->
	 		<td>부서명(학과)</td>
	 		<th><%=jobPart%></th> 		
	 	</tr>
	 	
	 	<tr> <!-- 5 -->
	 		<td>직위(학년)</td>
	 		<th><%=grade%></th> 		
	 	</tr>
	 	
	 	<tr> <!-- 6 -->
	 		<td>관심분야</td>
	 		<th><%=freeTime%></th> 		
	 	</tr>
	 	
	 	<tr> <!-- 7 -->
	 		<td>TP웹진 수신</td>
	 		<th><%=adMail %> </th> 		
	 	</tr>
	 	
	 	<tr> <!-- 8 -->
	 		<td>홈페이지주소</td>
	 		<th><%=web%></th> 		
	 	</tr>
	 	
	 	<tr> <!-- 9 -->
	 		<td>자기소개</td>
	 		<th><%=profile%></th> 		
	 	</tr>
	 	
	 	<tr>
	 	<td>&nbsp;</td>
	 	<th><a href="./inputForm.html">다시작성</a></th>
	 	</tr>
	 </table>
	 
</fieldset>
	
	
</body>
</html>