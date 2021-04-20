<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<!-- <script type="text/javascript">
 function categoryChange(e) {
	  var city_s = ["강남구", "강동구", "강북구", "강서구"];
	  var city_g = ["고양시", "과천시", "광명시", "구리시"];
	  var city_i = ["계양구", "남구", "남동구", "동구", "부평구"];
	  var target = document.getElementById("city");
	 
	  if(e.value == "s") var d = city_s;
	  else if(e.value == "g") var d = city_g;
	  else if(e.value == "i") var d = city_i;
	 
	  target.options.length = 0;
	 
	  for (x in d) {
	    var opt = document.createElement("option");
	    opt.value = d[x];
	    opt.innerHTML = d[x];
	    target.appendChild(opt);
	  } 
	}


	

</script> --> 
</head>

<body>
<c:import url="../template/header.jsp"></c:import>

<div class ="container">
		<h2> 정기후원 신청 </h2>
	<form id="frmReg" action="./rescueInsert" method="post" enctype="multipart/form-data">
	
  	<div class="row">
	  	  <div class="col">
			  	 
			  	   <label for="status"> status </label>
					  <select name="status" class="custom-select myCheck">
					    <option value="가족">가족 </option>
					    <option value="구조">구조</option>
					  </select>
				
	   	  </div>
	   	  <div class="col">
	   		    <label for="sn"> sn </label>
	     		<input type="text" class="form-control" name="sn">
	   	  </div>
	   	   <div class="col">
	   		    <label for= "zoneSn">  zoneSn </label>
	     		<input type="text" class="form-control" name="zoneSn">
	   	  </div>
  	</div>
  	
  	
  
  
   <div class="col">
	        <label for="resDate" class="mr-sm-2">resDate</label>
	  		<input id="resDate" name="resDate" type="date" class="myCheck">
   </div>
   
   <div class="row">
	  	  
	  		<div class="col">
			  <label for="province" class="mr-sm-2">province</label>
			  <input type="text" class="form-control mb-2 mr-sm-2 myCheck" name="province" id="province">
			  
			   </div>
			   <div class="col">
			 
			  <input type="text" class="form-control mb-2 mr-sm-2 myCheck" name="city" id="city">
			  
			   </div>
			   <div class="col">
			  <input type="text" class="form-control mb-2 mr-sm-2 myCheck" name="location" placeholder="나머지주소" id="location">
			  
			   </div>
			 
	    
 </div>
 
   <div class="row">
   <div class="col">
        <label for="species" class="mr-sm-2">species</label>
  		<input type="text" class="form-control mb-2 mr-sm-2"  name="species" id="species">
  		   </div>
  		   <div class="col">
		  <label for="kind" class="mr-sm-2">kind</label>
		  <input type="text" class="form-control mb-2 mr-sm-2 myCheck"  name="kind" id="kind">
	
		   </div>
</div>
		   
   
  
  
  
  <div class="form-group"> 
    <label for="sex">sex</label>
    <input type="text" class="form-control etc myCheck" id="sex" name="sex" >
  </div>
   <div class="form-group"> 
    <label for="age">age</label>
    <input type="text" class="form-control etc myCheck" id="age" name="age" >
  </div>
   <div class="form-group"> 
    <label for="color">color</label>
    <input type="text" class="form-control etc myCheck" id="color" name="color" >
  </div>
   <div class="form-group"> 
    <label for="desex">desex</label>
    <input type="text" class="form-control etc myCheck" id="desex" name="desex" >
  </div>
   <div class="form-group"> 
    <label for="character">character</label>
    <input type="text" class="form-control etc myCheck" id="character" name="character" >
  </div>
   <div class="form-group"> 
    <label for="weight">weight</label>
    <input type="text" class="form-control etc myCheck" id="weight" name="weight" >
  </div>
   <div class="form-group"> 
    <label for="health">health</label>
    <input type="text" class="form-control etc myCheck" id="health" name="health" >
  </div>
   <div class="form-group"> 
    <label for="feature">feature</label>
    <input type="text" class="form-control etc myCheck" id="feature" name="feature" >
  </div>
  <div class="row">
   <div class="col">
	        <label for="adoptDate" class="mr-sm-2">adoptDate</label>
	  		<input id="adoptDate" name="adoptDate" type="date" class="myCheck">
   </div>
   <div class="col">
	        <label for="returnDate" class="mr-sm-2">returnDate</label>
	  		<input id="returnDate" name="returnDate" type="date" class="myCheck">
   </div>
   </div>
  
  
  
  
  <input type="submit" id="btn" value="입력" class="btn btn-primary">
  <a href="./rescueInsert"><input type="button" id="back" value="취소" class="btn-primary"></a>
</form></div>
<script type="text/javascript">

$("#btn").click(function(){
	$("#frm").submit()
});


</script>
</body>

</html>