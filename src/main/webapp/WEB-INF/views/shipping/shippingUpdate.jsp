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
		<!-- 지도 입력으로 받아온 주소 ... 띄워주기 -->
		<form id="frm" action="./shippingInsert" method="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="shipName">받는 사람</label> <input type="text"
					class="form-control myCheck" value=""
					id="shipName" name="shipName">
			</div>
			<div class="form-group">
				<label for="shipAddress">주소</label> <input type="text"
					class="form-control myCheck" value="" d="shipAddress" name="shipAddress">
			</div>
			<div class="form-group">
				<label for="shipPhone">받는 사람 휴대폰 번호</label> <input type="text"
					class="form-control myCheck" value=""
					id="shipPhone" name="shipPhone">
			</div>
			<div class="form-check">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input" value="?">기본 배송지로 등록
				</label>
			</div>

			<input type="button" id="btn" value="WRITE" class="btn btn-primary">
		</form>
	</div>

</body>
</html>