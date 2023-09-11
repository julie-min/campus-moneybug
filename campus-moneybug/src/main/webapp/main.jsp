<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
application.setAttribute("s3", "https://moneybugbucket.s3.ap-northeast-2.amazonaws.com");
%>
<%@ include file="layout/header.jsp" %>

<style>
html, body {
	height: 100%;
}

body {
	background: #F9F5E7;
	display: flex;
	flex-direction: column;
	flex: 1;
	margin: 0;
	
}


.container {
	margin-top: 50px;
	padding-bottom: 10px;
}
.row{
	display:flex;
	justify-content: center;
	}

.main-category {
	padding: 10px 0px;
	margin: 10px 10px 0px 20px;
	text-align: center;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	width:30%;
}

.main-img {
	width: 120px;
	height: auto;
	magin-bottom: 20px;
}

.main-category p {
	padding:0px 80px;
	text-align: center;
	margin-top: 10px;
}

.main-category h2 {
	margin-top: 10px;
}

.featureimg {
  position: relative;
  width: 500px;
  height: 500px;
}

.img-crop {
  background-size: cover;
  background-position: center;
  width: 100%;
  height: 100%;
}
</style>


</head>
<body>


	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${s3}/resources/img/main_1.png" class="bd-placeholder-img"
					width="100%" height="100%" preserveAspectRatio="xMidYMid slice"
					focusable="false" role="img">
			</div>
			<div class="carousel-item">
				<img src="${s3}/resources/img/main_2.png" class="bd-placeholder-img"
					width="100%" height="100%" preserveAspectRatio="xMidYMid slice"
					focusable="false" role="img">
			</div>
			<div class="carousel-item">
				<img src="${s3}/resources/img/main_3.png" class="bd-placeholder-img"
					width="100%" height="100%" preserveAspectRatio="xMidYMid slice"
					focusable="false" role="img">
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#myCarousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>



	<div class="container">
		<div class="row">
			<div class="main-category">
				<img class="main-img" src="${s3}/resources/img/accounts.png" alt="Image" width="140" height="140">
				<h2>Account Book</h2>
				<p>가계부를 사용하여 <br> 수입과 지출을 관리하세요.</p>
				<a type="button" class="btn btn-success" href="accountBook/accountDetail_List.jsp" role="button">가계부</a>
			</div>

			<div class="main-category col-lg-4 text-center-margin">
				<img class="main-img" src="${s3}/resources/img/shop.png" alt="Image">
				<h2>Event Shop</h2>
				<p>이벤트샵에서 제휴 할인 상품과 무료 체험의 기회를 드립니다.</p>
				<a class="btn btn-success" href="product/shoplist?page=1" role="button">굿즈샵</a>
			</div>
			
			<div class="main-category col-lg-4 text-center-margin">
				<img class="main-img" src="${s3}/resources/img/comm.png" alt="Image">
				<h2>Community</h2>
				<p>소비내역을 공유하고 <br> 예산을 함께 공유해보세요.</p>
				<a class="btn btn-success" href="tagBoard/TagBoard_list?page=1" role="button">커뮤니티</a>
			</div>
			
			

		</div>
	</div>



		
<!-- footer.jsp를 포함시킴 -->
<%@ include file="/layout/accountAside.jsp"%>
<%@ include file="layout/footer.jsp" %>
