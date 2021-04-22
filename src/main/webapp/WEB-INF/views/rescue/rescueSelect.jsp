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
		<h2> 구조 동물 입력 9</h2>
	<form id="frm"  enctype="multipart/form-data">
	
	
  	<div class="row">
	  	  <div class="col">
	  	  	    <label for="status" class="mr-sm-2">게시판 종류 </label>
  		        <input type="text" readonly="readonly" value="${dto.status}" class="form-control mb-2 mr-sm-2" name="status" id="status">
	  	  </div>
	  	  <div class="col">
	  	  	   <label for="resDate" class="mr-sm-2">구조일 </label>
  		       <input type="text" readonly="readonly" value="${dto.resDate}" class="form-control  mb-2 mr-sm-2" id="resDate" name="resDate">
	  	  </div>
    </div>
  
	   	  
	   	 
  	
  	<div class="row">
     
	  	  <div class="col">
	  	  		<label for="sn" class="mr-sm-2">시리얼 넘버</label>
  		        <input type="text" readonly="readonly"  value="${dto.sn}" class="form-control mb-2 mr-sm-2" name="sn" id="sn">
	  	  </div>
	
	  	  <div class="col">
	  	    	<label for="zoneSn" class="mr-sm-2">지역 시리얼 넘버</label>
  		        <input type="text" readonly="readonly" value="${dto.zoneSn}" class="form-control mb-2 mr-sm-2" name="zoneSn" id="zoneSn">
	  	  </div>
    </div>
    
    
      <div class="form-group">
       <label for="province"> 구조장소 </label>
      <div class="row">
     
  		        <input type="text" readonly="readonly" value="${dto.province} ${dto.city} ${dto.location}" class="form-control mb-2 mr-sm-2" name="location" placeholder="나머지주소" id="location">
	  
      </div>
    </div>
  	
    
    <div class="row">
	  	  <div class="col">
	  	  	    <label for="species" class="mr-sm-2">축종</label>
  		        <input type="text" readonly="readonly" value="${dto.species}" class="form-control mb-2 mr-sm-2" name="species" id="species">
	  	  </div>
	  	  <div class="col">
	  	  	   <label for="kind" class="mr-sm-2">종류</label>
  		       <input type="text" readonly="readonly" value="${dto.kind}"class="form-control mb-2 mr-sm-2" name="kind" id="kind">
	  	  </div>
    </div>
    
   <div class="row">
	  	  <div class="col">
    		<label for="sex">성별</label>
    		<input type="text" readonly="readonly" value="${dto.sex}"class="form-control etc myCheck" id="sex" name="sex" >
   		</div>
  
	  	  <div class="col">
   			 <label for="age">나이</label>
    		<input type="text" readonly="readonly" value="${dto.age}"class="form-control etc myCheck" id="age" name="age" >
    		
  		</div>
   </div>
    
    
    <div class="row">
	  	  <div class="col">
	  	       <label for="color" class="mr-sm-2">모색</label>
  		        <input type="text" readonly="readonly" value="${dto.color}" class="form-control mb-2 mr-sm-2" name="color" id="color">
	  	  </div>
	  	  <div class="col">
	  	        <label for="desex" class="mr-sm-2">중성화 수술</label>
  		        <input type="text" readonly="readonly" value="${dto.desex}" class="form-control mb-2 mr-sm-2" name="desex" id="desex">
	  	  </div>
    </div>
    
    <div class="row">
	  	  <div class="col">
	  	         <label for="character" class="mr-sm-2">성격</label>
  		         <input type="text" readonly="readonly" value="${dto.character}" class="form-control mb-2 mr-sm-2" name="character" id="character">
	  	  </div>
	  	  <div class="col">
	  	  		<label for="weight" class="mr-sm-2">체중</label>
  		        <input type="text" readonly="readonly" value="${dto.weight}" class="form-control mb-2 mr-sm-2" name="weight" id="weight">kg
	  	  </div>
    </div>
    
    <div class="row">
	  	  <div class="col">
	  	  		<label for="health" class="mr-sm-2">건강상태</label>
  		        <input type="text" readonly="readonly" value="${dto.health}" class="form-control mb-2 mr-sm-2" name="health" id="health">
	  	  </div>
	  	  <div class="col">
	  	  		
	  	  </div>
    </div>
    
    <div class="row">
	  	  <div class="col">
	  	  	  <label for="feature">특징</label>
      	       <textarea class="form-control" readonly="readonly" rows="5" id="feature" name="feature" id="feature"> ${dto.feature} </textarea>
	  	  </div>
    </div>
    <br>
    <div class="row">
	  	  <div class="col">
	  	  		<label for="adoptDate" class="mr-sm-2" > 입양일 </label>
	  		    <input id="adoptDate" readonly="readonly" value="${dto.adoptDate}" name="adoptDate" type="date" >	   	
	  	  </div>
	  	  <div class="col">
	  	  	   <label for="returnDate" class="mr-sm-2"> 반환일 </label>
	  		   <input id="returnDate" readonly="readonly" value="${dto.returnDate}" name="returnDate" type="date" >	   	
	  	  </div>
    </div>
    
  
  
	<h3><img alt="" src="../resources/upload/member/${rescue.rescueFileDTO.fileName}"></h3>



<a href="./rescueList"><input type="button"value=" a리스트 " class="btn btn-primary"></a>


   <a href="./rescueUpdate">수정</a>
	<a href="./rescueDelete">삭제</a>
	<a href="./rescueList"> 리스트로 가기</a>
 
</form>
 
</div>

</body>
</html>