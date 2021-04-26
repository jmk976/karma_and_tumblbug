<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<h3>profile update</h3>
	<form action="./updateProfile" method="post" id="frm">
			<div class="form-group">
				<label for="nickname">이름</label> <input type="text"
					class="form-control" id="nickname" name="nickname"
					value="${dto.nickname}">
			</div>
			<div class="form-group">
				<label for="urlname">사용자 이름(URL)</label> <input type="text"
					class="form-control" id="urlname" name="urlname"
					value="${dto.urlname}" >
			</div>
			<div class="form-group">
				<label for="intro">소개</label> <input type="text"
					class="form-control" id="intro" name="intro"
					value="${dto.intro}">
			</div>
			<div class="form-group">
				<label for="web">웹사이트</label> <input type="text"
					class="form-control" id="web" name="web" value="${dto.web}"
					>
			</div>
			<div class="form-group">
				<label for="privacy">프라이버시</label> <input type="text"
					class="form-control" id="privacy" name="privacy"
					value="${dto.privacy}" >
					
			<a type="button" class="btn btn-primary" id="btn">UPDATE</a>
			</div>

			
		
	 </form>	
</body>
</html>