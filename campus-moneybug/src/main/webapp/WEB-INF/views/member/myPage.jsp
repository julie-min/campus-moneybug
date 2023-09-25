<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/layout/header.jsp"/>
<style>
body {
	background: #F9F5E7;
}

.page-container {
	margin: 50px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	display: flex;
}

.info-container {
	padding: 40px;
	justify-content: center;
	box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
	background-color: white;
	border-radius: 20px;
}

.card-body {
	padding-left: 250px;
	padding-right: 250px;
}

form {
	display: flex;
	flex-direction: column;
}

.nick-container {
	padding: 50px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.btn-custom {
	margin-top: 20px;
	width: 50%;
	align-self: center;
}

.modal {
  display: none; 
  position: fixed; 
  top: 50%; 
  left: 50%;
  transform: translate(-50%, -50%); 
  z-index: 1000; 
}

.money {
    text-align: right; 
}

</style>
</head>
<body>
	<div class="page-container">

		<div class="info-container">
			<div class="card">
				<div class="memberinfo">
					<h1 class="text-center">MyPage</h1>
					<div class="card-header text-center">
						닉네임만 수정하실 수 있습니다.<br /> 닉네임은 최초 가입시 반드시 입력해야합니다.<br />
					</div>
						<div class="card-body">
							<div class="form-group">
								<label for="email">회원가입 이메일:</label> <input type="email"
									id="email" name="email" readonly class="form-control"
									value="${email}" />
							</div>
							<div class="form-group">
								<label for="userName">회원 이름:</label> <input type="text"
									id="userName" name="userName" readonly class="form-control"
									value="${userName}" />
							</div>
							<div class="form-group">
								<label for="userLevel">회원 등급:</label> <input type="text"
									id="userLevel" name="userLevel" readonly class="form-control"
									value="${userLevel}" />
							</div>
							<div class="form-group">
								<label for="point">나의 포인트:</label> <input type="text" id="point"
									name="point" readonly class="form-control" value="${point}" />
							</div>

							<form action="myInfoUpdate.do" method="post">
								<label for="oldNickname">기존 닉네임: (신규일경우, 아래에 새로 등록해주세요.)</label> <input
									type="text" readonly class="form-control" value="${userNickname}" />
								<label for="newNickname">새로운 닉네임:</label> <input type="text"
									id="newNickname" name="userNickname" required
									class="form-control" />

								<button type="button" id="checkIdButton"
									class="btn btn-custom btn-secondary btn-lg">중복확인하기</button>
								<button type="submit" id="updateButton"
									class="btn btn-custom btn-outline-secondary btn-lg">등록하기</button>
							</form>
						</div>
					<hr>
						<div class="form-group">
							<label for="orderlist">나의 주문이력</label>
							<table class="table">
								<thead>
									<tr>
										<th>주문번호</th>
										<th>주문일시</th>
										<th>주문자 이름</th>
										<th>주소</th>
										<th>전화번호</th>
										<th>사용 마일리지</th>
										<th>결제금액</th>
										<th>결제수단</th>
										<th>주문상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orderlist}" var="order">
										<tr>
											<td><a class="order-details-link" data-orderid="${order.orderId}">${order.orderId}</a></td>
											<td>${order.orderAt}</td>
											<td>${order.userName}</td>
											<td>${order.address}</td>
											<td>${order.tel}</td>
											<td class="money">
											<fmt:formatNumber type="number" value="${order.usedPoint}" pattern="#,###"/>원
											</td>
											<td class="money">
											<fmt:formatNumber type="number" value="${order.payPrice}" pattern="#,###"/>원
											</td>
											<td>${order.payTool}</td>
											<td>${order.orderStatus}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
					
				</div>
			</div>
		</div>
	</div>

	<div class="modal" id="orderDetailsModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">주문번호
					<%=request.getParameter("orderId") %>
					
					<%-- <c:out value="${orderlist.orderId}" default="default"/> --%>
					상세내역</h5>
					<button type="button" class="btn-close-modal btn-close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body" id="orderDetails">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger btn-close-modal"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<script>
		$(document).ready(function() {
			$("#updateButton").prop("disabled", true);

			$("#checkIdButton").click(function() {
				var newNickname = $("#newNickname").val();
				var idExist = false;

				$.ajax({
					type : "POST",
					url : "checkNickname.do", // 닉네임 중복확인을 처리할 서버 경로로 변경해야 합니다.
					data : {
						userNickname : newNickname
					},
					success : function(response) {
						if (response === "available") {
							$("#updateButton").prop("disabled", false);
							alert("사용 가능한 닉네임입니다.");
						} else {
							alert("이미 사용 중인 닉네임입니다.");
							$("#updateButton").prop("disabled", true);
						}
					}
				});
			});
		});

		// 주문번호 클릭시 모달창
		$(document).ready(function() {
			$(".order-details-link").click(function(e) {
				e.preventDefault();
				let orderId = $(this).data("orderid");
				$.ajax({
					type : "GET",
					url : "getOrderDetails",
					data : {
						orderId : orderId
					}, // 데이터 전달 방식 수정
					success : function(data) {
						console.log(data);
						$("#orderDetails").html(data);
						$('#orderDetailsModal').show();
						$(".modal-title").text("주문번호 " + orderId + " 상세내역");
					}
				});
			});

			$(".btn-close-modal").click(function() {
				$('#orderDetailsModal').hide();
			});
		});
	</script>
<jsp:include page="/layout/footer.jsp"/>