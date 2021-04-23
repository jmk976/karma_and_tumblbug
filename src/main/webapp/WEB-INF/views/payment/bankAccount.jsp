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
	height: 15px;
	color: red;
}
</style>

<title>Insert title here</title>
</head>
<body>
	<h1>BANK ACCOUNT</h1>

	<div class="container">
		<form action="./paymentInsert" method="post" id="frm">
			<input type="hidden" name="id" value="${membership.id}"> <input
				type="hidden" name="division" value="account"> <input
				type="hidden" name="cardNumber" value="null"> <input
				type="hidden" name="expirationDate" value="null">

			<div class="form-group">
				<label for="bankName">은행명</label> <select class="form-control"
					name="bankName" id="bankName">
					<option>은행명</option>
					<option>국민은행</option>
					<option>우리은행</option>
					<option>신한은행</option>
					<option>농협</option>
				</select>
				<p id="bankNameResult"></p>
			</div>
			<div class="form-group">
				<label for="bankAccount">계좌번호</label> <input type="text"
					class="form-control" id="bankAccount" name="bankAccount" placeholder="공백, -없이 입력해주세요." maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
				<p id="bankAccountResult"></p>
				<input type="checkbox"   id="business">사업자 계좌입니다.<br>
				<input type="hidden"  name="business" id="businessResult">
			</div>

			<table class="table">
				<thead></thead>
				<tbody>

					<tr>
						<td>
							<div class="form-group">
								<label for="ownerName">예금주 명</label> <input type="text"
									class="form-control" id="ownerName" name="ownerName" placeholder="예금주 명을 입력해주세요.">
								<p id="ownerNameResult"></p>
							</div>
						</td>

						<td>
							<div class="form-group">
								<label for="ownerBirth">예금주 생년월일</label> <input type="text"
									class="form-control" id="ownerBirth" name="ownerBirth" placeholder="예) 920101" maxlength="6" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								<p id="ownerBirthResult"></p>
							</div>
						</td>
					</tr>

				</tbody>
			</table>

			<input type="checkbox" id="agreeCheck">결제사 정보제공 동의 <a href="#">내용보기</a> <br>
			<p id="checkResult"></p>
			
			<input type="checkbox" id="default">기본 결제수단으로 등록 <br> 
			<input type="hidden" name="defaultMethod" id="defaultMethod">
			
		</form>
		<a type="button" class="btn btn-primary" id="addBtn">Add Payment</a>
	</div>
	<script type="text/javascript"
		src="../resources/jquery/paymentInsert_BankAccount.js"></script>
</body>
</html>