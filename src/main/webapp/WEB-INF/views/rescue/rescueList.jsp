
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
     
  <ul class="pagination justify-content-center">
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
  
  
  

 
  
  <form id="frm" action="./rescueList" class="form-inline">
    <div class="input-group mt-3 mb-3">
		<input type="hidden" name="curPage" value="1" id="curPage">
  <div class="form-group">
      
    <div class="row">
     
	  	  <div class="col">
	  	         
	  	  	       <select onchange="change_serch(this.value);" name="species" id="species" class="custom-select">
					 <option value="0" disabled selected hidden> 축종 </option>
					    <option value="1">개</option>
					    <option value="2">고양이</option>
					    <option value="3">기타</option>
					</select>
		   </div>
		  <div class="col">
					<select id="kind" name="kind" class="custom-select">
					</select>
	  	  </div> 
	  	 
	  	  
    </div>
    </div>
  	
		 <div class="form-group">
 
    <div class="row">
     
	  	  <div class="col">
	  	         
	  	  	       <select onchange="changeCity(this.value);" name="province" id="province" class="custom-select">
					 <option value="0" disabled selected hidden> 지역구를 선택해주세요 </option>
					    <option value="1">서울특별시</option>
					    <option value="2">경기도</option>
					    <option value="3">인천광역시</option>
					</select>
		   </div>
		  <div class="col">
					<select id="city" name="city" class="custom-select">
					</select>
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
   </div>
 </form> 

 

 
  </div>



</div>
   
  <script language="javascript">
var cnt = new Array();
cnt[0] = new Array('전체');
cnt[1] = new Array("전체","강남구","강동구","강북구","강서구","광진구","구로구","금천구","노원구","도봉구","동대문구","서대문구","서초구","성동구","성북구","송파구","영등포구","은평구","종로구","중구","중랑구");
cnt[2] = new Array("전체","고양시","과천시","광명시","구리시","군포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안양시","오산시","의왕시","의정부시","평택시","하남시","가평군","광주시","김포시","안성시","양주시","양평군","여주군","연천군","용인시","이천군","파주시","포천시","화성시");
cnt[3] = new Array("전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군");

function changeCity(add) {
	sel = document.getElementById('city');
	for (i=sel.length; i>=0; i--){
		sel.options[i] = null
		}
	for (i=0; i < cnt[add].length;i++){ 
		sel.options[i] = new Option(cnt[add][i], [i]);
//    document.form.test2.options[i] = new Option(num[i],vnum[i]);

	} 
 }
</script>

<script type="text/javascript">




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
	  
 $("#search").click(function(){
	let s = $("#species").val();
	let result = "";
	console.log(s);
	

	
	
		  $("#frm").submit();
	
});

  
  
  
  </script>
  <script type="text/javascript" language="javascript"> 
var cntt = new Array(); 
cntt[0] = new Array('전체');
cntt[1] = new Array("선택","Mix","그레이하운드","그레이트피레니즈","닥스훈트","도베르만","리트리버","롯트와일러","말티즈","미니핀","바셋하운드","비글","보스턴테리어","복서","세타","세인트버나드","시베리안허스키","시츄","샤모예드","샤페이","슈나우저","스피츠","알래스칸말라뮤트","요크셔테리어","웰시코기","진도","제페니즈친","차우차우","치와와","코카스파니엘","콜리","퍼그","포메라니안","포인터","폭스테리어","푸들","페키니즈","보더콜리","기타","프렌치불독","시바견","비숑프리제","불테리어","잭러셀테리어"); 
cntt[2] = new Array("선택","코리안숏헤어","샴","페르시안","러시안블루","터키시앙고라","배회고양이","기타"); 
cntt[3] = new Array("선택","토끼","페릿","기니피그","이구아나","고슴도치","카멜레온","도마뱀","거북이","뱀","가고일 게코","사바나모니터","기타"); 

function change_serch(ku) { 
	sel = document.getElementById('kind');
	for (i=sel.length-1; i>=0; i--){ 
		sel.options[i] = null 
		} 
	for (i=0; i < cntt[ku].length;i++){ 
		sel.options[i] = new Option(cntt[ku][i], [i]); 
	} 
 } 
</script>
  
  
 


 

</body>
</html>