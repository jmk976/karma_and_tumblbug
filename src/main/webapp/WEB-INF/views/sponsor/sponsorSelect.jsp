<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.container table {
    table-layout: fixed;
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}
tbody {
   
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
table {
     table-layout: fixed;
     width: 100%;
     font-size: small;
    display: table;
    border-collapse: collapse;
    box-sizing: border-box;
    text-indent: initial;
    border-spacing: 2px;
  
}
th { 
    padding: 15px;
    background-color: #FDF5E6;
    font-weight: bold;
    text-align: -internal-center;
}

tr {
   
    border-bottom: 1px solid;
    display: table-row;
    vertical-align: inherit;
    border-color: #b4b4b4;
}

td {
     padding:15px;
     display: table-cell;
     vertical-align: inherit;
}


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
   	<h3>${dto.name}님의 후원 현황 </h3>
   <table>
         <colgroup>
	  <col width="25%">
	  <col width="75%">
		</colgroup>
				<tbody>
				<tr>
					<th scope="row"><span>진행 후원분류</span></th>
					<td>
					 ${dto.sponSort}
					</td>
				</tr>
				<tbody>
				<tr>
					<th scope="row"><span>후원번호</span></th>
					<td>
					 ${dto.sponNum}
					</td>
				</tr>
				<tbody>
				<tr>
					<th scope="row"><span>후원방법</span></th>
					<td>
					  ${dto.payment}
					</td>
				</tr>
				
				<tbody>
				<tr>
					<th scope="row"><span>후원금액</span></th>
					<td>
					 ${dto.money}
					</td>
				</tr>
				

	
	    <c:if test="${dto.sponSort =='정기후원'}">
	            <tr>
					<th scope="row"><span>첫 결제일</span></th>
					<td>
					 ${dto.firstPay}
					</td>
				</tr>
				<tr>
					<th scope="row"><span>최종 결제일</span></th>
					<td>
					 ${dto.lastPay}
					</td>
				</tr>
				<tr>
					<th scope="row"><span>납부개월 수</span></th>
					<td>
					 ${dto.sponMonth}
					</td>
				</tr>
				<tr>
					<th scope="row"><span>총 금액</span></th>
					<td>
					 ${dto.totalMoney}
					</td>
				</tr>
		
	    </c:if>
		
         <c:if test="${dto.sponSort =='일시후원'}">
               <tr>
					<th scope="row"><span>결제일</span></th>
					<td>
					 ${dto.firstPay}
					</td>
				</tr>
         </c:if> 
    
     
     </table>
</div>
     
		
	
</body>
</html>