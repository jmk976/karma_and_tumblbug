<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>account</h1>
	<div class="container">
		<h5>계정</h5>
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">이메일</h5>
					<p class="card-text">${dto.email}</p>
					<a href="./profileUpdate?id=${membership.id}" class="update">수정</a>
				</div>
			</div>
			
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">비밀번호</h5>
					<p class="card-text">${dto.email}</p>
					<a href="./profileUpdate?id=${membership.id}" class="update">수정</a>
				</div>
			</div>
			
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">연락처</h5>
					<p class="card-text">${dto.email}</p>
					<a href="./profileUpdate?id=${membership.id}" class="update">수정</a>
				</div>
			</div>
			
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">페이스북 계정 연동</h5>
					<a href="" class="update">연동</a>
				</div>
			</div>
			
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">네이버 계정 연동</h5>
					<a href="" class="update">연동</a>
				</div>
			</div>
			
			<div class="card w-75">
				<div class="card-body">
					<h5 class="card-title">애플 계정 연동</h5>
					<a href="" class="update">연동</a>
				</div>
			</div>

	</div>


</body>
</html>