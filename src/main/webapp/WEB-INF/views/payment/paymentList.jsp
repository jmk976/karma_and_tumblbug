<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
h3{
  font-family: 'MapoGoldenPier';  text-align: center;
  border-bottom: 5px dotted gray;
  padding-top:30px;
  padding-bottom:30px;
}

@font-face {
    font-family: 'MapoGoldenPier';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h3>결제 수단</h3>
		<a type="button" class="btn btn-primary" id="addBtn">결제 수단 추가 </a>


		<c:forEach items="${PaymentList}" var="pay">
			<c:if test="${pay.defaultMethod eq 'true'}">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<div>
							<h5 class="card-title">${pay.division}
								<span style="color: red;">기본</span>
							</h5>
						</div>
						<c:if test="${pay.division eq 'account'}">
							<h6 class="card-subtitle mb-2 text-muted">${pay.ownerName}</h6>
							<h6 class="card-subtitle mb-2 text-muted">${pay.bankName}</h6>
							<h6 class="card-subtitle mb-2 text-muted bankAccount"
								title="${pay.bankAccount}"></h6>
						</c:if>
						<c:if test="${pay.division eq 'card'}">
							<h6 class="card-subtitle mb-2 text-muted cardNum"
								title="${pay.cardNumber}"></h6>
							<h6 class="card-subtitle mb-2 text-muted">${pay.expirationDate}</h6>
						</c:if>

						<a href="./paymentDelete?num=${pay.num}" class="card-link">삭제</a>
					</div>
				</div>
			</c:if>
		</c:forEach>

		<c:forEach items="${PaymentList}" var="pay">
			<c:if test="${pay.defaultMethod ne 'true'}">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<div>
							<h5 class="card-title">${pay.division}</h5>
						</div>
						<c:if test="${pay.division eq 'account'}">
							<h6 class="card-subtitle mb-2 text-muted">${pay.ownerName}</h6>
							<h6 class="card-subtitle mb-2 text-muted">${pay.bankName}</h6>
							<h6 class="card-subtitle mb-2 text-muted bankAccount"
								title="${pay.bankAccount}"></h6>
						</c:if>
						<c:if test="${pay.division eq 'card'}">
							<h6 class="card-subtitle mb-2 text-muted cardNum"
								title="${pay.cardNumber}"></h6>
							<h6 class="card-subtitle mb-2 text-muted">${pay.expirationDate}</h6>
						</c:if>

						<a href="./paymentDelete?num=${pay.num}" class="card-link">삭제</a>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>


	<script type="text/javascript" src="../resources/jquery/paymentList.js"></script>

</body>
</html>