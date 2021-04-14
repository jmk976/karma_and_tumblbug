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
					<!-- 
					<a id="joinCheck" type="button" class="btn btn-outline-secondary">check</a>
					 -->
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
					<h4 id="nameResult" ></h4>
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="birth">BIRTH</label>
				<table style="width:100%; height:38px;">
				<thead></thead>
				<tbody>
				<tr>
				<td>
				<input type="text"
					class="form-control" id="year" name="birth" class="etc">
				</td>
				<td>
				<select style="width:150px; height:38px;" class="form-select" aria-label="Default select example" id="month" name="birth" class="etc">
				<c:forEach begin="1" end="12" var="i">
				<option>${i} 월</option>
				</c:forEach>
				</select>
				</td>
				<td>
				<input type="text"
					class="form-control" id="day" name="birth" class="etc">
				</td>
				</tr>
				</tbody>
				</table>
				
					<h4 id="birthResult" ></h4>
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="phone">PHONE</label> <input type="text"
					class="form-control" id="phone" name="phone" class="etc">
					<h4 id="phoneResult" ></h4>
				<!-- 비어있으면 안됨 -->
			</div>
			<div class="form-group">
				<label for="address">ADDRESS</label> <input type="text"
					class="form-control" id="address" name="address" class="etc">
					<h4 id="pw2Result" ></h4>
				<!-- 비어있으면 안됨 -->
			</div>
			
			
			<input type="submit" class="btn btn-primary" value="join" id="btn">

		</form>
	</div>
<script type="text/javascript" src="../resources/jquery/membershipJoin.js"></script>
</body>
</html>