<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
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
</style>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">
	<h3>프로젝트 점검</h3>
		<div style="text-align: center;">
			<h4>${selectDTO.category}</h4>
			<h2>${selectDTO.title}</h2>
			<h5>${selectDTO.makerName}</h5>
			<h4 style="color: red;">${selectDTO.state}</h4>
		</div>
		<div class="card">
			<div class="card-body">
				<div class="input-group">
					<c:forEach items="${selectDTO.mediaFiles}" var="media">
						<c:if test="${media.division eq 'photo'}">
							<img
								src="../resources/images/project/f/${selectDTO.num}/${media.fileName}">
						</c:if>
					</c:forEach>
					<div>
						<p>목표 금액 : ${selectDTO.targetAmount}</p>
						<p>개시 일시 : ${selectDTO.openDate}</p>
						<p>종료 일시 : ${selectDTO.closeDate}</p>
						<c:if test="${selectDTO.state eq 'submit'}"></c:if>
						<div class="btn-group">
							<a type="button" class="btn btn-outline-secondary"
								href="./projectAdminUpdate?num=${selectDTO.num}&state='denied'"
								id="denied">거절</a> <a type="button"
								class="btn btn-outline-primary"
								href="./projectAdminUpdate?num=${selectDTO.num}&state='accept'">허용</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
				<div class="form-group">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#home">프로젝트 개요</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu1">펀딩 목표</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu2">프로젝트 스토리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#menu3">작성자 추가 정보</a></li>
					</ul>
				</div>
				
				<form action="./projectUpdate" method="post" id="frm"
					enctype="multipart/form-data">

					<div class="tab-content">
						<div id="home" class="container tab-pane active">
							<br>
							<h4>프로젝트 개요</h4>
							<input type="hidden" id="state" name="state" value=""> <input
								type="hidden" name="id" value="${selectDTO.id}"> <input
								type="hidden" id="projectNum" name="num"
								value="${selectDTO.num}"> <input type="hidden"
								id="search_id" name="search_id" value="${selectDTO.search_id}">
							<input type="hidden" name="media_id"
								value="${selectDTO.media_id}">
							<div class="form-group">
								<label>프로젝트 제목</label> <input readonly="readonly" type="text"
									class="form-control" id="title" name="title"
									value="${selectDTO.title}">
							</div>

							<div class="form-group">
								<label>프로젝트 대표 이미지</label>
								<div>
									<c:forEach items="${selectDTO.mediaFiles}" var="media">
										<c:if test="${media.division eq 'photo'}">
											<img id="nullCheck"
												src="../resources/images/project/f/${selectDTO.num}/${media.fileName}">
											<button type="button" style="display: none;"
												class="btn btn-outline-secondary btn-block fileDelete"
												id="fileNum" title="${media.fileNum}">대표이미지 교체</button>
										</c:if>
									</c:forEach>
								</div>
								<div id="upload" title="0"></div>
								<input type="button" value="대표 이미지 추가"
									class="btn btn-outline-danger" id="add" style="display: none;">


							</div>
							<div class="form-group">
								<label>프로젝트 요약</label> <br>
								<textarea style="resize: none;" class="form-control" rows="5"
									id="summary" name="summary">${selectDTO.summary}</textarea>
							</div>
							<div class="form-group">
								<label for="title">프로젝트 카테고리</label> <input type="text"
									readonly="readonly" class="form-control" id="category"
									name="category" value="${selectDTO.category}">
							</div>
							<div class="form-group">
								<label>검색용 태그</label>
								<div id="addSearchTag">
								<div class="input-group">
									<c:forEach items="${selectDTO.searchList}" var="search">
										${search.searchTag}&nbsp&nbsp
									</c:forEach>
									</div>
								</div>
							</div>
							<h4>창작자 정보</h4>

							<div class="form-group">
								<label>창작자 이름</label> <input readonly="readonly" type="text"
									class="form-control" id="makerName" name="makerName"
									value="${selectDTO.makerName}">
							</div>
							<div class="form-group">
								<label>창작자 소개</label> <br>
								${selectDTO.makerSummary}

							</div>
							<div class="form-group">
								<label>장작자 활동 지역</label> <input readonly="readonly" type="text"
									class="form-control" id="makerLocation" name="makerLocation"
									value="${selectDTO.makerLocation}">
							</div>

						</div>





						<div id="menu1" class="container tab-pane fade">
							<br>
							<h3>펀딩 목표 설정</h3>
							<div class="form-group">
								<label for="title">목표 금액</label> <input readonly="readonly"
									type="number" step="10000" class="form-control"
									id="targetAmount" name="targetAmount"
									value="${selectDTO.targetAmount}">
							</div>
							<h3>펀딩 기간 설정</h3>
							<div class="form-group">
								<label>프로젝트 공개일시</label> <input readonly="readonly" type="text"
									class="form-control" id="openDate" name="openDate"
									value="${selectDTO.openDate}">
							</div>
							<div class="form-group">
								<label>프로젝트 마감일</label> <input readonly="readonly" type="text"
									class="form-control" id="closeDate" name="closeDate"
									value="${selectDTO.closeDate}">
							</div>

						</div>


						<div id="menu2" class="container tab-pane fade">
							<h4>프로젝트 스토리</h4>
							<div class="form-group">
								<label for="title">프로젝트 스토리</label> <br>
								${selectDTO.projectStory}

							</div>
						</div>


						<div id="menu3" class="container tab-pane fade">
							<br>
							<h4>본인 인증</h4>
							<div class="form-group">
								<label for="title">휴대폰 번호</label> <input readonly="readonly"
									type="text" class="form-control" id="phone" name="phone"
									value="${selectDTO.phone}">
							</div>
							<h4>입금 계좌</h4>
							<div class="form-group">
								<label for="title">입금 계좌</label> <input readonly="readonly"
									type="text" class="form-control" id="bankAccount"
									name="bankAccount" value="${selectDTO.bankAccount}">
							</div>

						</div>
					</div>
				</form>
			</div>


	
</body>
</html>