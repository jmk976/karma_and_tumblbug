<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>

<style type="text/css">
p {
	color: red;
	height: 15px;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
		<h2>memberUpdate</h2>
		<form action="./update" method="post" id="frm">
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" name="id" value="${membership.id}" readonly="readonly">
				<!-- 6글자 이상 -->
			</div>
			<div class="form-group">
				<label for="pw">Password</label> <input type="password"
					class="form-control" id="pw" name="pw">
				<p id="pwResult"></p>
				<!-- 8글자 이상 -->
			</div>
			<div class="form-group">
				<label for="pw">Password check</label> <input type="password"
					class="form-control" id="pw2" name="pw2">
				<p id="pw2Result"></p>
				<!-- pw 두개가 일치 -->
			</div>
			<div class="form-group">
				<label for="name">NAME</label> <input type="text"
					class="form-control" id="name" name="name" class="etc"
					value="${membership.name}">
				<p id="nameResult"></p>
				<!-- 비어있으면 안됨 -->
			</div>
			<label for="birth">BIRTH</label>
			<div class="input-group mb-3" id="birth" title="${membership.birth}">

				<input type="text" class="form-control" placeholder="년" id="year"
					name="birth" class="birth" maxlength="4"> <select
					style="width: 33%;" id="month" name="birth" class="birth">
					<option>월</option>

					<c:forEach begin="1" end="12" var="i">
						<c:if test="${i<10}">
							<option value="0${i}">${i}월</option>
						</c:if>
						<c:if test="${i>9}">
							<option value="${i}">${i}월</option>
						</c:if>
					</c:forEach>

				</select> <input type="text" class="form-control" placeholder="일" id="day"
					name="birth" class="birth" maxlength="2">
			</div>
			<p id="birthResult"></p>
			<div class="form-group">
				<label for="phone">PHONE</label> <input type="text"
					class="form-control" id="phone" name="phone" class="etc"
					value="${membership.phone}">
				<p id="phoneResult"></p>
				<!-- 비어있으면 안됨 -->
			</div>

			<div id="addressParse" title="${membership.address}">
				<label for="address">ADDRESS</label>
				<div class="input-group mb-3" id="findBtn">
					<input type="text" readonly="readonly" class="form-control"
						id="address1" name="address" placeholder="주소 검색">
					<div class="input-group-append">
						<a class="btn btn-success" type="button">FIND</a>
					</div>
				</div>
				<input type="text" class="form-control" id="address2" name="address"
					class="etc" placeholder="상세주소">
				<p id="addressResult"></p>
			</div>


			<a type="button" class="btn btn-primary" id="btn">UPDATE</a>

		</form>
	</div>
	<script type="text/javascript"
		src="../resources/jquery/membershipUpdate.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>