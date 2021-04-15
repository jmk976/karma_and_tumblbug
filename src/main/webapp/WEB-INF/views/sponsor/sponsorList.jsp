<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>

   $(function() {
       //input을 datepicker로 선언
       $("#datepicker").datepicker({
           dateFormat: 'yy-mm-dd' //달력 날짜 형태
           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
           ,changeYear: true //option값 년 선택 가능
           ,changeMonth: true //option값  월 선택 가능                
           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
           ,buttonText: "선택" //버튼 호버 텍스트              
           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
           ,minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
       });                    
       
       //초기값을 오늘 날짜로 설정해줘야 합니다.
       $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
   });
</script>

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
				<td><a href="./sponsorSelect?id=${dto.id}">
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
  
<form id="frm" action="./sponsorList" class="form-inline">
		<input type="hidden" name="curPage" value="1" id="curPage">
  <div class="input-group-prepend">
   	<select class="form-control" name="kind" id="kind">
    	<option class="sel" value="firstPay"> firstPay</option>
    	<option class="sel" value="name">Name</option>
    	<option class="sel" value="id">Id</option>
    	<option class="sel">SponSort</option>
 	 </select>
  </div>
  
  <input type="text" class="form-control" name="search" id="search" value="${pager.search}" placeholder="">
  
    <div class="input-group-append">
    <button class="btn btn-success" type="submit">Search</button>
  </div>
 </form> 
 
 월별 총 후원 금액 보기
  <input type="text" id="perMonth"  name="perMonth" class="btn btn-danger" />
 <input type="button" id="btn_perMonth"  name="btn_perMonth" class="btn btn-danger" value="클릭" />
 
 
</div>

</div>
</div>
    <p>일정을 선택해주세요. <input type="text" id="datepicker"></p>

<div>
 <table>
        <colgroup>
            <col style="width: 30%" />
            <col />
        </colgroup>
        <tr>
            <th>monthPicker</th>
            <td><input type="text" id="monthPicker" name="monthPicker"  /></td>
        </tr>
        <tr>
            <th>monthPicker with button</th>
            <td>
                <input type="text" id="monthPicker2" name="monthPicker2" style=""  data-start-year="2016" data-final-year="2020" data-selected-year="2019"/>
                <input type="button" id="btn_monthPicker" name="btn_monthPicker" value="클릭" />
            </td>
        </tr>
    </table>
    </div>


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