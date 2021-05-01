<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.result{
 padding-bottom:10px;
 border-bottom: 3px solid gray;
 text-align: center;
}

</style>
<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>
 <h2>입양신청 결과 페이지</h2>
 <br>
 <div class="container card bg-light text-dark">
    <div class="card-body">
	<div class="result">${dto.pass}</div>
	<br>
	<c:if test="${dto.pass =='보류'}">
	현재 담당자가 서류를 검토 중 입니다. 조금 더 기다려주십시오. 
	</c:if>
	
	<c:if test="${dto.pass =='부적합'}">
	죄송합니다. <br>귀하는 입양 신청 서류에서 유기동물을 키우시기에 적합하지 않다고 판단되었습니다. <br>
	참여해 주셔서 감사합니다.
	</c:if>
	
	<c:if test="${dto.pass =='자격통과'}">
	축하드립니다. 서류 자격 심사에 통과하셨습니다. 전화상담을 위 곧 유선으로 연락드리겠습니다.
	</c:if>
	
	<c:if test="${dto.pass =='전화통과'}">
	축하드립니다. 1차 전화상담을 완료하셨습니다. 2차 방문 상담 일정을 확인하십시오.
	</c:if>
	
	<c:if test="${dto.pass =='방문통과'}">
	축하드립니다. 2차 방문상담을 완료하셨습니다. 최종 입양일을 확인하십시오.
	</c:if>
	
	<c:if test="${dto.pass =='입양완료'}">
	축하드립니다. 입양 완료되었습니다. 새 가족과 함께 행복한 날들만 가득하시기 바랍니다.
	</c:if>
	
	<br>
	</div>
	</div>
</body>
</html>