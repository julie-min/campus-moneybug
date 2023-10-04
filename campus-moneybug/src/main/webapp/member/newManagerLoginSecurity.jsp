<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 로그인페이지</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
<style>
	body {
		margin: 0;
		background: #F9F5E7;
		display: flex;
	}
	
	.container {
		width: 100vw;
		height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	
	.form-signin {
		width: 300px;
		margin: auto;
	}
</style>
<script type="text/javascript">
    <c:if test="${not empty managerResultMessage}">
        alert("${managerResultMessage}");
    </c:if>
</script>


</head>
<body>

<div class="container">
<div class="form-signin">
    <img class="mb-2" src="${s3}/resources/img/nav_icon.png" alt="nav_icon" width="70" height="70">
    <h1 class="h3 mb-3 fw-normal">Manager Login</h1>
    <p>관리자만 접속이 가능합니다.</p>
    
  	<div>
	<form action="ManagerLogin" method="POST">
		아이디: <input type="text" name="managerId"><br> 
		패스워드: <input type="text" name="managerPassword"><br> 
		<button class="btn btn-secondary w-100 py-2" type="submit">관리자 로그인</button>
	</form>
	</div>
	<br>
  	<div>
  	<form action="newManagerInsert" method="POST">
		아이디: <input type="text" name="managerId"><br> 
		패스워드: <input type="text" name="managerPassword"><br> 
		이름: <input type="text" name="managerName"><br> 
		<button class="btn btn-primary w-100 py-2" type="submit">관리자 등록</button>
	</form>
	</div>
	<hr>
</div>
</div>	


</body>
</html>