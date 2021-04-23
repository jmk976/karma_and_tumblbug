<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>notification</h1>
<form action="./profileUpdate" method="post">
  <input type="checkbox" id="message" name="message" value="Bike">
  <label for="message"> 메시지 </label><br>
  <input type="checkbox" id="pjUpdate" name="pjUpdate" value="Car">
  <label for="pjUpdate"> 프로젝트 업데이트 </label><br>
  <input type="checkbox" id="news" name="news" value="Boat">
  <label for="news"> 뉴스레터 </label><br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>