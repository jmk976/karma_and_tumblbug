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
${dto.status}, ${dto.sn},${dto.zoneSn}, ${dto.resDate}, ${dto.province}, ${dto.city}, ${dto.location}, 
		${dto.species}, ${dto.kind}, ${dto.sex}, ${dto.age}, ${dto.color}, ${dto.desex}, ${dto.character}, ${dto.weight}, ${dto.health}, ${dto.feature}, 
		

</div>

</body>
</html>