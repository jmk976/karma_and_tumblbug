<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">


<h2>입양 신청 관리</h2>

담당자가 서류 검토 후 입양이 가능한 분께는 별도로 공지해 드리고 있으며, <br>
입양신청 후 10일 이내 연락이 없을시에는 유기동물을 키우시기에 적합하지 않다고 판단된 경우입니다. 이점 양해해 주시기 바랍니다.<br>


   <c:if test="${not empty membership}">
	
	<div style="text-align: center;">
	<a href="./adoptList?kind=ID&search=${membership.id}" class="btn btn-info"> 입양신청 내용 확인하기 </a>
	</div>
	
	</c:if>
	
	<c:if test="${empty membership}">
	
	<div style="text-align: center;">
	
    <a href="#" class="btn btn-info ch"> 입양신청 내용 확인하기 </a>
	</div>
	
	</c:if>
</div>

<script type="text/javascript">
$(".ch").click(function(){ 
	 alert("입양 신청 이력이 존재하지 않습니다.");
});
</script>

</body>
</html>