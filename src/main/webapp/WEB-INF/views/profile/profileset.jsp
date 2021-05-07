<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
<style type="text/css">
body {
	font-family: 'Trebuchet MS', serif;
	line-height: 1.6
}

.container {
	
	margin: 0 auto;
	padding-top:15px;
  padding-bottom:30px;
}

.container2 {
	
	margin: 0 auto;
	padding-top:30px;
  padding-bottom:30px;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
	text-align: center;
	border-bottom: 5px dotted gray;
}

ul.tabs li {
font-size:30px;:
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
  	font-family: 'MapoGoldenPier'; 
  	text-align: center;
  
}

@font-face {
    font-family: 'MapoGoldenPier';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
}

.tab-content.current {
	display: inherit;
}
.img{
width: 400px;
display: block;
margin-left: auto;

margin-right: auto;
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<ul class="tabs">
			
			<li><a href = "">profile</a></li>
			<li><a href = "../membership/memberPage">account</a></li>
			<li><a href = "../payment/paymentList">payment</a></li>
			<li><a href = "../shipping/shippingList">shipping</a></li>
			
		</ul>
		<div class="container2">
		<div class="form-group">
			<div class="form-group">
				<label for="nickname">이름</label> <input type="text"
					class="form-control" id="nickname" name="nickname"
					value="${dto.nickname}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="intro">소개</label> <input type="text"
					class="form-control" id="intro" name="intro"
					value="${dto.intro}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="web">웹사이트</label> <input type="text"
					class="form-control" id="web" name="web" value="${dto.web}"
					readonly="readonly">
			</div>

			<a href="./updateProfile" type="button" class="btn btn-outline-primary">수정</a>
			
		</div>
		
		<a href=""><img class="img" alt="" src="../resources/images/btnG_완성형.png"></a>
		
		

	</div>
<script type="text/javascript" src="../resources/jquery/profileset.js"></script>
</body>
</html>