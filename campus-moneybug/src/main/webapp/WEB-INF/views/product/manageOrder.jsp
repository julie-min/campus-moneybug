<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>돈벌레 관리자 페이지</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<style>
body {
	background-color: #F9F5E7;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
	flex-direction: column;
}

.manageInsert {
	background-color: white;
	padding: 20px;
	width: 80%;
	margin: 0;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.table-container {
	overflow-x: auto;
}

th, td {
	vertical-align: middle !important;
}
</style>
</head>
<body>
	<div class="text-center">
		<h1 class="bi bi-exclamation-triangle-fill"></h1>
		<h1>Moneybug 쇼핑 주문관리 페이지</h1>
		<br>
	</div>
	<hr>
	<div class="result" id="result"></div>
	<div class="container manageInsert">
		<div class="table-container">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>주문 번호</th>
						<th>주문자 아이디</th>
						<th>주문시간</th>
						<th>주문자 이름</th>
						<th>주소</th>
						<th>사용한 마일리지</th>
						<th>결제 금액</th>
						<th>주문상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${order}" var="order">
						<tr>
							<td>${order.orderId}</td>
							<td>${order.userId}</td>
							<td>${order.orderAt}</td>
							<td>${order.userName}</td>
							<td>${order.address}</td>
							<td>${order.usedPoint}</td>
							<td>${order.payPrice}</td>
							<td>${order.payTool}</td>
							<td>${order.orderStatus}</td>
							<td>
								<form id="statusForm${order.orderId}" method="post"
									action="updateOrderStatus">
									<input type="hidden" name="orderId"
										value="${order.orderId}" /> <select name="newStatus">
										<option value="배송준비"
											${order.orderStatus == '배송준비' ? 'selected' : ''}>배송준비</option>
										<option value="배송중"
											${order.orderStatus == '배송중' ? 'selected' : ''}>배송 중</option>
										<option value="배송완료"
											${order.orderStatus == '배송완료' ? 'selected' : ''}>완료</option>
									</select>
									<button type="submit" class="btn btn-sm btn-primary">변경</button>
								</form>

							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script>
		function submitStatusForm(orderId) {
			var form = document.getElementById(`statusForm${orderId}`);
			form.submit();
		}

		function updateAllOrderStatus(orderId) {
			var forms = document.querySelectorAll('form');
			forms.forEach(function(form) {
				submitStatusForm(orderId);
			});
		}
	</script>

</body>
</html>