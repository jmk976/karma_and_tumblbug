<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class ="container">
		<h2> 정기후원 신청 </h2>
	<form id="frm" action="./sponsorJoin" method="post" enctype="multipart/form-data">
	
  	<div class="row">
	  	  <div class="col">
			  	  <form>
			  	   <label for="payment"> 후원방법 </label>
					  <select name="payment" class="custom-select">
					    <option selected>결제방법</option>
					    <option value="credit">신용카드</option>
					    <option value="account">계좌이체</option>
					  </select>
				</form>
	   	  </div>
	   	  <div class="col">
	   		    <label for="sponSort"> 후원분류 </label>
	     		<input type="text" readonly="readonly" class="form-control" value="${dto.sponSort}" name="sponSort">
	   	  </div>
  	</div>
  	
  	
  <div class="form-group">
    <label for="name">후원금액</label>
     <h6>매 달 </h6>
     	<form>
		  <select name="cars" class="custom-select">
		    <option selected> </option>
		    <option value="5000">5000원</option>
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
		</form>
  </div>
  
  
    <div class="form-group">
   
       <form class="form-inline" action="/action_page.php">
        <label for="firstPay" class="mr-sm-2">첫 결제일</label>
  		<input type="text" class="form-control mb-2 mr-sm-2" value="sysdate" id="firstPay">
		  <label for="sponMonth" class="mr-sm-2">납부개월 수</label>
		  <input type="text" class="form-control mb-2 mr-sm-2" placeholder="Enter password" id="sponMonth">
		   개월 
		  
		  <button type="submit" class="btn btn-primary mb-2"> 계산하기 </button>
		</form>
   </div>
   <div class="form-group">
   
       <form class="form-inline" action="/action_page.php">
        <label for="lastPay" class="mr-sm-2">최종 결제일</label>
  		<input type="text" class="form-control mb-2 mr-sm-2" placeholder="자동입력" id="lastPay">
		  <label for="totalMoney" class="mr-sm-2">총 금액</label>
		  <input type="text" class="form-control mb-2 mr-sm-2" placeholder="자동입력" id="totalMoney">
		   원
		  

		</form>
   </div>
  
  
  
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control etc" id="name" name="name" >
    <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group">
    <label for="phone">Phone</label>
    <input type="text" class="form-control etc" id="phone" name="phone" >
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
    <input type="text" class="form-control etc" id="address" name="address" >
    <!-- 비어 있으면 안됨 -->
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1"> 동의</label>
  </div>
  
   
 
  
  <input type="submit" id="btn" value="결제" class="btn btn-primary">
  <input type="button" id="btn" value="취소" class="btn btn-primary">
</form></div>


<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<!--     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>

    
</body>
</html>