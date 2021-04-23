<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul{
   list-style:none;
   padding-left:0px;
   }
 img {
  width: 560px;
  height: 420px;
  object-fit: cover;
}
   
   
</style>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<!-- Page Content -->
<div class="container">

  <!-- Page Heading -->
  <h1 class="my-4">구조동물공고
    <small></small>
  </h1>

  <div class="row">
   <c:forEach items="${list}" var="dto"> 
    <div class="col-lg-4 col-sm-6 mb-4">
     <form name="animal54567" action="" method="post" enctype="multipart/form-data">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" alt="" src="../resources/upload/rescue/${dto.rescueFileDTO.fileName}">
        </a>
        <div class="card-body">
          <p class="card-text">
          	<ul>
          		<li class="full">
          			<strong>구조일</strong>
          			<i>
          			${dto.resDate} (SN: ${dto.sn} 
          			<span class="red"> ${dto.zoneSn} </span>)
          			</i>
          		</li>
          		
          		<li class="full">
          			<strong>구조장소</strong>
          		</li>
          		<li class="full">
          			${dto.province} ${dto.city} ${dto.location}
          		</li>
          		
          		<li class="half">
          			<Strong>축종</Strong>
          		     ${dto.species} / ${dto.kind}
          		</li>
          		<li class="half">
          			<Strong>성별</Strong>
          		     ${dto.sex}
          		</li>
          		
          		<li class="half">
          			<Strong>연령</Strong>
          		     ${dto.age}
          		</li>
          		<li class="half">
          			<Strong>모색</Strong>
          		     ${dto.color}
          		</li>
          		
          		<li class="half">
          			<Strong>중성화수술</Strong>
          		     ${dto.desex}
          		</li>
          		<li class="half">
          			<Strong>성격 </Strong>
          		     ${dto.character}
          		</li>
          		
          		<li class="half">
          			<Strong>체중 </Strong>
          		     ${dto.weight}
          		</li>
          		<li class="half">
          			<Strong>건강상태 </Strong>
          		     ${dto.health}
          		</li>
          		
          		<li class="full">
          			<strong> 특징 </strong>
          		</li>
          		<li class="full">
          			<span>
          			   ${dto.feature}
          			</span>
          		</li>
          	</ul>
         </p>
         <button type="button" onclick="ani_request('0000054699')">입양신청</button>
      </div>
    </div>
    </form>
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select Pickup City</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                            </select> 
                        </div>
                         <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select Drop City</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                            </select>
                        </div>
                          <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select Vehicle</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                            </select>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                             <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select Vehicle</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                                <option>Example one</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            
             <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                         
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            sn:
                            <input type="text" class="form-control search-slt" placeholder="Enter Pickup City">
                        </div>
                        
                         <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                              zoneSn:
                            <input type="text" class="form-control search-slt" placeholder="Enter Drop City">
                        </div>
                        
                          <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                               feature:
                             <input type="text" class="form-control search-slt" placeholder="Enter Drop City">
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <br>
                            <button type="button" class="btn btn-danger wrn-btn">Search</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>


<script type="text/javascript">

$("#species").prop("")

 $("#search").click(function(){
	let s = $("#species").val();
	let result = "";
	console.log(s);
	
	if(s == "d"){
		result ="개";
	}else if(s=="c"){
		result = "고양이"
	}else if(s=="e"){
		result="기타"
	}
	
	console.log(result);
	if(result !=""){
	$("#species").val(result);
	}
	alert($("#species").val());
	
	
	  if($("#species").val() != "d" & $("#species").val() !="c" & $("#species").val() !="e"){
	
		  $("#frm").submit();
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