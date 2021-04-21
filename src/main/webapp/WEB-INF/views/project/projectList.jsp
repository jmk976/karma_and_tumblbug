<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
a{
color: black;
}
</style>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
<h1>Project List</h1>
<div class="input-group">
<c:forEach items="${projectList}" var="project">

<div class="card" style="width: 18rem; margin: 1rem;">
  <img src="../resources/images/project/sample/c5.gif" class="card-img-top" alt="kermit">
  <div class="card-body">
    <h5 class="card-title">${project.title}</h5>
    <p class="card-text">${project.summary}</p>
    <div class="input-group">
    <a class="card-text">${project.category}</a>
    <p class="card-text">&nbsp | &nbsp</p>
    <a class="card-text">${project.makerName}</a>
    </div>
    
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>


</c:forEach>
</div>

</div>
</body>
</html>