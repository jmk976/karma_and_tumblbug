<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 <br>
		<h2> 구조 동물 상세정보</h2>
	<form id="frm"  enctype="multipart/form-data">
	
	
  	<div class="row">
	  	  <div class="col">
	  	  	    <label for="status" class="mr-sm-2">게시판 종류 </label>
  		        <input type="text" readonly="readonly" value="${rescue.status}" class="form-control mb-2 mr-sm-2" name="status" id="status">
	  	  </div>
	  	  <div class="col">
	  	  	   <label for="resDate" class="mr-sm-2">구조일 </label>
  		       <input type="text" readonly="readonly" value="${rescue.resDate}" class="form-control  mb-2 mr-sm-2" id="resDate" name="resDate">
	  	  </div>
    </div>
  
	   	  
	   	 
  	
  	<div class="row">
     
	  	  <div class="col">
	  	  		<label for="sn" class="mr-sm-2">시리얼 넘버</label>
  		        <input type="text" readonly="readonly"  value="${rescue.sn}" class="form-control mb-2 mr-sm-2" name="sn" id="sn">
	  	  </div>
	
	  	  <div class="col">
	  	    	<label for="zoneSn" class="mr-sm-2">지역 시리얼 넘버</label>
  		        <input type="text" readonly="readonly" value="${rescue.zoneSn}" class="form-control mb-2 mr-sm-2" name="zoneSn" id="zoneSn">
	  	  </div>
    </div>
    
    
      <div class="form-group">
       <label for="address"> 구조장소 </label>
      <div class="row">

	   
     <input type="text" readonly="readonly" value="${rescue.province} ${rescue.city} ${rescue.location} " class="form-control mb-2 mr-sm-2" name="address" id="address">
	  
      </div>
    </div>
  
  	
    
    <div class="row">
  
	  	  <div class="col">
	  	  	    <label for="species" class="mr-sm-2">축종</label>
  		        <input type="text" readonly="readonly" value="${rescue.species}" class="form-control mb-2 mr-sm-2" name="species" id="species">
	  	  </div>
	  	  <div class="col">
	  	  	   <label for="kind" class="mr-sm-2">종류</label>
  		       <input type="text" readonly="readonly" value="${rescue.kind}"class="form-control mb-2 mr-sm-2" name="kind" id="kind">
	  	  </div>
    </div>
    
   <div class="row">
	  	  <div class="col">
    		<label for="sex">성별</label>
    		<input type="text" readonly="readonly" value="${rescue.sex}"class="form-control etc myCheck" id="sex" name="sex" >
   		</div>
  
	  	  <div class="col">
   			 <label for="age">나이</label>
    		<input type="text" readonly="readonly" value="${rescue.age}"class="form-control etc myCheck" id="age" name="age" >
    		
  		</div>
   </div>
    
    
    <div class="row">
	  	  <div class="col">
	  	       <label for="color" class="mr-sm-2">모색</label>
  		        <input type="text" readonly="readonly" value="${rescue.color}" class="form-control mb-2 mr-sm-2" name="color" id="color">
	  	  </div>
	  	  <div class="col">
	  	        <label for="desex" class="mr-sm-2">중성화 수술</label>
  		        <input type="text" readonly="readonly" value="${rescue.desex}" class="form-control mb-2 mr-sm-2" name="desex" id="desex">
	  	  </div>
    </div>
    
    <div class="row">
	  	  <div class="col">
	  	         <label for="character" class="mr-sm-2">성격</label>
  		         <input type="text" readonly="readonly" value="${rescue.character}" class="form-control mb-2 mr-sm-2" name="character" id="character">
	  	  </div>
	  	  <div class="col">
	  	  		<label for="weight" class="mr-sm-2">체중</label>
  		        <input type="text" readonly="readonly" value="${rescue.weight}" class="form-control mb-2 mr-sm-2" name="weight" id="weight">kg
	  	  </div>
    </div>
    
    <div class="row">
	  	  <div class="col">
	  	  		<label for="health" class="mr-sm-2">건강상태</label>
  		        <input type="text" readonly="readonly" value="${rescue.health}" class="form-control mb-2 mr-sm-2" name="health" id="health">
	  	  </div>
	  	  <div class="col">
	  	  		
	  	  </div>
    </div>
    
    <div class="row">
	  	  <div class="col">
	  	  	  <label for="feature">특징</label>
      	       <textarea class="form-control" readonly="readonly" rows="5" id="feature" name="feature" id="feature"> ${rescue.feature} </textarea>
	  	  </div>
    </div>
    <br>
    <div class="row">
	  	  <div class="col">
	  	  		<label for="adoptDate" class="mr-sm-2" > 입양일 </label>
	  		    <input id="adoptDate" readonly="readonly" value="${rescue.adoptDate}" name="adoptDate" type="date" >	   	
	  	  </div>
	  	  <div class="col">
	  	  	   <label for="returnDate" class="mr-sm-2"> 반환일 </label>
	  		   <input id="returnDate" readonly="readonly" value="${rescue.returnDate}" name="returnDate" type="date" >	   	
	  	  </div>
    </div>
    
  
  
	<img alt="" src="../resources/upload/rescue/${rescue.rescueFileDTO.fileName}">

<br>
<br>

 <a href="./rescueList"><input type="button"value="리스트" class="btn btn-primary"></a>
 <a href="./rescueUpdate?sn=${rescue.sn}"><input type="button"value="수정" class="btn btn-warning"></a>
 <a href="./rescueDelete?sn=${rescue.sn}"><input type="button"value="삭제" class="btn btn-danger"></a>


	
 
</form>

 <script type="text/javascript">
 
 var cnt = new Array();
 cnt[0] = new Array('전체');
 cnt["서울특별시"] = new Array("전체","강남구","강동구","강북구","강서구","광진구","구로구","금천구","노원구","도봉구","동대문구","서대문구","서초구","성동구","성북구","송파구","영등포구","은평구","종로구","중구","중랑구");
 cnt["경기도"] = new Array("전체","고양시","과천시","광명시","구리시","군포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안양시","오산시","의왕시","의정부시","평택시","하남시","가평군","광주시","김포시","안성시","양주시","양평군","여주군","연천군","용인시","이천군","파주시","포천시","화성시");
 cnt["인천광역시"] = new Array("전체","계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군");

 function changeCity(add) {
 	sel = document.getElementById('city');
 	for (i=sel.length; i>=0; i--){
 		sel.options[i] = null
 		}
 	for (i=0; i < cnt[add].length;i++){ 
 		sel.options[i] = new Option(cnt[add][i], cnt[add][i]);
//     document.form.test2.options[i] = new Option(num[i],vnum[i]);

 	} 
  }
 
 var cntt = new Array(); 
 cntt[0] = new Array('전체');
 cntt["개"] = new Array("선택","Mix","그레이하운드","그레이트피레니즈","닥스훈트","도베르만","리트리버","롯트와일러","말티즈","미니핀","바셋하운드","비글","보스턴테리어","복서","세타","세인트버나드","시베리안허스키","시츄","샤모예드","샤페이","슈나우저","스피츠","알래스칸말라뮤트","요크셔테리어","웰시코기","진도","제페니즈친","차우차우","치와와","코카스파니엘","콜리","퍼그","포메라니안","포인터","폭스테리어","푸들","페키니즈","보더콜리","기타","프렌치불독","시바견","비숑프리제","불테리어","잭러셀테리어"); 
 cntt["고양이"] = new Array("선택","코리안숏헤어","샴","페르시안","러시안블루","터키시앙고라","배회고양이","기타"); 
 cntt["기타"] = new Array("선택","토끼","페릿","기니피그","이구아나","고슴도치","카멜레온","도마뱀","거북이","뱀","가고일 게코","사바나모니터","기타"); 

 function change_serch(ku) { 
 	sel = document.getElementById('kind');
 	for (i=sel.length-1; i>=0; i--){ 
 		sel.options[i] = null 
 		} 
 	for (i=0; i < cntt[ku].length;i++){ 
 		sel.options[i] = new Option(cntt[ku][i], cntt[ku][i]); 
 	} 
  } 



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
 
</div>

</body>
</html>