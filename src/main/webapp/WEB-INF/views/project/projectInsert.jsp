<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>


<title>Insert title here</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>


<h1>ProjectUplod</h1>

<div class="container">
  <h2>Toggleable Tabs</h2>
  <br>
  <div id="">
  
  </div>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">프로젝트 개요</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">펀딩 및 선물 구성</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">스토리 텔링</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu3">계좌 설정</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
  
    <div id="home" class="container tab-pane active"><br>
      <h3>프로젝트 개요</h3>
      <div class="form-group">
			<label for="title">프로젝트 제목</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">프로젝트 대표 이미지</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">프로젝트 요약</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">프로젝트 카테고리</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">프로젝트 페이지 주소</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">검색용 태그</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
      <h3>창작자 정보</h3>
      <div class="form-group">
			<label for="title">프로필 이미지</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">창작자 이름</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">창작자 소개</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<div class="form-group">
			<label for="title">장작자 활동 지역</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
    </div>
    
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>펀딩 목표 설정</h3>
      <div class="form-group">
			<label for="title">목표 금액</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<h3>펀딩 기간 설정</h3>
      <div class="form-group">
			<label for="title">프로젝트 공개일시</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
      <div class="form-group">
			<label for="title">프로젝트 마감일</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
    <h3>선물 구성</h3>
      <div class="form-group">
			<label for="title">선물 구성</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
    <h3>펀딩 안내</h3>
      <div class="form-group">
			<label for="title">환불 및 교환 정책</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
      <div class="form-group">
			<label for="title">상품 정보 고시</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
      <div class="form-group">
			<label for="title">인증 서류 제출</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
    <h3>프로젝트 소개 영상</h3>
      <div class="form-group">
			<label for="title">프로젝트 소개 영상</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<h3>프로젝트 스토리</h3>
      <div class="form-group">
			<label for="title">프로젝트 스토리</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
    </div>
    
  <div id="menu3" class="container tab-pane fade"><br>
      <h3>이메일 인증</h3>
      <div class="form-group">
			<label for="title">이메일 주소</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<h3>본인 인증</h3>
      <div class="form-group">
			<label for="title">휴대폰 번호</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<h3>입금 계좌</h3>
      <div class="form-group">
			<label for="title">입금 계좌</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>
		<h3>세금 계산서 발행</h3>
      <div class="form-group">
			<label for="title">세금 계산서</label>
			<input type="text" class="form-control" id="title" name="title">
			<p id="titleCheckResult"></p>
		</div>

    </div>
    
  </div>
</div>

<script type="text/javascript" src="../resources/jquery/projectInsert.js"></script>
</body>
</html>