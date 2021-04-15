<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<c:if test="${dto.sponSort=='정기후원'}">
<div class ="container">
		<h2> 정기후원 신청 </h2>
	<form id="frm" action="./sponsorJoin" method="post" enctype="multipart/form-data">
	
  	<div class="row">
	  	  <div class="col">
			  	 
			  	   <label for="payment"> 후원방법 </label>
					  <select name="payment" class="custom-select myCheck">
					    <option value="신용카드">신용카드</option>
					    <option value="계좌이체">계좌이체</option>
					  </select>
				
	   	  </div>
	   	  <div class="col">
	   		    <label for="sponSort"> 후원분류 </label>
	     		<input type="text" readonly="readonly" class="form-control" value="${dto.sponSort}" name="sponSort">
	   	  </div>
  	</div>
  	
  	
  <div class="form-group">
    <label for="money">후원금액</label>
     <h6>매 달 </h6>
     	
		  <select id="money" name="money" class="custom-select myCheck">
		    <option selected value="5000">5000원</option>
		    <option value="10000">10000원</option>
		    <option value="20000">20000원</option>
		    <option value="30000">30000원</option>
		    <option value="40000">40000원</option>
		    <option value="50000">50000원</option>
		    <option value="60000">60000원</option>
		    <option value="70000">70000원</option>
		    <option value="80000">80000원</option>
		    <option value="90000">90000원</option>
		    <option value="100000">100000원</option>
		  </select>
	
  </div>
  
  
    <div class="form-group">
   
     
        <label for="firstPay" class="mr-sm-2">첫 결제일</label>
  		<input id="firstPay" type="date" class="myCheck">
		  <label for="sponMonth" class="mr-sm-2">납부개월 수</label>
		  <input type="text" class="form-control mb-2 mr-sm-2 myCheck" name="sponMonth" value="3" id="sponMonth">
		   개월 
		  
		  <input type="button" id="cal" class="btn btn-primary mb-2" value="계산하기" />
	
   </div>
   <div class="form-group">
   
        <label for="lastPay" class="mr-sm-2">최종 결제일</label>
  		<input type="text" class="form-control mb-2 mr-sm-2" placeholder="자동입력" name="lastPay" id="lastPay">
  		
		  <label for="totalMoney" class="mr-sm-2">총 금액</label>
		  <input type="text" class="form-control mb-2 mr-sm-2 myCheck" placeholder="자동입력" name="totalMoney" id="totalMoney">
		   원
   </div>
  
  
  
  <div class="form-group"> 
    <label for="name">Name</label>
    <input type="text" class="form-control etc myCheck" value="${membership.name}" id="name" name="name" >
    <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="phone">Phone</label>
    <input type="text" class="form-control etc myCheck" value="${membership.phone}"id="phone" name="phone" >
    <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="email">E-mail</label>
    <input type="text" class="form-control etc" id="email" name="email" aria-describedby="#">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
     <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="address">주소</label>
    <input type="text" class="form-control etc" value="${membership.address}" id="address" name="address" >
    <!-- 비어 있으면 안됨 -->
  </div>
      <input type="hidden" class="form-control etc" value="${membership.id}" id="id" name="id" >
  
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1"> 선택한 후원방법에 따라 자동결제되는 것에 동의합니다. </label>
  </div>
  
   
 
  
  <input type="submit" id="btn" value="결제" class="btn btn-primary">
  <a href="./sponsorCheck"><input type="button" id="back" value="취소" class="btn btn-primary"></a>
</form></div>

</c:if>

<c:if test="${dto.sponSort=='일시후원'}">

<div class ="container">
		<h2> 정기후원 신청 </h2>
	<form id="frm" action="./sponsorJoin" method="post" enctype="multipart/form-data">
	
  	<div class="row">
	  	  <div class="col">
			  	 
			  	   <label for="payment"> 후원방법 </label>
					  <select name="payment" class="custom-select myCheck">
					    <option value="신용카드">신용카드</option>
					    <option value="계좌이체">계좌이체</option>
					  </select>
				
	   	  </div>
	   	  <div class="col">
	   		    <label for="sponSort"> 후원분류 </label>
	     		<input type="text" readonly="readonly" class="form-control" value="${dto.sponSort}" name="sponSort">
	   	  </div>
  	</div>
  	
  	
  <div class="form-group">
    <label for="money">후원금액</label>
     <h6>매 달 </h6>
     	
		  <select id="money" name="money" class="custom-select myCheck">
		    <option selected value="5000">5000원</option>
		    <option value="10000">10000원</option>
		    <option value="20000">20000원</option>
		    <option value="30000">30000원</option>
		    <option value="40000">40000원</option>
		    <option value="50000">50000원</option>
		    <option value="60000">60000원</option>
		    <option value="70000">70000원</option>
		    <option value="80000">80000원</option>
		    <option value="90000">90000원</option>
		    <option value="100000">100000원</option>
		  </select>
	
  </div>
  
  
    <div class="form-group">
        
  	   <input type="hidden" id="firstPay" name="firstPay">
  	    <input type="hidden" id="lastPay" name="lastPay" value="">
	   <input type="hidden" class="form-control mb-2 mr-sm-2 myCheck" name="sponMonth" value="1" id="sponMonth">
	   <input type="hidden" class="form-control mb-2 mr-sm-2 myCheck"  name="totalMoney" value="5000" id="totalMoney">
		 
   </div>
  
  
  
  <div class="form-group"> 
    <label for="name">Name</label>
    <input type="text" class="form-control etc myCheck" value="${membership.name}" id="name" name="name" >
    <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="phone">Phone</label>
    <input type="text" class="form-control etc myCheck" value="${membership.phone}"id="phone" name="phone" >
    <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="email">E-mail</label>
    <input type="text" class="form-control etc" id="email" name="email" aria-describedby="#">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
     <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="address">주소</label>
    <input type="text" class="form-control etc" value="${membership.address}" id="address" name="address" >
    <!-- 비어 있으면 안됨 -->
  </div>
      <input type="hidden" class="form-control etc" value="${membership.id}" id="id" name="id" >
  
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1"> 선택한 후원방법에 따라 자동결제되는 것에 동의합니다. </label>
  </div>
  
   
 
  
  <input type="submit" id="btn" value="결제" class="btn btn-primary">
  <a href="./sponsorCheck"><input type="button" id="back" value="취소" class="btn btn-primary"></a>
</form></div>


<script type="text/javascript">

$("#money").blur(function(){
	 let money = $("#money").val();
	 $("#totalMoney").val(money);
});


$("#document").ready(function(){
 $("#lastPay").val(new Date().toISOString().substring(0, 10))
});
</script>


</c:if>




  <script type="text/javascript" src="../resources/jquery/sponsorJoin.js">
</script>
 
    
</body>
</html>