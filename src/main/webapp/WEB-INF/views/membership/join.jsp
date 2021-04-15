<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
p {
	color: red;
	height:15px;
}

.b {
	color: blue;
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h2>memberJoin</h2>

		<form action="./join" method="post" id="frm"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" name="id">
				<p id="idCheckResult"></p>
			</div>
			<div class="form-group">
				<label for="pw">Password</label> <input type="password"
					class="form-control" id="pw" name="pw">
				<p id="pwResult"></p>
			</div>
			<div class="form-group">
				<label for="pw2">Password check</label> <input type="password"
					class="form-control" id="pw2" name="pw2">
				<p id="pw2Result"></p>
			</div>
			<div class="form-group">
				<label for="name">NAME</label> <input type="text"
					class="form-control" id="name" name="name">
				<p id="nameResult"></p>
			</div>
			<div class="form-group">
				<label for="birth">BIRTH</label>

				<div class="input-group mb-3" id="birth">

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
			</div>
			<div class="form-group">
				<label for="phone">PHONE</label> <input type="text"
					class="form-control" id="phone" name="phone" class="etc">
				<p id="phoneResult"></p>
			</div>
			<div class="form-group">
				<label for="address">ADDRESS</label> <input type="text"
					class="form-control" id="address" name="address" class="etc">
				<p id="addressResult"></p>
			</div>


			<a type="button" class="btn btn-primary" id="btn">JOIN</a>

		</form>
	</div>
	<script type="text/javascript"
		src="../resources/jquery/membershipJoin.js"></script>
</body>
</html>