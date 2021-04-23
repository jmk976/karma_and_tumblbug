<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>profile</h1>
<h5>사진</h5>
<h5>닉네임=membership.name, url=randomAlphaWord(12), 소개, 웹사이트, 프라이버시</h5>

<h5>url = profileHome</h5>
	<h3> 이름 : ${profile.nickname} </h3>
	<h3> 사용자 이름(URL) : ${profile.urlname} </h3>
	<h3> 소개 : ${profile.intro}</h3>
	<h3> 웹사이트 : ${profile.web}</h3>
	<h3> 프라이버시 : ${profile.privacy}</h3>
	

</body>
</html>