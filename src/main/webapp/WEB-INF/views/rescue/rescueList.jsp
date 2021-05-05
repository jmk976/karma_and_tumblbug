
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style>
.row_status{
width: 100%;
}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>


<div class="container">
	<div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
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
				<td><p id="spec">${dto.species}</p></td>
				<td><p id="kin">${dto.kind}</p></td>
				<td><p id="prov">${dto.province}</p></td>
				<td><p id="cit">${dto.city}</p></td>
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
 
  <!-- Pagination -->
   <ul class="pagination justify-content-center">
    <c:if test="${pager.pre}">
    	<li class="page-item">
    	<a class="page-link p" href="#" title="${pager.startNum-1}">
    	 <span aria-hidden="true">&laquo;</span>
    	<span class="sr-only">Previous</span></a></li>
    </c:if>
    
    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i"> 
    	<li class="page-item"><a class="page-link p" href="#" title="${i}"> ${i} </a></li>
    </c:forEach>
    
    <c:if test="${pager.next}">    
   	 	<li class="page-item">
   	 	<a class="page-link p" href="#" title="${pager.lastNum+1}">
   	 	<span aria-hidden="true">&raquo;</span>
   	 	<span class="sr-only">Next</span>
   	 	</a></li>
    </c:if> 
  </ul>

</div>
<!-- /.container -->
<section class="search-sec">
    <div class="container">
        <form id="frm" action="./rescueList"  novalidate="novalidate">
        	 <div class="row row_status">
             게시 진행사항:
            <select name="status" id="status" class="custom-select myCheck">
                            <option disabled selected hidden>선택</option> 
						    <option value="구조">구조</option>
						    <option value="가족">가족</option>
						    <option value="입양">입양</option>
						    <option value="보류">보류</option>
						 </select>
            </div>
            <br>
        		<input type="hidden" name="curPage" value="1" id="curPage">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" onchange="change_serch(this.value);" name="species" id="species">
                                <option value="0" disabled selected hidden> 축종 </option>
							    <option value="개">개</option>
							    <option value="고양이">고양이</option>
							    <option value="기타">기타</option>
                            </select> 
                        </div>
                         <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="kind" name="kind">
                      		    <option value="0" disabled selected hidden> 전체 </option>
                            </select>
                        </div>
                          <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" onchange="changeCity(this.value);" name="province" id="province">
                                <option value="0" disabled selected hidden> 지역구를 선택해주세요 </option>
							    <option value="서울특별시">서울특별시</option>
							    <option value="경기도">경기도</option>
							    <option value="인천광역시">인천광역시</option>
                            </select>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                             <select class="form-control search-slt" id="city" name="city">
                                  <option value="0" disabled selected hidden> 전체 </option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            
             <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                         
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            시리얼 넘버:
                            <input type="text" id="sn" name="sn" class="form-control search-slt" >
                        </div>
                        
                         <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                             지역 시러얼 넘버:
                            <input type="text" class="form-control search-slt" id="zoneSn"  name="zoneSn">
                        </div>
                        
                          <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                              특징:
                             <input type="text" class="form-control search-slt" id="feature"  name="feature">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <br>
                            <button type="submit"  style="width:100%;" class="btn btn-danger wrn-btn">Search</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>

<script type="text/javascript">
var cnt = new Array();
cnt[0] = new Array('전체');
cnt["서울특별시"] = new Array("전체","강남구","강동구","강북구","강서구","광진구","구로구","금천구","노원구","도봉구","동대문구","서대문구","서초구","성동구","성북구","송파구","영등포구","은평구","종로구","중구","중랑구");
cnt["경기도"] = new Array("전체","고양시","과천시","광명시","구리시","군포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안양시","오산시","의왕시","의정부시","평택시","하남시","가평군","광주시","김포시","안성시","양주시","양평군","여주군","연천군","용인시","이천군","파주시","포천시","화성시");
cnt["인천광역시"] = new Array("전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군");

function changeCity(add) {
	sel = document.getElementById('city');
	
	for (i=1; i < cnt[add].length;i++){ 
		sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
//    document.form.test2.options[i] = new Option(num[i],vnum[i]);

	} 
 }

var cntt = new Array(); 
cntt[0] = new Array('전체');
cntt["개"] = new Array("선택","Mix","그레이하운드","그레이트피레니즈","닥스훈트","도베르만","리트리버","롯트와일러","말티즈","미니핀","바셋하운드","비글","보스턴테리어","복서","세타","세인트버나드","시베리안허스키","시츄","샤모예드","샤페이","슈나우저","스피츠","알래스칸말라뮤트","요크셔테리어","웰시코기","진도","제페니즈친","차우차우","치와와","코카스파니엘","콜리","퍼그","포메라니안","포인터","폭스테리어","푸들","페키니즈","보더콜리","기타","프렌치불독","시바견","비숑프리제","불테리어","잭러셀테리어"); 
cntt["고양이"] = new Array("선택","코리안숏헤어","샴","페르시안","러시안블루","터키시앙고라","배회고양이","기타"); 
cntt["기타"] = new Array("선택","토끼","페릿","기니피그","이구아나","고슴도치","카멜레온","도마뱀","거북이","뱀","가고일 게코","사바나모니터","기타"); 

function change_serch(ku) { 
	sel = document.getElementById('kind');
	
	for (i=1; i < cntt[ku].length;i++){ 
		sel.options[i] = new Option(cntt[ku][i], cntt[ku][i]); 
	} 
 } 
</script>
  

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
  });
	
  
 </script>
  
 
 	
 
  
 


 

</body>
</html>