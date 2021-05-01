<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
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
.card {
 font-size: small;
 padding:15px;
 margin: 15px;
}
</style>
</head>

<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
            <form class="form-horizontal" role="form" method="post" action="./adoptUpdate" class="form-horizontal">
                <input type="hidden" name="adoptNum" value="${dto.adoptNum}">
                <h2>입양 신청 업데이트 페이지</h2>
                 <table cellpadding="0" cellspacing="0" summary="입양상담신청 게시판">
                   <colgroup>
				<col width="25%">
				<col width="75%">
					</colgroup>
				<tbody>
				<tr>
					<th scope="row"><span>진행 사항</span></th>
					<td>
			          
                  
              
						<select  name="pass" id="pass" class="custom-select col-sm-6 form-control">
							    <option value="자격통과">자격통과</option>
							    <option value="전화통과">1차 전화상담 통과</option>
							    <option value="방문통과">2차 방문상담 통과</option>
							    <option value="입양완료">입양완료</option>
							    <option value="부적합">부적합</option>
							    <option value="보류">보류</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<th scope="row"><span>입양신청날짜</span></th>
					<td>
                        <input type="date" value="${dto.applyDate}" id="applyDate" name="applyDate"  class="col-sm-6" autofocus>
					</td>
				</tr>
				<tr>
					<th scope="row"><span>1차 전화상담</span></th>
					<td>
                        <input type="date"  value="${dto.callCheck}" id="callCheck" name="callCheck"  class="col-sm-6" autofocus>
					</td>
				</tr>
				<tr>
					<th scope="row"><span>2차 방문상담</span></th>
					<td>
                        <input type="date"  value="${dto.visitCheck}" id="visitCheck" name="visitCheck" class="col-sm-6" >
					</td>
				</tr>
				<tr>
					<th scope="row"><span>최종입양날짜</span></th>
					<td>
                        <input type="date" value="${dto.adoptDate}" id="adoptDate" name="adoptDate" class="col-sm-6">
					</td>
				</tr>
				
				</tbody>
				</table>
				
             <table cellpadding="0" cellspacing="0" summary="입양상담신청 게시판">
                   <colgroup>
				<col width="25%">
				<col width="75%">
					</colgroup>
				<tbody>
				<tr>
					<th scope="row"><span>아이디</span></th>
					<td>
						<input type="text" readonly="readonly" value="${dto.id}" id="id" name="id" class="col-sm-6" autofocus>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>성명</span></th>
					<td>
						<input type="text" readonly="readonly" value="${dto.membershipDTO.name}" id="name" name="name" class="col-sm-6" autofocus>
						
					</td>
				</tr>
				
				
				<tr>
					<th scope="row"><span>생년월일</span></th>
					<td>
                        <input type="text" readonly="readonly" value="${dto.membershipDTO.birth}" id="birth" name="birth"  class="col-sm-6" autofocus>
					</td>
				</tr>
				<tr>
					<th scope="row"><span>휴대폰번호</span></th>
					<td>
                        <input type="text" readonly="readonly" value="${dto.membershipDTO.phone}" id="phone" name="phone" class="col-sm-6" >
					</td>
				</tr>
				<tr>
					<th scope="row"><span>주소</span></th>
					<td>
                  <input type="text" readonly="readonly" value="${dto.membershipDTO.address}" id="address" name="address" class="col-sm-12">
				</td>
				</tr>
				
				</tbody>
				</table>
				
                 
                <hr class="solid">
                
                <table cellpadding="0" cellspacing="0" summary="입양상담신청 게시판">
                   <colgroup>
				<col width="25%">
				<col width="75%">
					</colgroup>
				<tbody>
				<tr>
					<th scope="row"><span>원하는 축종/종류</span></th>
					<td>
						<div class="row">
		    		        <div class="col">
			  	         
			  	  	       	<select onchange="change_serch(this.value);" name="species" id="species" class="custom-select">
							 <option value="0" disabled selected hidden> 축종 </option>
							    <option value="개">개</option>
							    <option value="고양이">고양이</option>
							    <option value="기타">기타</option>
							</select>
				           </div>
					 		 <div class="col">
								<select  id="kind" name="kind"  class="custom-select">
								  <option value="0" disabled selected hidden> 전체 </option> 
							  </select>
	  	  					</div> 
   					 </div>
    
					</td>
				</tr>
				<tr>
					<th scope="row"><span>시리얼(관리) 번호</span></th>
					<td>
						<input value="${dto.sn}"  type="text" id="sn" name="sn" class="col-sm-6" autofocus>
				         <small class="help-block">(예: 120318-001, 서울-송파-2012-00072) </small>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>입양하려는 이유</span></th>
					<td>
					    <textarea readonly="readonly" rows="2" id="reason" name="reason" cols="60">${dto.reason}</textarea>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>가족동의</span></th>
					<td>
						 <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="yesRadio" name="famAgree" value="Y">  예
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="noRadio" name="famAgree" value="N">  아니오
                                </label>
                            </div>
                        </div>
                    </div>
                  					
					</td>
				</tr>
				
				<tr>
					<th scope="row"><span>반려동물 입양경험</span></th>
					<td>
						 <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="yesRadio" name="adoptEx" value="Y">  예
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="noRadio" name="adoptEx" value="N">  아니오
                                </label>
                            </div>
                        </div>
                    </div>
                  					
					</td>
				</tr>
				</tbody>
				</table>
				
				
				<table cellpadding="0" cellspacing="0" summary="입양상담신청 게시판">
                   <colgroup>
				<col width="25%">
				<col width="75%">
					</colgroup>
				<tbody>
				<tr>
					<th scope="row"><span>과거에 입양했던 반려동물의 종류와 수량은?</span></th>
					<td>
					    <textarea rows="2" readonly="readonly"  id="pastTypeQ" name="pastTypeQ" cols="60">${dto.pastTypeQ}</textarea>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>과거에 입양했던 반려동물은 현재 어떻게 되었습니까?</span></th>
					<td>
					    <textarea rows="2" readonly="readonly" id="pastNow" name="pastNow" cols="60">${dto.pastNow}</textarea>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>현재 반려동물을 키우고 계십니까?</span></th>
					<td>
						 <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="yesRadio" name="haveAnimal" value="Y">  예
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="noRadio" name="haveAnimal" value="N">  아니오
                                </label>
                            </div>
                        </div>
                    </div>
                  					
					</td>
				</tr>
				
				</tbody>
				</table>
				
				
				
				<table cellpadding="0" cellspacing="0" summary="입양상담신청 게시판">
                   <colgroup>
				<col width="25%">
				<col width="75%">
					</colgroup>
				<tbody>
				<tr>
					<th scope="row"><span>주거형태</span></th>
					<td>
						 <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="housingType1" class="h" name="housingType" value="단독주택">  단독주택
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="housingType2" class="h" name="housingType" value="다세대주택">  다세대주택
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="housingType3" class="h" name="housingType" value="전원주택">  전원주택
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="housingType4" class="h" name="housingType" value="아파트">  아파트
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="housingType5" class="h" name="housingType" value="기타">  기타
                                </label>
                            </div>
                        </div>
                    </div>
                  					
					</td>
				</tr>
				<tr>
					<th scope="row"><span>이사, 또는 해외로 이주 시 입양한 반려동물을 어떻게 하시겠습니까?</span></th>
					<td>
					    <textarea rows="2" readonly="readonly" id="afterMoving" name="afterMoving" cols="60">${dto.afterMoving}</textarea>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>미혼의 경우, 앞으로 결혼, 임신, 출산 등을 하실 경우 입양한 반려동물을 어떻게 하시겠습니까?</span></th>
					<td>
						<textarea rows="2" readonly="readonly" id="afterWedding" name="afterWedding" cols="60">${dto.afterWedding}</textarea>						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>중성화수술 동의</span></th>
					<td>
						 <div class="col-sm-6">
                         <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="yesRadio" name="desexAgree"value="Y">  동의
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="noRadio" name="desexAgree" value="N">  동의 안함
                                </label>
                            </div>
                        </div>
                    </div>
                  					
					</td>
				</tr>
				 
				</tbody>
				</table>
				<div style="margin:0 auto;">
			        <input type="submit" id="btn" value="수정" class="btn btn-secondary">
            <a href="../"><input type="button" id="back" value="취소" class="btn btn-secondary"></a>
            </div>
		</form>

				
  <div class="card bg-light text-dark">
    <div class="card-body">
    <strong>입양절차 안내</strong>
    <br>
    입양상담은 법적 공고기간 10일 이후부터 진행됩니다.<br>
	입양신청서가 접수되면, 입양업무 담당자가 서류심사를 한 후, 입양이 가능하다고 판단된 분께만 개별연락을 드리며,<br>
	1차 전화상담, 2차 방문상담 후 입양여부를 최종 결정하게 됩니다<br>
	또한, 미성년자나 대학생의 경우는 부모님의 동의여부를 확인해야만 입양이 가능합니다.<br>
	입양이 결정된 경우, 협회를 방문하실 때는 <span style="color:blue;">신분증과 입양동물의 운송에 필요한 물품</span> <U>(이동가방, 목걸이, 리드줄 등)</U>을 지참하시고<br>
    <U>오후 4시(일요일 및 공휴일 제외)까지 방문</U>해 주셔야 합니다.
    </div>
    </div>
  	</div>
                

<script type="text/javascript"> 
$('input[name="famAgree"]').val(['${dto.famAgree}']);
$('input[name="adoptEx"]').val(['${dto.adoptEx}']);


$('input[name="haveAnimal"]').val(['${dto.haveAnimal}']);

$('input[name="housingType"]').val(['${dto.housingType}']);
$('input[name="desexAgree"]').val(['${dto.desexAgree}']);




 $('doucument').ready(function(){
	
	 $("input[name=famAgree]").each(function(i) {       //testradio 버튼 전체 disable
         $(this).attr('disabled', "true");
     });
	 $("input[name=adoptEx]").each(function(i) {       //testradio 버튼 전체 disable
         $(this).attr('disabled', "true");
     });
	 
	 $("input[name=haveAnimal]").each(function(i) {       //testradio 버튼 전체 disable
         $(this).attr('disabled', "true");
     });
	 
	 $("input[name=desexAgree]").each(function(i) {       //testradio 버튼 전체 disable
         $(this).attr('disabled', "true");
     });
	 
	
	 $("input[name=housingType]").each(function(i) {       //testradio 버튼 전체 disable
         $(this).attr('disabled', "true");
     });

	
});



</script>



<script type="text/javascript">


var cntt = new Array(); 
cntt[0] = new Array('전체');
cntt["개"] = new Array("선택","Mix","그레이하운드","그레이트피레니즈","닥스훈트","도베르만","리트리버","롯트와일러","말티즈","미니핀","바셋하운드","비글","보스턴테리어","복서","세타","세인트버나드","시베리안허스키","시츄","샤모예드","샤페이","슈나우저","스피츠","알래스칸말라뮤트","요크셔테리어","웰시코기","진도","제페니즈친","차우차우","치와와","코카스파니엘","콜리","퍼그","포메라니안","포인터","폭스테리어","푸들","페키니즈","보더콜리","기타","프렌치불독","시바견","비숑프리제","불테리어","잭러셀테리어"); 
cntt["고양이"] = new Array("선택","코리안숏헤어","샴","페르시안","러시안블루","터키시앙고라","배회고양이","기타"); 
cntt["기타"] = new Array("선택","토끼","페릿","기니피그","이구아나","고슴도치","카멜레온","도마뱀","거북이","뱀","가고일 게코","사바나모니터","기타"); 

let species="${dto.species}"
	$("#species").val(species).prop("selected", true);
	
let kind="${dto.kind}"

let sel2 = document.getElementById('kind');

for (i=1; i < cntt[species].length;i++){ 
	sel2.options[i] = new Option(cntt[species][i], cntt[species][i]); 
	
	if( kind == sel2.options[i].value){
	    sel2.options[i].selected = true;

	}
} 

function change_serch(ku) { 
	sel2 = document.getElementById('kind');
	
	for (i=1; i < cntt[ku].length;i++){ 
		sel2.options[i] = new Option(cntt[ku][i], cntt[ku][i]); 
	} 
	
	
 } 
 
let pass="${dto.pass}"
	$("#pass").val(pass).prop("selected", true);
	
	</script>




</body>
</html>