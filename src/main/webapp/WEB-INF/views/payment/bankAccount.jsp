<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<h1>BANK ACCOUNT</h1>

<div class="container">
		<form action="./paymentInsert" method="post" id="frm" enctype="multipart/form-data">
			<div class="form-group">
			<input type="hidden" name="id" value="${membership.id}">
			<input type="hidden" name="division" value="account">
			<input type="hidden" name="cardNumber" value="null">
			<input type="hidden" name="expirationDate" value="null">
				<label for="bankName">은행명</label>
				<select name="bankName">
					<option>국민은행</option>
					<option>우리은행</option>
					<option>신한은행</option>
					<option>농협</option>
				</select>
			</div>
			<div class="form-group">
				<label for="bankAccount">계좌번호</label> <input type="text"
					class="form-control" id="bankAccount" name="bankAccount">
			</div>
			<div class="form-group">
				<label for="ownerName">예금주 명</label> <input type="text"
					class="form-control" id="ownerName" name="ownerName">
			</div>
			<div class="form-group">
				<label for="ownerBirth">예금주 생년월일</label> <input type="text"
					class="form-control" id="ownerBirth" name="ownerBirth">
			</div>
	

			<input type="submit" class="btn btn-primary" value="join" id="btn">

		</form>
	</div>

</body>
</html>