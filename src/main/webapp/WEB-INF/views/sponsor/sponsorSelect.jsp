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
	<h1>${dto.name}님의 후원 현황 </h1>
	<h3>후원분류 : ${dto.sponSort}</h3>
	<h3>후원방법 : ${dto.payment}</h3>
	<h3>후원금액 : ${dto.money}</h3>
	
	<c:if test="${dto.sponSort =='정기후원'}">
		<h3>첫 결제일 : ${dto.firstPay}</h3>
		<h3>최종 결제일 : ${dto.lastPay}</h3>
		<h3>납부개월 수 : ${dto.sponMonth}</h3>
		<h3>총 금액 : ${dto.totalMoney}</h3>
	</c:if>
		
    <c:if test="${dto.sponSort =='일시후원'}">
        <h3>결제일 : ${dto.firstPay}</h3> 
    </c:if> 
     후원번호: ${dto.sponNum}
</div>
     
		
	
</body>
</html>