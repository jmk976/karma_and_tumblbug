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
.container {
	padding-top:30px;
  	padding-bottom:30px;
	text-align: center;
}



</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h3>profile update</h3>
	
	<form action="./updateProfile" method="post" id="frm" class="container">
			<div class="form-group">
				<label for="nickname">이름</label> <input type="text"
					class="form-control myCheck" id="nickname" name="nickname"
					value="${dto.nickname}">
			</div>
			<div class="form-group">
				<label for="intro">소개</label> <input type="text"
					class="form-control myCheck" id="intro" name="intro"
					value="${dto.intro}">
			</div>
			<div class="form-group">
				<label for="web">웹사이트</label> <input type="text"
					class="form-control myCheck" id="web" name="web" value="${dto.web}"
					>
			</div>

			<div class="form-group">
				<input type="hidden" id="id" name="id" value="${dto.id}">
			</div>
			
			<button type="submit" class="btn btn-primary">Update</button>
	 </form>	
</body>
</html>