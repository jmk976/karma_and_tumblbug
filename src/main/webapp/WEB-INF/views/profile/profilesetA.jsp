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
.container {
	width: 500px;
	margin: 0 auto;
	padding-top:30px;
  padding-bottom:30px;
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
<h3>계정 관리</h3>

	<div class="container">
	<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" name="id" value="${membership.id}" readonly="readonly">
				<!-- 6글자 이상 -->
			</div>
			<div class="form-group" hidden="hidden">
				<label for="pw">비밀번호</label> <input type="text"
					class="form-control" id="pw" value="${membership.pw}" >
					<h4 id="pwResult"></h4>
				<!-- 8글자 이상 -->
			</div>
			
			<div class="form-group">
				<label for="name">이름</label> <input type="text"
					class="form-control" id="name" name="name" class="etc" value="${membership.name}" >
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="birth">생년월일</label> <input type="text"
					class="form-control" id="birth" name="birth" class="etc" value="${membership.birth}" >
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="phone">휴대전화</label> <input type="text"
					class="form-control" id="phone" name="phone" class="etc" value="${membership.phone}" >
					<div class="form-group">
					<input type="button" id="sendphoneNum" value="전송">
					인증번호: <input type="text" id="checkNum">
					<input type="button" id="" value="확인"> 
				</div>
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="address">주소</label> <input type="text"
					class="form-control" id="address" name="address" class="etc" value="${membership.address}" readonly="readonly">
				<!-- 비어있으면 안됨 -->
			</div>
<a href="./update" type="button" class="btn btn-outline-primary">수정</a>
<a href="./delete?id=${membership.id}" type="button" class="btn btn-outline-danger">탈퇴</a>

</div>
</div>

<script type="text/javascript" src="../resources/jquery/sendSMS.js"></script>
</body>
</html>