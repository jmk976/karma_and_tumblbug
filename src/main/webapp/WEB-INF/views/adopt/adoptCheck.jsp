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
html, body { height: 100%; }
body { margin: 0; }
@import url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css);

.jejumyeongjo * { 
 font-family: 'Jeju Myeongjo', serif;
}
@font-face {
    font-family: 'MapoGoldenPier';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'paybooc-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/paybooc-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'BCcardL';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.1/BCcardL.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.img {
  float:left;
  object-fit: cover;
  margin-bottom:10px;
/*   position: absolute; */
  align:"left";
  width: 430px;
  height: 1000px;
 
}
img{
 width:400px;
}
h3{
  font-family: 'MapoGoldenPier';  text-align: center;
  border-bottom: 5px dotted gray;
  padding-top:30px;
  padding-bottom:30px;
}
p{
font-size: 22px;
}
.container{
 

}
</style>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
  <h3> 입양 신청</h3>
  <div class="img">
  	  <img src="../resources/images/adoptDog.jpg" /> 
   </div> 
  <div>
  <p><span style = " font-family: 'Jeju Myeongjo', serif;
   font-weight: bold ; font-size: 30px; color: MediumSeaGreen;">입양신청을 하기 전에...</span><br>
<br>
사람으로 인해 상처받은 생명을 입양하고자 하시는 모든 분들께 깊은 감사를 드립니다.<br>
<br>
협회의 인력이 부족하여 일일이상담해 드리기 어려운 관계로 먼저 입양신청서를<br>
작성해주시면 담당자가 서류 검토 후 입양이 가능한 분께는 별도로 공지해<br>
드리고 있으며, 입양신청 후 10일 이내 연락이 없을시에는<br>
유기동물을 키우시기에 적합하지 않다고 판단된 경우입니다.<br>
이점 양해해 주시기 바라며,<br>
<br>
<span style = "  font-family: 'Jeju Myeongjo', serif;
color: MediumSeaGreen;">“한국동물구조관리협회는 여러가지 이유로 한번 이상 버림받은 생명을 사랑으로 돌봐 줄 가족을 찾는 곳입니다.”</span><br>
<br>
<span style = "   font-family: 'Jeju Myeongjo', serif;
 font-weight: bold ; font-size: 25px; color: MediumSeaGreen;">중성화 수술은 입양 조건의 필수!</span><br>
<br>
<br>
안락사로 생명이 다하는 것에 대한 이기적이거나 값싼 동정심이 아닌 진정으로<br>
상처받은 생명을 평생 책임져 줄수 있는지 신중히 생각하시고 결정해 주시기<br>
바랍니다.<br></p> 
</div>
	  
	  
	 
	
 <c:if test="${not empty membership}">
	
	<div style="text-align: center;">
	<a href="./adoptInsert" class="btn btn-info"> 입양신청하기 </a>
	</div>
	
	</c:if>
	
	<c:if test="${empty membership}">
	
	<div style="text-align: center;">
	<a href="#" class="btn btn-info ch"> 입양신청하기 </a>

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