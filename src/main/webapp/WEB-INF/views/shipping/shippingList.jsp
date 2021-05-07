<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<style type="text/css">
.container {
	padding-top:30px;
  	padding-bottom:30px;
	text-align: center;
}
.card-body {
	padding-top:30px;
  	padding-bottom:30px;
	text-align: center;
}
h3{
  font-family: 'MapoGoldenPier';  text-align: center;
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
</style>


</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h3>등록된 배송지</h3>
		<a href="" id="insert">+ 배송지 추가</a>


		<c:forEach items="${list}" var="dto">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">${dto.shipName}</h5>
					<p class="card-text">${dto.shipAddress}</p>
					<p class="card-text">${dto.shipPhone}</p>
					<a href="#" id="update" class="update"
					onclick="updatePopup(${dto.shipNum}); return false;">수정</a>
					<a href="./shippingDelete?shipNum=${dto.shipNum}" class="delete">삭제</a>
				</div>
			</div>
		</c:forEach>

	</div>


	<script type="text/javascript" src="../resources/jquery/shippingList.js"></script>
	<script type="text/javascript">
	updatePopup = function(num) {
	    var _width = '650';
	    var _height = '600';
	    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	    var _left = Math.ceil(( window.screen.width - _width )/2);
	    var _top = Math.ceil(( window.screen.height - _height )/2); 
	    window.open('./shippingUpdate?shipNum='+num, 'popup-test', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top
	 );
	 
	}
	$("#update").click(updatePopup);
	</script>
	



</body>
</html>