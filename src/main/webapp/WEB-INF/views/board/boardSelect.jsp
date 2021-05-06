<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">

<h1>${dto.id}Select</h1>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th>NO</th>
				<th>TITLE</th>
				<th>WRITER</th>
				<th>DATE</th>
				<th>HIT</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${dto.num}</td>
				<td>${dto.title}</td>
				<td>${dto.writer}</td>
				<td>${dto.regDate}</td>
				<td>${dto.hit}</td>
			</tr>
			<tr>
				<td colspan="5" align="center">${dto.contents}</td>
			</tr>

			
		</tbody>


	</table>
	
	<!-- 댓글 -->
	<div id="comments" title="${dto.num}"></div>
		
		<div>
			<div class="form-group">
 				<label for="usr">Name:</label>
				<input type="text" class="form-control" id="writer">
			</div>
		
			<div class="form-group">
  				<label for="comment">Comment:</label>
  				<textarea class="form-control" rows="5" id="contents"></textarea>
			</div>
			
			<button type="button" class="btn btn-success" id="write">Success</button>
		</div>
	



	<!--  버튼  -->

	<c:if test="${not empty membership and membership.id eq dto.id}">
		<a href="./boardDelete?boardSort=${dto.boardSort}&num=${dto.num}" type="button" class="btn btn-outline-danger" id="del">
			DELETE </a>
		<a href="./boardUpdate?num=${dto.num}" type="button"
			class="btn btn-outline-success">UPDATE</a>

	</c:if>
	
	
	<script type="text/javascript" src="../resources/jquery/comments.js"></script>
	


	
</div>
</body>
</html>