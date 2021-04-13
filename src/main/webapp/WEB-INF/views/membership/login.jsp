<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h1 {
	color: green;
}
</style>
</head>
<body>
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

			</tbody>
		</table>
		<button>login</button>
	</form>
</body>
</html>