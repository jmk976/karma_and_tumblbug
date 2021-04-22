
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<script type="text/javascript">
function categoryChange(e) {
	  var city_s = ["지역전체", "강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	  var city_g = ["지역전체", "고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
	  var city_i = ["지역전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
	  var target = document.getElementById("city");
	 
	  if(e.value == "s") var d = city_s;
	  else if(e.value == "g") var d = city_g;
	  else if(e.value == "i") var d = city_i;
	 
	  target.options.length = 0;
	 
	  for (x in d) {
	    var opt = document.createElement("option");
	    opt.value = d[x];
	    opt.innerHTML = d[x];
	    target.appendChild(opt);
	  } 
	}

function categoryChange2(e) {
	  var kind_d = ["Mix", "그레이하운즈", "시츄", "강서구", "광진구", "구로구", "금천구"];
	  var kind_c = ["코리안숏헤어", "과천시", "광명시", "구리시"];
	  var kind_e = ["거북이", "고슴도치", "닭", "동구", "부평구"];
	  var target = document.getElementById("kind");
	 
	  if(e.value == "d") var d = kind_d;
	  else if(e.value == "c") var d = kind_c;
	  else if(e.value == "e") var d = kind_e;
	 
	  target.options.length = 0;
	 
	  for (x in d) {
	    var opt = document.createElement("option");
	    opt.value = d[x];
	    opt.innerHTML = d[x];
	    target.appendChild(opt);
	  } 
	}


	

</script>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>


<div class="container">
	
	<h2>구조 동물 관리</h2>

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
  <div class="form-group">
      
    <div class="row">
     
	  	  <div class="col">
	  	         
	  	  	       <select onchange="categoryChange2(this)" name="species" id="species" class="custom-select">
					 <option value="" disabled selected hidden> 축종 </option>
					    <option value="d">개</option>
					    <option value="c">고양이</option>
					    <option value="e">기타</option>
					</select>
		   </div>
		  <div class="col">
					<select id="kind" name="kind" class="custom-select">
					    <option value="" disabled selected hidden> 종류 </option>
					</select>
	  	  </div> 
	  	 
	  	  
    </div>
    </div>
  	
		 <div class="form-group">
 
    <div class="row">
     
	  	  <div class="col">
	  	         
	  	  	       <select onchange="categoryChange(this)" name="province" id="province" class="custom-select">
					 <option value="" disabled selected hidden> 지역구를 선택해주세요 </option>
					    <option value="s">서울특별시</option>
					    <option value="g">경기도</option>
					    <option value="i">인천광역시</option>
					</select>
		   </div>
		  <div class="col">
					<select id="city" name="city" class="custom-select">
					    <option value="" disabled selected hidden> 지역전체 </option>
					</select>
	  	  </div> 
	  	 
	  	  <div class="col">
  		        <input type="text" class="form-control mb-2 mr-sm-2" name="location" placeholder="나머지주소" id="location">
	  	  </div>
    </div>
    </div>
  	
   <div class="row">
   <div class="col">
   status:
    <input type="text" class="form-control-sm mb-2 mr-sm-2" id="status" name="status">
     </div>
     <div class="col">
    sn:
    <input type="text" class="form-control-sm mb-2 mr-sm-2" id="sn"  name="sn">
     </div>
     <div class="col">
    zoneSn:
    <input type="text" class="form-control-sm mb-2 mr-sm-2" id="zoneSn"  name="zoneSn">
     </div>
     <div class="col">
    feature: 
    <input type="text" class="form-control-sm mb-2 mr-sm-2" id="feature"  name="feature">
     </div> 
    <button type="button" id="search" class="btn btn-primary mb-2">Submit</button>
    </div>
  
 </form> 
 </div>
 

 
  </div>



</div>
   
  

<script type="text/javascript">

$("#species").prop("")

 $("#search").click(function(){
	let s = $("#species").val();
	let result = "";
	console.log(s);
	
	if(s == "d"){
		result ="개";
	}else if(s=="c"){
		result = "고양이"
	}else if(s=="e"){
		result="기타"
	}
	
	console.log(result);
	if(result !=""){
	$("#species").val(result);
	}
	alert($("#species").val());
	
	
	  if($("#species").val() != "d" & $("#species").val() !="c" & $("#species").val() !="e"){
	
		  $("#frm").submit();
	  }
});


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
  });
	/*   $("#curPage").val(curPage);
	  $("#kind").val(kind);
	  $("#search").val(search);
	  $("#frm").submit(); */
	 //location.href="./${board}List?curPage="+curPage+"&kind=${pager.kind}&search=${pager.search}";
	  

  
  
  
  </script>
  
 


 

</body>
</html>