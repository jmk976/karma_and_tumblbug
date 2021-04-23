<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>profile Home</h1>
	<h3>  ${profile.nickname} </h3>
	<h3> 소개 : ${profile.intro}</h3>
	<h3> 밀어준 프로젝트 </h3>
	<h3><img alt="" src="../resources/upload/profile/${profile.ProfilePicDTO.fileName}"> </h3> 
													<!-- ㄴmemberDTO -->
	<a href="./profile">톱니 이모티콘</a>


</body>
</html>