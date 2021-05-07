<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	
	<h3> ${pagerMon.search} 월 후원현황</h3>
	 <div class="card bg-light text-dark">
    	<div class="card-body">
    		<h5 class="card-title">총 금액</h5>
    		<p class="card-text"> ${totalSumMon} 원</p>
   		 </div>
  	</div>

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
		<c:forEach items="${listMon}" var="dto"> 
			<tr>
				<td>${dto.sponSort}</td>
				<td>${dto.money}</td>
				<td>${dto.firstPay}</td>
				<td>${dto.sponMonth}</td>
				<td>${dto.name}</td>
				<td><a href="./sponsorSelect?id=${dto.id}&sponNum=${dto.sponNum}">
				${dto.id}</a></td>
				
			
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
 
 	
   
   
 	
 	
 	<div class="container">
     
  <ul class="pagination">
  
    <c:if test="${pagerMon.pre}">
    <li class="page-item"><a class="page-link p" href="#" title="${pagerMon.startNum-1}">Previous</a></li>
    </c:if>
    
    <c:forEach begin="${pagerMon.startNum}" end="${pagerMon.lastNum}" var="i"> 
    <li class="page-item"><a class="page-link p" href="#" title="${i}"> ${i} </a></li>
    </c:forEach>
    
    <c:if test="${pagerMon.next}">    
    <li class="page-item"><a class="page-link p" href="#" title="${pagerMon.lastNum+1}">Next</a></li>
    </c:if> 
  </ul>
  
  <div class="input-group mt-3 mb-3">
  
<form id="frm" action="./sponsorListMon" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
	
  
  <input type="month" class="form-control" name="search" id="search" value="${pagerMon.search}" placeholder="">
  
    <div class="input-group-append">
    <button class="btn btn-success" id="sub" type="submit">Search</button>
  </div>
 </form> 
 
 
  <a href="./sponsorList" class="btn btn-info"> 전체 후원금 보기 </a>
 
 
 
</div>

</div>
</div>
   

  <script type="text/javascript">
  


  
 
  
 $("#sub").click(function(){
	 alert($("#search").val());
 });
  
	 
  
  $(".p").click(function(){
	  let curPage = $(this).attr("title");
	  $("#curPage").val(curPage);
	  let search = '${pagerMon.search}';
	 
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