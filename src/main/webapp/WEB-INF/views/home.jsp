<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	karma and tumblbug
</h1>


<a type="button" href="./payment/paymentList" id="payment">payment</a>
<c:if test="${empty membership}">

<a type="button" href="./membership/login" id="login">login</a>

</c:if>
<h3>${membership.id}</h3>
<h3>${membership.pw}</h3>
<h3>${membership.name}</h3>
<c:if test="${not empty membership}">

<a type="button" href="./membership/login" id="login">logout</a>

</c:if>


<p>${membership.name}</p>




<script type="text/javascript" src="./resources/jquery/main.js"></script>
</body>
</html>
