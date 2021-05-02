<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width: 360px;
  max-width: none !important;
  height: 750px;
  max-height: none !important;
  margin: auto;
  text-align: left;
  font-family: arial;
  font-size: 15px;
    background-color: #f1f1f1;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
ul{
   list-style:none;
   padding-left:0px;
    margin: 0;
  padding: 0;
   }

 img {
  width: 560;
  height: 420;
  object-fit: cover;
}

button:hover, a:hover {
  opacity: 0.7;
}

.row{
 display: table;
 margin: 0 -5px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
.col-lg-4{
float: left;
  width: 25%;
  padding: 0 10px;
}

* {
  box-sizing: border-box;
}

#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {  
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)} 
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)} 
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}


/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}


   
</style>

<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<!-- Page Content -->
<div class="container">

  <!-- Page Heading -->
  <c:if test="${pager.status =='구조'}">
     <h1 class="my-4">구조동물공고</h1>
  </c:if>
  <c:if test="${pager.status =='가족'}">
     <h1 class="my-4">가족의 품으로</h1>
  </c:if>
  <c:if test="${pager.status =='입양'}">
     <h1 class="my-4">입양됐어요</h1>
  </c:if>
  
   
  

  <div class="row">
   <c:forEach items="${list}" var="dto"> 
    <div class="col-lg-4 col-sm-6 mb-4">
     
      <div class="card">
      
      <c:if test="${dto.rescueFileDTO.originalName == null}">
      <img class="card-img-top" id="myImg" alt="" style="width:100%" src="https://via.placeholder.com/560x420?text=Save+Animal">
      
      </c:if>
      <c:if test="${dto.rescueFileDTO.originalName != null}">
       <img class="card-img-top" id="myImg" alt="" style="width:100%" src="../resources/upload/rescue/${dto.rescueFileDTO.fileName}">
       </c:if>
		       <!-- The Modal -->
		<div id="myModal" class="modal">
		  <span class="close">&times;</span>
		  <img class="modal-content" id="img01" >
		  <div id="caption">크게보기</div>
		</div>
		
        <div class="card-body">
          <p class="card-text">
          	<ul>
          		<li class="full">
          			<strong>구조일</strong>
          			<i>
          			${dto.resDate}
          			( <span style="color:blue;"> SN: ${dto.sn} </span>
          			<span style="color:red;"> ${dto.zoneSn} </span>)
          			</i>
          		</li>
          		
          		<c:if test="${pager.status =='입양'}">
          			<li class="half">
          				<strong>입양일</strong> ${dto.adoptDate} 
          			</li>
          		</c:if>
          		<c:if test="${pager.status =='가족'}">
          			<li class="half">
          				<strong>반환일</strong> ${dto.returnDate} 
          			</li>
          		</c:if>
          		
          		
          		
          		<li class="full">
          			<strong>구조장소</strong>
          		</li>
          		<li class="full">
          			${dto.province} ${dto.city} ${dto.location}
          		</li>
          		
          		<li class="half">
          		   <div class="row">
          		    <div class="col">
          			<Strong>축종</Strong> ${dto.species} / ${dto.kind}
          		     </div>
          		     <div class="col">
          			<Strong>성별</Strong>  ${dto.sex}
          			</div>
          			</div>
          		</li>
          		
          		<li class="half">
          	      <div class="row">
          		    <div class="col">
          			<Strong>연령</Strong>  ${dto.age}
          		     </div>
          		     <div class="col">
          			<Strong>모색</Strong>  ${dto.color}
          			</div>
          		  </div>
          		</li>
          		
          		<c:if test="${pager.status =='구조'}">
          		<li class="half">
          		  <div class="row">
          		    <div class="col">
          			<Strong>중성화수술</Strong> ${dto.desex}
          		     </div>
          		     <div class="col">
          			<Strong>성격 </Strong> ${dto.character}
          			</div>
          		</div>
          		</li>
          		
          		<li class="half">
          		<div class="row">
          		    <div class="col">
          			<Strong>체중 </Strong> ${dto.weight}
          		     </div>
          		     <div class="col">
          			<Strong>건강상태 </Strong>  ${dto.health}
          			</div>
          		</div>
          			
          		</li>
          		
          		<li class="full">
          			<strong> 특징 </strong>
          		</li>
          		<li class="full">
          			<span>
          			   ${dto.feature}
          			</span>
          		</li>
          		
          		</c:if>
          	</ul>
         </p>
            </div>
        <c:if test="${pager.status =='구조'}">
      	 <c:if test="${not empty membership}">
      	     <a href="../adopt/adoptInsert?sn=${dto.sn}&species=${dto.species}&kind=${dto.kind}"><button id="confirm">입양신청</button></a>
      	 </c:if>
      	 <c:if test="${empty membership}">
      	     <a><button class="ask">입양신청</button></a>
      	 </c:if>
      </c:if>


  
    </div>
    

  </div>
  </c:forEach>
 </div>
  <!-- /.row -->



 
  

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
        <form id="frm" action="./rescueGallery"  novalidate="novalidate">
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
                         <input type="hidden" name="status" value="${pager.status}">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            시리얼 넘버:
                            <input type="text" id="sn" name="sn" value="${pager.sn}" class="form-control search-slt" >
                        </div>
                        
                         <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                             지역 시러얼 넘버:
                            <input type="text" class="form-control search-slt" value="${pager.zoneSn}" id="zoneSn"  name="zoneSn">
                        </div>
                        
                          <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                              특징:
                             <input type="text" class="form-control search-slt" value="${pager.feature}"id="feature"  name="feature">
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

$("#confirm").click(function(){ 
	
	confirm("선택하신 구조동물을 입양 신청하시겠습니까?");
});


$(".ask").click(function(){ 
	
		 alert("로그인을 먼저 해주시기 바랍니다.");
});
</script>

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
  
  <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById("myImg");
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
  modal.style.display = "none";
}
</script>

</body>
</html>