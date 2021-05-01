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
	
	<h2>입양신청현황</h2>

	<table class ="table">
	
		<thead class="thead-dark">
			<tr>
			 <th>신청번호</th>
			 <th>id</th>
			 <th>시리얼넘버</th>
			 <th>종축/종류</th>
			 <th>입양신청날</th>
			 <th>진행사항</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list}" var="dto"> 
			<tr>
			    <c:catch>
				<td><a href="./adoptSelect?adoptNum=${dto.adoptNum}">${dto.adoptNum}</a></td>
				</c:catch>
				<td>${dto.id}</td>
				<td>${dto.sn}</td>
				<td>${dto.species}/${dto.kind}</td>
				<td>${dto.applyDate}</td>
				<td><c:if test="${membership.id == 'admin'}">
				${dto.pass} 
				</c:if>
				<c:if test="${membership.id != 'admin'}">
			<a href="./adoptPass?adoptNum=${dto.adoptNum}"><input type="button" id="btn" value="신청 결과 확인" class="btn btn-secondary"></a>
				</c:if>
				
				</td>

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
  
  <%-- 
  <c:catch>
  <c:if test="${membership.id == 'admin'}"> --%>
  
  <form id="frm" action="./adoptList" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
  <div class="input-group-prepend">
   	<select class="form-control" onchange="change_search(this.value);" name="kind" id="kind">
         <option class="sel" selected>adoptNum</option>
    	<option class="sel">ID</option>
    	<option class="sel">SN</option>
    	<option class="sel">PASS</option>
 	 </select>
  </div>
  
  <input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="">
  <%-- <c:if test="$("#kind option:selected").text() =='PASS'">
  <select class="form-control search-slt" id="searcd" name="search">
             <option value="0" disabled selected hidden> 전체 </option>
   </select>
   </c:if> --%>
    <div class="input-group-append">
    <button class="btn btn-success" type="submit">Search</button>
  </div>
 </form> 
 </div>
 
  
  
  
  <%-- </c:if>
  </c:catch> --%>
  



</div>
   

  <script type="text/javascript">
//select box ID로 접근하여 선택된 값 읽기
 /*  if($("#kind option:selected").text() =='PASS')
   
  var cntt = new Array(); 
  cntt[0] = new Array('전체');
  cntt["PASS"] = new Array("선택","자격통과","전화통과","방문통과","입양완료","부적합","보류"); 
  
  function change_search(ku) { 
  	sel = document.getElementById('search');
  	
  	for (i=1; i < cntt[ku].length;i++){ 
  		sel.options[i] = new Option(cntt[ku][i], cntt[ku][i]); 
  	} 
   } 
  */
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
  
 </div>


 
</body>
</html>