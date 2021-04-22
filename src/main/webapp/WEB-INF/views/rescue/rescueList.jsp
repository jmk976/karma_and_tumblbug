
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
	
	<h2>구조 동물 관리7</h2>

	<table class ="table">
	
		<thead class="thead-dark">
			<tr>
			 <th>분류</th>
			 <th>시리얼넘버</th>
			 <th>지역SN</th>
			 <th>축종</th>
			 <th>종류</th>
			 <th>지역(대)</th>
			 <th>지역(중)</th>
			 <th>구조일</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list}" var="dto"> 
			<tr>
			    <td>${dto.status}</td> 
				<c:catch>
				<td><a href="./rescueSelect?sn=${dto.sn}">${dto.sn}</a></td>
				</c:catch>
				<td>${dto.zoneSn}</td>
				<td>${dto.species}</td>
				<td>${dto.kind}</td>
				<td>${dto.province}</td>
				<td>${dto.city}</td>
				<td>${dto.resDate}</td>
				
			
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
  
  
 
  
  <form id="frm" action="./rescueList" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
		
  <label for="status" class="mb-2 mr-sm-2">status:</label>
    <input type="text" class="form-control mb-2 mr-sm-2" id="status" name="status">
    <label for="sn" class="mb-2 mr-sm-2">sn:</label>
    <input type="text" class="form-control mb-2 mr-sm-2" id="sn"  name="sn">
      
    <button type="submit" class="btn btn-primary mb-2">Submit</button>
 </form> 
 </div>
 

 
  </div>



</div>
   
  

<script type="text/javascript">

/* $("#search").click(function(){
	let t = $("#status").val();
	
	let s = $("#sn").val();
	
	
	  if(t != null || s !=null){
	
		  $("#frm").submit();
}
}); */


 /* 
 let kind='${pager.kind}';
	  $(".sel").each(function(){
		 let t = $(this).text(); 
		 if(t==kind) {
			 $(this).prop("selected", true);
		 }
	  }); */
  
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
	  

  
  
  
  </script>
  
 


 

</body>
</html>