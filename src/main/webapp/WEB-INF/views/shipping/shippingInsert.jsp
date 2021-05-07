<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<div class="container">
		<h2>배송지 추가</h2>
		<form id="frm" action="./shippingInsert" method="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="shipName">받는 사람</label> <input type="text"
					class="form-control myCheck" placeholder="받는 분 성함을 입력해주세요"
					id="shipName" name="shipName">
			</div>
			<div class="form-group">
				<label for="shipAddress">주소</label><br>
				<input type="text" id="sample6_postcode" placeholder="우편번호" name="shipAddress">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" name="shipAddress"><br>
				<input type="text" id="sample6_address" placeholder="주소" name="shipAddress"><br>
				<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="shipAddress">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목">
			</div>

			<div class="form-group">
				<label for="shipPhone">받는 사람 휴대폰 번호</label> <input type="text"
					class="form-control myCheck" placeholder="받는 분 번호를 입력해주세요"
					id="shipPhone" name="shipPhone">
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input" value="?">기본 배송지로 등록
				</label>
			</div>

			<div class="form-group">
				<input type="hidden" id="id" name="id" value="${membership.id}">
			</div>

		
			<input type="submit" id="addbtn" value="ADD" class="btn btn-primary">
		</form>

		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script type="text/javascript" src="../resources/jquery/shippingInsert.js"></script>
	
	
</body>
</html>