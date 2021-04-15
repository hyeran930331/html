<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>정보처리기사 문제</title>

<style>
    fieldset 
	{
		border: 1px solid #ddd !important;
		margin: 0;
		min-width: 0;
		padding: 5px;       
		position: relative;
		border-radius:4px;
		background-color:#FFF;
		padding-left:10px!important;
	}
		legend
		{
			font-size:14px;
			font-weight: bold;
			margin-bottom: 0px;
			margin-right: 0px;
			min-width: 5%;
			width:auto;
			border: 1px solid #ddd;
			border-radius: 5px; 
			padding: 2px 10px 2px 10px; 
			background-color: #ffffff;
		}
</style>

</head>
<body>
<form action="./testAction.jsp" class="container">
<h1>정보처리기사 필기</h1>
	<fieldset class="col-md-12">
		<legend>1. 검토회의 전에 요구사항 명세서를 미리 배포하여 사전 검토한 후 짧은 검토 회의를 통해 오류를 조기에 검출하는데 목적을 두는 요구사항 검토 방법은?</legend> 		<div class="panel panel-default">
		<div class="panel panel-default">
			<input type="radio" name="problem1" value="1">① 빌드 검증<br>
			<input type="radio" name="problem1" value="2">② 동료 검증<br>
			<input type="radio" name="problem1" value="3">③ 워크 스루<br>
			<input type="radio" name="problem1" value="4">④ 개발자 검토<br>
		</div>
	</fieldset>
	
	<fieldset class="col-md-12">
		<legend>2.코드 설계에서 일정한 일련번호를 부여하는 방식의 코드는?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem2" value="1">① 연상 코드<br>
			<input type="radio" name="problem2" value="2">② 블록 코드<br>
			<input type="radio" name="problem2" value="3">③ 순차 코드<br>
			<input type="radio" name="problem2" value="4">④ 표의 숫자 코드<br>
		</div>
	</fieldset>
	
	<fieldset class="col-md-12">
		<legend>3. 객체지향 프로그램 에서 데이터를 추상화하는 단위는?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem3" value="1">① 메소드<br>
			<input type="radio" name="problem3" value="2">② 클래스<br>
			<input type="radio" name="problem3" value="3">③ 상속성<br>
			<input type="radio" name="problem3" value="4">④ 메세지<br>
		</div>
	</fieldset>

	<fieldset class="col-md-12">
		<legend>4. 데이터 흐름도(DFD)의 구성요소에 포함되지 않는 것은?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem4" value="1">① process<br>
			<input type="radio" name="problem4" value="2">② data flow<br>
			<input type="radio" name="problem4" value="3">③ data score<br>
			<input type="radio" name="problem4" value="4">④ data dictionary<br>
		</div>
	</fieldset>
	
	<fieldset class="col-md-12">
		<legend>5. 소프트웨어 설계시 구축된 플랫폼의 성능특성 분석에 사용되는 측정 항목이 아닌 것은?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem5" value="1">① 응답시간(lResponse Time)<br>
			<input type="radio" name="problem5" value="2">② 가용성(Availability)<br>
			<input type="radio" name="problem5" value="3">③ 가용률(Utilization)<br>
			<input type="radio" name="problem5" value="4">④ 서버튜닝(Server Tuning)<br>
		</div>
	</fieldset>	
	
	<fieldset class="col-md-12">
		<legend>6. UML 확장 모델에서 스테레오 타입 객체를 표현할 때 사용하는 기호로 맞는 것은?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem6" value="1">① < ><br>
			<input type="radio" name="problem6" value="2">② << >><br>
			<input type="radio" name="problem6" value="3">③ {{ }}<br>
			<input type="radio" name="problem6" value="4">④ [[ ]]<br>
		</div>
	</fieldset>
	
	<fieldset class="col-md-12">
		<legend>7. Gof(Gang of Four)의 디자인 패턴에서 행위 패턴에 속하는 것은?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem7" value="1">① Builder<br>
			<input type="radio" name="problem7" value="2">② Visitor<br>
			<input type="radio" name="problem7" value="3">③ Prototype<br>
			<input type="radio" name="problem7" value="4">④ Bridge<br>
		</div>
	</fieldset>

	<fieldset class="col-md-12">
		<legend>8. 자료 사전에서 자료의 생략을 의미하는 기호는?</legend>
	 	<div class="panel panel-default">
			<input type="radio" name="problem4" value="1">① {}<br>
			<input type="radio" name="problem4" value="2">② **<br>
			<input type="radio" name="problem4" value="3">③ =<br>
			<input type="radio" name="problem4" value="4">④ ()<br>
		</div>
	</fieldset>
	
	<fieldset class="col-md-12">
		<legend>9. 트랜젝션이 올바르게 처리되고 있는지 데이터를 감시하고 제어하는 미들웨어는?</legend>
 		<div class="panel panel-default">
			<input type="radio" name="problem4" value="1">① RPC<br>
			<input type="radio" name="problem4" value="2">② ORB<br>
			<input type="radio" name="problem4" value="3">③ TP monitor<br>
			<input type="radio" name="problem4" value="4">④ HUB<br>
		</div>
	</fieldset>	
	
	<fieldset class="col-md-12">
		<legend>10. UI 설계 원칙에서 누구나 쉽게 이해하고 사용할 수 있어야 한다는 것은?</legend>
 		<div class="panel panel-default">
			<input type="radio" name="problem4" value="1">① 유효성<br>
			<input type="radio" name="problem4" value="2">② 직관성<br>
			<input type="radio" name="problem4" value="3">③ 무결성<br>
			<input type="radio" name="problem4" value="4">④ 유연성<br>
		</div>
	</fieldset>

	<button type="submit">답안전송</button>

</form>
</body>
</html>