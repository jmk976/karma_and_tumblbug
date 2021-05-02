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
body {
	font-family: 'Trebuchet MS', serif;
	line-height: 1.6
}

.container {
	width: 500px;
	margin: 0 auto;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
}
</style>
</head>
<body>
	<c:import url="../template/header.jsp"></c:import>
	<div class="container">

		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">프로필</li>
			<li class="tab-link" data-tab="tab-2">계정</li>
			<li class="tab-link" data-tab="tab-3">결제수단</li>
			<li class="tab-link" data-tab="tab-4">배송지</li>
		</ul>

		<div id="tab-1" class="tab-content current">
			<jsp:include page="profileset2.jsp" />
		</div>
		<div id="tab-2" class="tab-content">
			<jsp:include page="profilesetA.jsp" />
		</div>
		<div id="tab-3" class="tab-content">
			<jsp:include page="/WEB-INF/views/payment/paymentList.jsp" />
		</div>
		<div id="tab-4" class="tab-content">
			<jsp:include page="/WEB-INF/views/shipping/shippingList.jsp" />
		</div>

	</div>

	<script type="text/javascript">
				$(document).ready(function() {

					$('ul.tabs li').click(function() {
						var tab_id = $(this).attr('data-tab');

						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');

						$(this).addClass('current');
						$("#" + tab_id).addClass('current');
					})

				})
	</script>
</body>
</html>