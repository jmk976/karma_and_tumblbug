<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h1>${membership.name}'spayList</h1>

	<div class="container">

		<c:forEach items="${list}" var="pay">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
				<div>
					<h5 class="card-title">${pay.division}<span style="color:red;">기본</span></h5>
				</div>
					<c:if test="${pay.division eq 'account'}">
						<h6 class="card-subtitle mb-2 text-muted">${pay.ownerName}</h6>
						<h6 class="card-subtitle mb-2 text-muted">${pay.bankName}</h6>
						<h6 class="card-subtitle mb-2 text-muted">${pay.bankAccount}</h6>
					</c:if>
					<c:if test="${pay.division eq 'card'}">
						<h6 class="card-subtitle mb-2 text-muted">${pay.cardNumber}</h6>
						<h6 class="card-subtitle mb-2 text-muted">${pay.expirationDate}</h6>
					</c:if>

					<a href="./paymentDelete?num=${pay.num}" class="card-link">삭제</a>
				</div>
			</div>
		</c:forEach>
		<a type="button" class="btn btn-primary" id="addBtn">결제 수단 추가 </a>
	</div>
<script type="text/javascript" src="../resources/jquery/paymentList.js"></script>

</body>
</html>