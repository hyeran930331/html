<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paperForm</title>
</head>
<body>
	<h1>K Pop 온라인 시험</h1>
	<form action="./paperAction2.jsp">
		<!-- 단답형 5문제(보기에서 고르기) -->
		<h2>1~5번 : 보기에서 고르시오.</h2>
		<!-- 보기 -->
		<div>
			<h3>보기</h3>
			<div>
				RM, 진, 슈가, 제이홉, 지민, 뷔, 정국, 지수, 제니, 로제, 리사,
				이특, 희철, 예성, 신동, 은혁, 동해, 시원, 려욱, 규현, 성민,
				나연, 정연, 모모, 사나, 지효, 미나, 다현, 채영, 쯔위, 청하
			</div>ue
		</div>
		
		<div>
			<!-- 문제1 -->
			<div>
				1. BTS 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="question">
			</div>
		</div>
		
		<div>
			<!-- 문제2 -->
			<div>
				2. 트와이스의 외국인멤버수는?
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="question">
			</div>
		</div>
		
		<div>
			<!-- 문제3 -->
			<div>
				3. 슈퍼주니어의 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="question">
			</div>
		</div>
		
		<div>
			<!-- 문제4 -->
			<div>
				4. 트와이스의 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="question">
			</div>
		</div>
		
		<div>
			<!-- 문제5 -->
			<div>
				5. 솔로 여자가수를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="question">
			</div>
		</div>
		
	</div>
	
		<button type="submit"> 제출 </button>
	</form>
</body>
</html>