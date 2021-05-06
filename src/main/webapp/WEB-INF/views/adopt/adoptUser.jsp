<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


h3{
  font-family: 'MapoGoldenPier';  
  text-align: center;
  border-bottom: 5px dotted gray;
  padding-top:30px;
  padding-bottom:30px;
}

@font-face {
    font-family: 'MapoGoldenPier';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.sub{
  padding-top:30px;
  padding-bottom:30px;
  text-align: center;
}
</style>
<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">


<h3>입양 신청 관리</h3>

<div class="sub">
담당자가 서류 검토 후 입양이 가능한 분께는 별도로 공지해 드리고 있으며, <br>
입양신청 후 10일 이내 연락이 없을시에는 유기동물을 키우시기에 적합하지 않다고 판단된 경우입니다.  <br>
이점 양해해 주시기 바랍니다.<br>
<br>
</div>


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

<%-- <c:import url="../template/footer.jsp"></c:import> --%>
</body>
</html>