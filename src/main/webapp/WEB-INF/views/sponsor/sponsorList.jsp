<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery UI -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- // jquery UI -->
<script type="text/javascript" src="../resources/jquery/jquery.mtz.monthpicker.js"></script><!-- monthPicker js -->
<script type="text/javascript">
$(document).ready(function(){
    var options = {
        pattern: 'yyyy-mm'       // input태그에 표시될 형식
       ,selectedYear: 2019       // 선택할 연도
       ,startYear: 2010          // 시작연도
       ,finalYear: 2022          // 마지막연도
       // ,monthNames: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
       ,monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']         // 화면에 보여줄 월이름
       ,openOnFocus: true       // focus시에 달력이 보일지 유무
       ,disableMonths : [ ]     // 월 비활성화
    };

    // 방법1) options 따로 지정
    $("#monthPicker").monthpicker(options);

    // 방법2) input 태그에서 연도 지정
    $("#monthPicker2").monthpicker();
    
    $('#btn_monthPicker').bind('click', function () {
        $('#monthPicker2').monthpicker('show');
    });
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
    		<p class="card-text">Some example text. Some example text.</p>
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
    	<option class="sel">Month</option>
    	<option class="sel">Id</option>
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
 <table>
        <colgroup>
            <col style="width: 30%" />
            <col />
        </colgroup>
        <tr>
            <th>monthPicker</th>
            <td><input type="text" id="monthPicker" name="monthPicker" style="" /></td>
        </tr>
        <tr>
            <th>monthPicker with button</th>
            <td>
                <input type="text" id="monthPicker2" name="monthPicker2" style=""  data-start-year="2016" data-final-year="2020" data-selected-year="2019"/>
                <input type="button" id="btn_monthPicker" name="btn_monthPicker" value="클릭" />
            </td>
        </tr>
    </table>
    
    
  <p class="demo"> <b>Get Month/Year & Validation API Demonstration</b>

            <br />This demonstrates API usage for the GetSelectedMonthYear(), GetSelectedYear() and GetSelectedMonth() function calls which will also perform date validation. Clear() will clear the text field and any validation messages.
            <br />
            <br />Choose a month:
            <input id="GetYearDemo" class="GetYearDemo" type="text" value="02/2012" />
            <br />
            <br />
            <button type="button" onclick="alert($('.GetYearDemo').MonthPicker('GetSelectedYear'));">Get Year</button>
            <button type="button" onclick="alert($('#GetYearDemo').MonthPicker('GetSelectedMonth'));">Get Month</button>
            <button type="button" onclick="alert($('#GetYearDemo').MonthPicker('GetSelectedMonthYear'));">Get Month and Year</button>
            <button type="button" onclick="$('#GetYearDemo').MonthPicker('Clear');">Clear</button>
        </p>




  <script type="text/javascript">
  
$(document).ready(function() {
	
	$('#id').MonthPicker(); 
	
	$('#GetYearDemo').MonthPicker({
	    ValidationErrorMessage: 'Invalid Date!'
	});
	
	});

  
  
  
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