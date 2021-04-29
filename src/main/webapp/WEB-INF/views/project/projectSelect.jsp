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
		<div style="text-align: center;">
			<h4>${selectDTO.category}</h4>
			<h1>${selectDTO.title}</h1>
			<h5>${selectDTO.makerName}</h5>
		</div>
		<div class="card">
			<div class="card-body">
				<div class="input-group">
					<c:forEach items="${selectDTO.mediaFiles}" var="media">
						<c:if test="${media.division eq 'photo'}">
							<img src="../resources/images/project/f/${selectDTO.num}/${media.fileName}">
						</c:if>
					</c:forEach>
					<div>
						<p> 목표 금액 : ${selectDTO.targetAmount}</p>
						<p> 개시 일시 : ${selectDTO.openDate}</p>
						<p> 종료 일시 : ${selectDTO.closeDate}</p>
					</div>
				</div>
			</div>
		</div>
		<div class="input-group">
			<div style="width:80%;">
				<div class="form-group">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#home">스토리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu1">커뮤니티</a></li>
					</ul>
				</div>
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						${selectDTO.projectStory}
					</div>
					<div id="menu1" class="container tab-pane fade"></div>
				</div>
			</div>

			<div style="width:20%; text-align:center;">
				<div class="card">
					<div class="card-body">
						<select>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>