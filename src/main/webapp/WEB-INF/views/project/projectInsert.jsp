<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<style type="text/css">
#sample {
	display: none;
}

#searchSample {
	display: none;
}
</style>

<title>PROJECT UPLOAD</title>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">


		<h1>ProjectUplod</h1>

		<br>
		<!-- Nav tabs -->
		<div class="form-group">
			<ul class="nav nav-tabs" role="tablist">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">프로젝트 개요</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu1">펀딩 및 선물 구성</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu2">스토리 텔링</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#menu3">계좌 설정</a></li>
				<li>
					<div class="btn-group">
						<button type="button" class="btn btn-outline-secondary"
							id="tempSave">임시저장</button>
						<button type="button" class="btn btn-outline-primary" id="submit">제출</button>
					</div>
				</li>
				<li><a type="button" class="btn btn-outline-primary"
					id="finalCheck">finalCheck</a></li>
				<li><a type="button" class="btn btn-outline-primary"
					id="valCheck">console</a></li>
				<li><a type="button" class="btn btn-outline-primary"
					id="summerCheck">summer</a></li>
			</ul>
		</div>
		<!-- Tab panes -->
		<form action="./projectUpdate" method="post" id="frm"
			enctype="multipart/form-data">


			<div class="tab-content">
				<div id="home" class="container tab-pane active">
					<br>
					<h3>프로젝트 개요</h3>
					<input type="hidden" id="state" name="state" value=""> <input
						type="hidden" name="id" value="${projectDTO.id}"> <input
						type="hidden" id="projectNum" name="num" value="${projectDTO.num}">
					<input type="hidden" id="search_id" name="search_id"
						value="${projectDTO.search_id}"> <input type="hidden"
						name="media_id" value="${projectDTO.media_id}">
					<div class="form-group">
						<label>프로젝트 제목</label> <input type="text" class="form-control"
							id="title" name="title" value="${projectDTO.title}">
					</div>

					<div class="form-group">
						<label>프로젝트 대표 이미지</label>
						<div>
							<c:forEach items="${projectDTO.mediaFiles}" var="media">
								<c:if test="${media.division eq 'photo'}">
									<img id="nullCheck"
										src="../resources/images/project/f/${projectDTO.num}/${media.fileName}">
									<button type="button"
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
							id="summary" name="summary">${projectDTO.summary}</textarea>
					</div>
					<div class="form-group">
						<label for="title">프로젝트 카테고리</label> <select class="form-control"
							id="category" name="category" title="${projectDTO.category}">
							<option>카테고리 선택</option>
							<option>a</option>
							<option>b</option>
							<option>c</option>
							<option>d</option>
							<option>e</option>
						</select>
					</div>
					<div class="form-group">
						<label>검색용 태그</label>
						<div>
							<input type="button" value="add" class="btn btn-outline-danger"
								id="addSearch">
						</div>
						<div>
							<c:forEach items="${projectDTO.searchList}" var="search">
								<span> <span>${search.searchTag}</span><span
									class="tagDelete" title="${search.searchNum}"
									style="color: red;">X&nbsp&nbsp</span>
								</span>
							</c:forEach>
						</div>
						<div id="addSearchTag" title="${projectDTO.searchList.size()}"></div>
					</div>
					<h3>창작자 정보</h3>

					<div class="form-group">
						<label>창작자 이름</label> <input type="text" class="form-control"
							id="makerName" name="makerName" value="${projectDTO.makerName}">
					</div>
					<div class="form-group">
						<label>창작자 소개</label> <br>
						<textarea name="makerSummary" style="resize: none;"
							id="makerSummary" class="myCheck">${projectDTO.makerSummary}</textarea>

					</div>
					<div class="form-group">
						<label>장작자 활동 지역</label> <select class="form-control"
							id="makerLocation" name="makerLocation" title="${projectDTO.makerLocation}">
							<option value="default">활동 지역을 선택해 주세요</option>
							<option>서울특별시</option>
							<option>인천광역시</option>
							<option>대전광역시</option>
							<option>대구광역시</option>
							<option>울산광역시</option>
							<option>부산광역시</option>
							<option>광주광역시</option>
							<option>세종특별자치시</option>
							<option>경기도</option>
							<option>강원도</option>
							<option>충청북도</option>
							<option>충청남도</option>
							<option>경상북도</option>
							<option>경상남도</option>
							<option>전라북도</option>
							<option>전라남도</option>
							<option>제주특별자치도</option>
						</select>
					</div>

				</div>





				<div id="menu1" class="container tab-pane fade">
					<br>
					<h3>펀딩 목표 설정</h3>
					<div class="form-group">
						<label for="title">목표 금액</label> <input type="number"
							min="1000000" step="100000" class="form-control"
							id="targetAmount" name="targetAmount"
							value="${projectDTO.targetAmount}">
					</div>
					<h3>펀딩 기간 설정</h3>
					<div class="form-group">
						<label>프로젝트 공개일시</label> <input type="date" class="form-control"
							id="openDate" name="openDate" value="${projectDTO.openDate}">
					</div>
					<div class="form-group">
						<label>프로젝트 마감일</label> <input type="date" class="form-control"
							id="closeDate" name="closeDate" value="${projectDTO.closeDate}">
					</div>

				</div>


				<div id="menu2" class="container tab-pane fade">
					<h3>프로젝트 스토리</h3>
					<div class="form-group">
						<label for="title">프로젝트 스토리</label> <br>
						<textarea name="projectStory" style="resize: none;"
							id="projectStory" class="myCheck">${projectDTO.projectStory}</textarea>

					</div>
				</div>


				<div id="menu3" class="container tab-pane fade">
					<br>
					<h3>본인 인증</h3>
					<div class="form-group">
						<label for="title">휴대폰 번호</label> <input type="text"
							class="form-control" id="phone" name="phone"
							value="${projectDTO.phone}">
					</div>
					<h3>입금 계좌</h3>
					<div class="form-group">
						<label for="title">입금 계좌</label>
						<div class="input-group mt-3 mb-3">
							<div class="input-group-prepend">
								<select class="form-control" name="bankAccount" id="bankName" title="${projectDTO.bankAccount}">
									<option value="default">은행명</option>
									<option>국민은행</option>
									<option>우리은행</option>
									<option>신한은행</option>
									<option>농협</option>
								</select> 
								<p id="bankNameResult"></p>
							</div>
							<div class="form-group">
								<input type="text"
									class="form-control" id="bankAccount" name="bankAccount"
									placeholder="공백, -없이 입력해주세요." maxlength="20"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
								<p id="bankAccountResult"></p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</form>
	</div>
	<div id="sample">
		<div class="custom-file">
			<input type="file" id="inputGroupFile04" id="thumbNail"
				class="form-control-file border" name="files">
		</div>
		<p>jpeg, png, jpg파일만 가능합니다.</p>

	</div>
	<div id="searchSample">
		<div class="input-group mb-3">
			<input type="text" class="form-control" placeholder="검색어"
				name="searchTag">
			<div class="input-group-append del">
				<input class="btn btn-danger" type="button" value="삭제">
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="../resources/jquery/projectInsert.js"></script>
	<script type="text/javascript" src="../resources/jquery/summerFile.js"></script>
</body>
</html>