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

	<h1>CARD</h1>


	<div class="container">
		<form action="./paymentInsert" method="post" id="frm">
			<div class="form-group">
				<input type="hidden" name="id" value="${membership.id}">
				<input type="hidden" name="division" value="card">
			<input type="hidden" name="bankName" value="inull">
			<input type="hidden" name="bankAccount" value="inull">
			<input type="hidden" name="ownerName" value="inull">
			
				<label for="cardNumber">카드번호</label> <input type="text" class="form-control"
					id="cardNumber" name="cardNumber">
			</div>
			<div class="form-group">
				<label for="expirationDate">카드 유효기간</label> <select class="expirationDate" name="expirationDate">
					<c:forEach begin="1" end="12" var="i">
						<option>${i}월</option>
					</c:forEach>
				</select> <select class="expirationDate" name="expirationDate">
					<c:forEach begin="2021" end="2031" var="i">
						<option>${i}</option>
					</c:forEach>
				</select>
			</div>

			<table class="table">
				<thead></thead>
				<tbody>
					<tr>
						<td>
							<div class="form-group">
								<label for="securityNumber">카드 비밀번호 앞 두자리</label> <input
									type="password" inputmode="numeric" pattern="[0-9]*"
									class="form-control" id="securityNumber" name="securityNumber"
									autocomplete="off">
							</div>
						</td>
						<td>
							<div class="form-group">
								<label for="ownerBirth">소유주 생년월일</label> <input type="text"
									class="form-control" id="ownerBirth" name="ownerBirth">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<input type="checkbox">결제사 정보제공 동의 <a href="#">내용보기</a> <br>
			<input type="checkbox">기본 결제수단으로 등록 <br> <input
				type="submit" class="btn btn-primary" value="join" id="btn">

		</form>
	</div>

</body>
</html>