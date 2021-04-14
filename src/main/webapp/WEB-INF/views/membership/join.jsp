<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h2>memberJoin</h2>
		<form action="./join" method="post" id="frm" enctype="multipart/form-data">
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" name="id">
					<button>check</button>
				<h4 id="idCheckResult"></h4>
				<!-- 6글자 이상 -->
			</div>
			<div class="form-group">
				<label for="pw">Password</label> <input type="password"
					class="form-control" id="pw" name="pw">
					<h4 id="pwResult"></h4>
				<!-- 8글자 이상 -->
			</div>
			<div class="form-group">
				<label for="pw">Password check</label> <input type="password"
					class="form-control" id="pw2" name="pw2">
					<h4 id="pw2Result" ></h4>
				<!-- pw 두개가 일치 -->
			</div>
			<div class="form-group">
				<label for="name">NAME</label> <input type="text"
					class="form-control" id="name" name="name" class="etc">
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="birth">BIRTH</label> <input type="text"
					class="form-control" id="birth" name="birth" class="etc">
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="phone">PHONE</label> <input type="text"
					class="form-control" id="phone" name="phone" class="etc">
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="address">ADDRESS</label> <input type="text"
					class="form-control" id="address" name="address" class="etc">
				<!-- 비어있으면 안됨 -->
			</div>
			
			
			<input type="submit" class="btn btn-primary" value="join" id="btn">

		</form>
	</div>

</body>
</html>