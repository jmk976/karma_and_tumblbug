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

    
               
  <div class="container">
	
	<h2>후원현황</h2>

	<table class ="table">
	
		<thead class="thead-dark">
			<tr>
			 <th>후원분류</th>
			 <th>후원금액</th>
			 <th>첫 결제일</th>
			 <th>납부개월 수</th>
			 <th>성명</th>
			 <th>아이디</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list}" var="dto"> 
			<tr>
				<td>${dto.sponSort}</td>
				<td>${dto.money}</td>
				<td>${dto.firstPay}</td>
				<td>${dto.sponMonth}</td>
				<td>${dto.name}</td>
				<c:catch>
				<td><a href="./sponsorSelect?id=${dto.id}&sponNum=${dto.sponNum}">
				${dto.id}</a></td>
				</c:catch>
				
			
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	
 <%-- <c:catch>
	<c:if test="${member.id=='admin'}">
	</div> 
	<div class="container">
      <a href="./noticeInsert"> <button type="button" class="btn btn-dark">글작성</button></a>
	</div>
	 </c:if>
 </c:catch> --%>
 
 	
   
    <div class="card bg-light text-dark">
    	<div class="card-body">
    		<h5 class="card-title">총 금액</h5>
    		<p class="card-text">${totalSum} 원</p>
   		 </div>
  	</div>
 	
 	
 	<div class="container">
     
  <ul class="pagination">
    <c:if test="${pager.pre}">
    <li class="page-item"><a class="page-link p" href="#" title="${pager.startNum-1}">Previous</a></li>
    </c:if>
    
    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i"> 
    <li class="page-item"><a class="page-link p" href="#" title="${i}"> ${i} </a></li>
    </c:forEach>
    
    <c:if test="${pager.next}">    
    <li class="page-item"><a class="page-link p" href="#" title="${pager.lastNum+1}">Next</a></li>
    </c:if> 
  </ul>
  
  <div class="input-group mt-3 mb-3">
  
  <%-- 
  <c:catch>
  <c:if test="${membership.id == 'admin'}"> --%>
  
  <form id="frm" action="./sponsorList" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
  <div class="input-group-prepend">
   	<select class="form-control" name="kind" id="kind">

    	<option class="sel">Name</option>
    	<option class="sel">Id</option>
    	<option class="sel" selected>SponSort</option>
 	 </select>
  </div>
  
  <input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="">
  
    <div class="input-group-append">
    <button class="btn btn-success" type="submit">Search</button>
  </div>
 </form> 
 </div>
 
 

 
  </div>
  </div>
  
  <!-- origin end -->
   
   

  
  
  <script type="text/javascript">
 
	  let kind='${pager.kind}';
	  $(".sel").each(function(){
		 let t = $(this).text(); 
		 if(t==kind) {
			 $(this).prop("selected", true);
		 }
	  });
  
  $(".p").click(function(){
	  let curPage = $(this).attr("title");
	  $("#curPage").val(curPage);
	  let search = '${pager.search}';
	 
	  $("#frm").submit();
	  
	/*   $("#curPage").val(curPage);
	  $("#kind").val(kind);
	  $("#search").val(search);
	  $("#frm").submit(); */
	 //location.href="./${board}List?curPage="+curPage+"&kind=${pager.kind}&search=${pager.search}";
	  
  });
  
  
  
  </script>
  
 
 
</body>
</html>