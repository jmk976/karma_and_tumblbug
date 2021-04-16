<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>Insert title here</title>

<style type="text/css">
h1 {
	color: green;
}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
	<h1>log-in</h1>

	<form action="./login" method="post">
		<table>
			<thead></thead>
			<tbody>

				<tr>
					<td>id</td>
					<td><input type="text" name="id"></td>
				</tr>

				<tr>
					<td>password</td>
					<td><input type="password" name="pw"></td>
				</tr>
	<h1>LOGIN</h1>

			</tbody>
		</table>
		<button>login</button>
	</form>
</body>
</html>