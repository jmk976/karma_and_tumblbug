<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style>
img {
  width: 1050px;
  height: 270px;
  object-fit: cover;
  margin-bottom:10px;
  
}
h5{
  font-size: 27px;
  color: DarkOliveGreen;
  border-bottom: 5px dotted gray;
  padding-top:20px;
  padding-bottom:10px;
}
</style>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
  <h5>“주인을 잃고 길거리에서 죽음을 맞이하거나 버림 받아 안락사 되는 생명이 없는 세상을 만들어요.”</h5>
  <p>후원을 통한 일정한 후원금 조성을 통해 좀 더 안정적인 동물보호활동 및 보호소 지원 활동을 할 수 있습니다.</p> 
	  <div class="container p-3 my-3 pt-3 border">
	  
	  <img src="../resources/images/Animal_a.jpeg" /> 
	  
	  <p>소중한 후원금은 동물들을 위해 다음과 같이 쓰입니다.</p>
	  <p>1. 동물보호 캠페인 및 홍보 : 동물의 보호 및 유기동물입양 증대를 위한 홍보</p>
	  <p>2. 동물보호를 위한 교육사업 : 유기동물 발생 방지를 위한 교육자료 기획 배포 및 동물보호 교육실시</p>
	  <p>3. 입양지원 : 유기동물의 안락사 수를 줄이고 입양을 통한 새 삶의 기회 부여</p>
	  <p>4. 개인보호소 지원 : 열악한 개인보호소 지원을 통한 동물보호 및 자립심 부여</p>
	</div>
	
	<c:if test="${not empty membership}">
	
	<div style="text-align: center;">
	<a href="./sponsorJoin?sponSort=${'정기후원'}" class="btn btn-danger"> 정기후원 신청 </a>
    <a href="./sponsorJoin?sponSort=${'일시후원'}" class="btn btn-info"> 일시후원 신청 </a>
	</div>
	
	</c:if>
	
	<c:if test="${empty membership}">
	
	<div style="text-align: center;">
	<a href="#" class="btn btn-danger ch"> 정기후원 신청 </a>
    <a href="#" class="btn btn-info ch"> 일시후원 신청 </a>
	</div>
	
	</c:if>
	
	
	
	
</div>


<script type="text/javascript">
$(".ch").click(function(){ 
	 alert("로그인 먼저 해주세요.");
});
</script>

</body>
</html>