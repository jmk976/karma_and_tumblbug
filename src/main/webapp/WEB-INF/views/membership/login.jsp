<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>

<style type="text/css">
h1 {
	color: green;
	padding-top:20%;
	text-align: center;
}

p{
color:red;
height:15px;
}
.nb2 {
    font-family: 'Bevan'; font-size: 40px; color: #MediumSeaGreen;
    
             float: none;
            left: 35%;  
           display: block;
       text-align: center;

   /*  display: inline; */
}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">

<h1>  </h1>	
	<div class="nav justify-content-center">
      <a class="nb2" href="${pageContext.request.contextPath}/" style="color: MediumSeaGreen">Care Animals Project</a>
    </div>
    <br>
	

	<form action="./login" method="post" id="frm">
	<div class="form-group">
				<input type="text" class="form-control"
					id="id" name="id" placeholder="아이디" value="${dto.id}">
			</div>
			<div class="form-group">
				<input type="password"
					class="form-control" id="pw" name="pw" placeholder="비밀번호">
			</div>
			<p id="state"></p>
	</form>
			<button type="button" class="btn btn-success btn-block" id="btn">LOGIN</button>
	</div>
	
	<script type="text/javascript" src="../resources/jquery/membershipLogin.js"></script>
</body>
</html>