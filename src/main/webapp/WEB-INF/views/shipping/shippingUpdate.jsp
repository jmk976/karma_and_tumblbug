<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>배송지 수정</h2>
		<form id="frm" action="./shippingUpdate" method="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="shipName">받는 사람</label> <input type="text"
					class="form-control myCheck" value="${dto.shipName}"
					id="shipName" name="shipName">
			</div>
			<div class="form-group">
				<label for="shipAddress">주소</label> <input type="text"
					class="form-control myCheck" value="${dto.shipAddress}"
					id="shipAddress" name="shipAddress">
			</div>
			<div class="form-group">
				<label for="shipPhone">받는 사람 휴대폰 번호</label> <input type="text"
					class="form-control myCheck" value="${dto.shipPhone}"
					id="shipPhone" name="shipPhone">
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input" value="?">기본 배송지로 등록
				</label>
			</div>

			<div class="form-group">
				<input type="hidden" id="id" name="id" value="${membership.id}">
				<input type="hidden" id="shipNum" name="shipNum" value="${dto.shipNum}">
			</div>


		<button type="submit" class="btn btn-primary">Update</button>
			
		</form>
	</div>

</body>
</html>