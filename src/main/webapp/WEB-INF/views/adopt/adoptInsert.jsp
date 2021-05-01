<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

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
<c:import url="../template/bootStrap.jsp"></c:import>


</head>

<body>
<c:import url="../template/header.jsp"></c:import>

          
<div class="container">
  <br>
   <h2>입양 신청 4</h2>
            <form id="frm" class="form-horizontal" action="./adoptInsert" method="post">
                
             <table cellpadding="0" cellspacing="0" summary="입양상담신청 게시판">
                   <colgroup>
				<col width="25%">
				<col width="75%">
					</colgroup>
				<tbody>
				
				<tr>
					<th scope="row"><span>성명</span></th>
					<td>
					    <input type="hidden" name="callCheck" value="2000-01-01">
					    <input type="hidden" name="visitCheck" value="2000-01-01">
					    <input type="hidden" name="adoptDate" value="2000-01-01">
					  <!--   <input type="hidden" name="applyDate"> -->
					    <input type="hidden" name="pass" value="보류">
				    	<input type="hidden" name="id" value="${membership.id}">
						<input type="text" value="${membership.name}" id="name" name="name" class="col-sm-6" autofocus>
						
					</td>
				</tr>
				
				
				<tr>
					<th scope="row"><span>생년월일</span></th>
					<td>
                        <input type="date" value="${membership.birth}" id="birth" name="birth"  class="col-sm-6" autofocus>
					</td>
				</tr>
				<tr>
					<th scope="row"><span>휴대폰번호</span></th>
					<td>
                        <input type="text" value="${membership.phone}" id="phone" name="phone" class="col-sm-6" >
					</td>
				</tr>
				<tr>
					<th scope="row"><span>주소</span></th>
					<td>
                        <input type="text" value="${membership.address}" id="address" name="address" class="col-sm-12">
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
								<select id="kind" name="kind"  class="custom-select">
								  <option value="0" disabled selected hidden> 전체 </option> 
							  </select>
	  	  					</div> 
   					 </div>
    
					</td>
				</tr>
				<tr>
					<th scope="row"><span>시리얼(관리) 번호</span></th>
					<td>
						<input value="${dto.sn}" type="text" id="sn" name="sn" class="col-sm-6" autofocus>
				         <small class="help-block">(예: 120318-001, 서울-송파-2012-00072) </small>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>입양하려는 이유</span></th>
					<td>
					    <textarea rows="2" id="reason" name="reason" cols="60"></textarea>
						
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
					    <textarea rows="2" id="pastTypeQ" name="pastTypeQ" cols="60"></textarea>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>과거에 입양했던 반려동물은 현재 어떻게 되었습니까?</span></th>
					<td>
					    <textarea rows="2" id="pastNow" name="pastNow" cols="60"></textarea>
						
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
                                    <input type="radio" id="solo" name="housingType" value="단독주택">  단독주택
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="multi" name="housingType" value="다세대주택">  다세대주택
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="house" name="housingType" value="전원주택">  전원주택
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="apartment" name="housingType" value="아파트">  아파트
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="etc" name="housingType" value="기타">  기타
                                </label>
                            </div>
                        </div>
                    </div>
                  					
					</td>
				</tr>
				<tr>
					<th scope="row"><span>이사, 또는 해외로 이주 시 입양한 반려동물을 어떻게 하시겠습니까?</span></th>
					<td>
					    <textarea rows="2" id="afterMoving" name="afterMoving" cols="60"></textarea>
						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>미혼의 경우, 앞으로 결혼, 임신, 출산 등을 하실 경우 입양한 반려동물을 어떻게 하시겠습니까?</span></th>
					<td>
						<textarea rows="2" id="afterWedding" name="afterWedding" cols="60"></textarea>						
					</td>
				</tr>
				<tr>
					<th scope="row"><span>중성화수술 동의</span></th>
					<td>
						 <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="yesRadio" name="desexAgree" value="Y">  동의
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
				<input type="submit" id="btn" value="입력" class="btn btn-secondary">
            <a href="./adoptInsert"><input type="button" id="back" value="취소" class="btn btn-secondary"></a>
            </div>
		</form>
	</div>
				
  <div class="container card bg-light text-dark">
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
 
</script> 


</body>
</html>