<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="UTF-8">
	<title>Home</title>

 <c:import url="./template/bootStrap.jsp"></c:import>
<style>
*{box-sizing: border-box; -webkit-box-sizing: border-box; }
html, body { height: 100%; }
body { margin: 0; font: sans-serif; }

/*
PURE RESPONSIVE CSS3 SLIDESHOW GALLERY by Roko C. buljan
http://stackoverflow.com/a/34696029/383904
*/

.CSSgal {
	position: relative;
	overflow: hidden;
	
	height: 700px; /* Or set a fixed height */
}

/* SLIDER */

.CSSgal .slider {
    width: 1120px;
	height:  50%;
	white-space: nowrap;
	font-size: 0;
	transition: 0.8s;
}

.CSSgal .slider > img {

  position: relative;
  width: 100%;
  bottom: 100px;
  left: 50%;
 transform: translate(-50%, -50%);
 } 

/* SLIDES */

.CSSgal .slider > * {
	font-size: 1rem;
	display: inline-block;
	white-space: normal;
	vertical-align: top;
	height: 100%;
	width: 100%;
	background: none 50% no-repeat;
	background-size: cover;
}

/* PREV/NEXT, CONTAINERS & ANCHORS */

.CSSgal .prevNext {
	position: absolute;
	z-index: 1;
	top: 50%;
	width: 100%;
	height: 0;
}

.CSSgal .prevNext > div+div {
	visibility: hidden; /* Hide all but first P/N container */
}

.CSSgal .prevNext a {
	background: #fff;
	position: absolute;
	width:       60px;
	height:      60px;
	line-height: 60px; /* If you want to place numbers */
	text-align: center;
	opacity: 0.7;
	-webkit-transition: 0.3s;
					transition: 0.3s;
	-webkit-transform: translateY(-50%);
					transform: translateY(-50%);
	left: 0;
}
.CSSgal .prevNext a:hover {
	opacity: 1;
}
.CSSgal .prevNext a+a {
	left: auto;
	right: 0;
}

/* NAVIGATION */

.CSSgal .bullets {
	position: absolute;
	z-index: 2;
	bottom: 0;
	padding: 10px 0;
	width: 100%;
	text-align: center;
}
.CSSgal .bullets > a {
	display: inline-block;
	width:       30px;
	height:      30px;
	line-height: 30px;
	text-decoration: none;
	text-align: center;
	background: rgba(255, 255, 255, 1);
	-webkit-transition: 0.3s;
					transition: 0.3s;
}
.CSSgal .bullets > a+a {
	background: rgba(255, 255, 255, 0.5); /* Dim all but first */
}
.CSSgal .bullets > a:hover {
	background: rgba(255, 255, 255, 0.7) !important;
}

/* NAVIGATION BUTTONS */
/* ALL: */
.CSSgal >s:target ~ .bullets >* {      background: rgba(255, 255, 255, 0.5);}
/* ACTIVE */
#s1:target ~ .bullets >*:nth-child(1) {background: rgba(255, 255, 255,   1);}
#s2:target ~ .bullets >*:nth-child(2) {background: rgba(255, 255, 255,   1);}
#s3:target ~ .bullets >*:nth-child(3) {background: rgba(255, 255, 255,   1);}
#s4:target ~ .bullets >*:nth-child(4) {background: rgba(255, 255, 255,   1);}
/* More slides? Add here more rules */

/* PREV/NEXT CONTAINERS VISIBILITY */
/* ALL: */
.CSSgal >s:target ~ .prevNext >* {      visibility: hidden;}
/* ACTIVE: */
#s1:target ~ .prevNext >*:nth-child(1) {visibility: visible;}
#s2:target ~ .prevNext >*:nth-child(2) {visibility: visible;}
#s3:target ~ .prevNext >*:nth-child(3) {visibility: visible;}
#s4:target ~ .prevNext >*:nth-child(4) {visibility: visible;}
/* More slides? Add here more rules */

/* SLIDER ANIMATION POSITIONS */

#s1:target ~ .slider {transform: translateX(   0%); -webkit-transform: translateX(   0%);}
#s2:target ~ .slider {transform: translateX(-100%); -webkit-transform: translateX(-100%);}
#s3:target ~ .slider {transform: translateX(-200%); -webkit-transform: translateX(-200%);}
#s4:target ~ .slider {transform: translateX(-300%); -webkit-transform: translateX(-300%);}
/* More slides? Add here more rules */


/* YOU'RE THE DESIGNER! 
   ____________________
   All above was mainly to get it working :)
   CSSgal CUSTOM STYLES / OVERRIDES HERE: */

.CSSgal{
	color: #fff;	
	text-align: center;
}
.CSSgal .slider h2 {
	margin-top: 40vh;
	font-weight: 200;
	letter-spacing: -0.06em;
	word-spacing: 0.2em;
	font-size: 3em;
}
.CSSgal a {
	border-radius: 50%;
	margin: 0 3px;
	color: rgba(0,0,0,0.8);
	text-decoration: none;
}


/* gallery start */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width: 300px;
  max-width: none !important;
  height: 400px;
  max-height: none !important;
  padding-top:0px;
  margin-top:10px;
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

.card-body{
padding-top: 0px;
padding-left: 10px;
}
ul{
   list-style:none;
   padding-left:0px;
    margin: 0px;
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
  width: 20%;
  margin-left:100px;
  padding: 0 0px;
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

h4{
  
  text-align: center;

  padding-top:30px;
  padding-bottom:14px;
}
h6{
   font-family: 'MapoGoldenPier';
  font-size: 20px;
  text-align: center;
  padding-top:1px;
  padding-bottom:20px;
   border-bottom: 1px solid gray;
}

@font-face {
    font-family: 'MapoGoldenPier';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

</style>


</head>
<body>
<c:import url="./template/header.jsp"></c:import> 

<div class="container">
<div class="CSSgal">

  <!-- Don't wrap targets in parent -->
  <s id="s1"></s> 
  <s id="s2"></s>
  <s id="s3"></s>
  <s id="s4"></s>

  <div class="slider">
    <div style="background:#5b8;">
		  <img class="mySlides" src="./resources/images/main/mainDog.jpeg" style="width:100%" >
		
		</div>
    <div style="background:#85b;">
	     <img class="mySlides" src="./resources/images/main/mainDog2.jpeg" style="width:100%">
		</div>
    <div style="background:#e95;">
			  <img class="mySlides" src="./resources/images/main/mainDog3.jpeg" style="width:100%">

		</div>
    <div style="background:#e59;">
			  <img class="mySlides" src="./resources/images/main/mainDog4.jpeg" style="width:100%">

		</div>
  </div>
  
  <div class="prevNext">
    <div><a href="#s4"></a><a href="#s2"></a></div>
    <div><a href="#s1"></a><a href="#s3"></a></div>
    <div><a href="#s2"></a><a href="#s4"></a></div>
    <div><a href="#s3"></a><a href="#s1"></a></div>
  </div>

  <div class="bullets">
    <a href="#s1"></a>
    <a href="#s2"></a>
    <a href="#s3"></a>
    <a href="#s4"></a>
  </div>
  
  </div>
</div>
<br>
  <div class="container">
  
  <h4>Latest Rescued Animals</h4>
<h6>동물과 공존하는 행복한 세상! 여러분의 관심과 사랑이 함께하면 현실이 됩니다.</h6>
  <!-- row start -->
  
  <div class="row">
   <c:forEach items="${list}" var="dto"> 
    <div class="col-lg-4 col-sm-6 mb-4">
     
      <div class="card">
      
      <c:if test="${dto.rescueFileDTO.originalName == null}">
      <a href="./rescue/rescueGallery?status=구조"><img class="card-img-top" id="myImg" alt="" style="width:100%" src="https://via.placeholder.com/560x420?text=Save+Animal"></a>
      
      </c:if>
      <c:if test="${dto.rescueFileDTO.originalName != null}">
        <a href="./rescue/rescueGallery?status=구조"><img class="card-img-top" id="myImg" alt="" style="width:100%" src="./resources/upload/rescue/${dto.rescueFileDTO.fileName}"></a>
       </c:if>
		       
		
        <div class="card-body">
          <p class="card-text">
          	<ul>
          		<li class="full">
          			<strong>구조일</strong>
          			<i>
          			${dto.resDate}
          			<br>
          			 <span style="color:blue;"> SN: ${dto.sn} </span><br>
          			
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
          		
          		<li class="full">
          		  
          			<Strong>축종</Strong> ${dto.species} / ${dto.kind}
          		     
          		</li>
          		
       
          	</ul>
         </p>
            </div>
            <form action="../adopt/adoptInsert" id="frm" method="get">
              <input type="hidden" name="sn" value="${dto.sn}">
               <input type="hidden" name="species" value="${dto.species}">
                <input type="hidden" name="kind" value="${dto.kind}">
        
            </form>
       


  
    </div>
    

  </div>
  </c:forEach>
 </div>
 <!-- row end -->
</div>

<c:import url="./template/footer.jsp"></c:import>
</body>
</html> 
