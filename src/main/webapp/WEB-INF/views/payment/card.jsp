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
.r {
color:red;
}
</style>

<title>Insert title here</title>
</head>
<body>

	<h1>CARD</h1>


	<div class="container">
		<form action="./paymentInsert" method="post" id="frm">

			<input type="hidden" name="id" value="${membership.id}"> <input
				type="hidden" name="division" value="card"> <input
				type="hidden" name="bankName" value="inull"> <input
				type="hidden" name="bankAccount" value="inull"> <input
				type="hidden" name="ownerName" value="inull"> <input
				type="hidden" name="business" value="inull">

			

			<div>
				<label for="cardNumber">카드번호</label>
			<div class="input-group mb-3 form-control cardNumberDiv" style="border: solid 1px; height:50px;" >
				<input type="text" class="form-control cardNumber" placeholder="0000" style="border: none;" name="cardNumber" maxlength="4"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">_
				<input type="password" class="form-control cardNumber" placeholder="0000" style="border: none;" name="cardNumber" maxlength="4"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">_
				<input type="password" class="form-control cardNumber" placeholder="0000" style="border: none;" name="cardNumber" maxlength="4"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">_
				<input type="text" class="form-control cardNumber" placeholder="0000" style="border: none;" name="cardNumber" maxlength="4"  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
				</div>
				<p id="cardNumberResult"></p>
			</div>
			<div class="form-group">
				<label for="expirationDate">카드 유효기간</label>
				<select class="expirationDate" name="expirationDate" id="expirationMonth">
						<option> 월 </option>
					<c:forEach begin="1" end="12" var="i">
					<c:if test="${i<10}">
						<option value="0${i}">${i}월</option>
					</c:if>
					<c:if test="${i>9}">
						<option value="${i}">${i}월</option>
					</c:if>
					</c:forEach>
				</select>
				<select class="expirationDate" name="expirationDate" id="expirationYear">
						<option> 년 </option>
					<c:forEach begin="21" end="31" var="i">
						<option value="${i}">20${i}</option>
					</c:forEach>
				</select>
				<p id="expirationDateResult"></p>
			</div>

			<table class="table">
				<thead></thead>
				<tbody>
					<tr>
						<td>
							<div class="form-group">
								<label for="securityNumber">카드 비밀번호 앞 두자리</label> <input
									type="password" inputmode="numeric" pattern="[0-9]*"
									class="form-control" id="securityNumber" name="securityNumbe" placeholder="앞 2자리를 입력해 주세요." maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									
							</div>
						</td>
						<td>
							<div class="form-group">
								<label for="ownerBirth">소유주 생년월일</label> <input type="text"
									class="form-control" id="ownerBirth" name="ownerBirth" placeholder="예) 920101" maxlength="6" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
									
							</div>
						</td>
					</tr>
					<tr>
					<td>
					<p id="securityNumberResult"></p>
					</td>
					<td>
					<p id="ownerBirthResult"></p>
					</td>
					</tr>
				</tbody>
			</table>
			
			<div>
			<input type="checkbox" id="agreeCheck">결제사 정보제공 동의 <a href="#">내용보기</a> <br>
			<p id="checkResult" ></p>
			<!-- 
			<p hidden="hidden"><input type="checkbox" name="defaultMethod" value="false" checked="checked">false</p>
			 -->
			<input type="checkbox" id="default">기본 결제수단으로 등록 <br> 
			<input type="hidden" name="defaultMethod" id="defaultMethod">
			</div>

		</form>
			<a type="button" class="btn btn-primary" id="addBtn">Add Payment</a>
	</div>
<script type="text/javascript" src="../resources/jquery/paymentInsert_Card.js"></script>
</body>
</html>