<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/layout/header.jsp"%>


<style>

body {
	background: #F9F5E7;
}

.banner-text {
margin-top: 35px;
margin-bottom: 40px;
}

.banner-container {
	height: 250px;
	background-color: #6cc3d5;
	background-position: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.banner-text h1 {
	color: white;
	font-size: 60px;
}

.banner-text {
	color: white;
	font-size: 22px;
	text-align: center;
}

/* 글 쓰기 페이지 스타일 추가 */
#form {
	height: 100%;
	border: 2px solid #56CC9D; /* 테두리 색상과 두께 설정 */
	border-radius: 20px; /* 모서리 둥글게 만듦 */
	margin: 10px 70px 55px 70px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center; /* 텍스트 가운데 정렬 */
	background-color: white;
}

#boardType {
	width: 150px;
	height: 30px;
	margin-top: 40px;
	margin-left: 18px;
	font-size: 17px;
	border: none; /* 기본 테두리 제거 */
	text-align: center; /* 가운데 정렬을 위한 속성 */
}

#title {
	border: none; /* 기본 테두리 제거 */
	border-bottom: 2px solid #F3969A; /* 밑줄 스타일 적용 */
	outline: none; /* 포커스시 테두리 제거 */
	padding: 15px; /* 내부 여백 추가 */
	width: 900px;
	text-align: center; /* 가운데 정렬을 위한 속성 */
	margin-bottom: 70px;
}

#content {
	height: 500px;
	background-color: #fffdf5;
	border: none; /* 테두리 없애기 */
	border-radius: 20px;
	outline: none;
	width: 1100px;
	display: flex; /* 텍스트를 수직 및 수평으로 가운데 정렬하기 위해 flexbox 사용 */
	flex-direction: column;
	align-items: center; /* 수평 가운데 정렬 */
	text-align: center;
	font-size: 23px;
	padding-top: 40px;
}

.uploadfileform {
	margin-top: 10px;
}

#update, #cancel {
	margin-top: 10px;
	padding: 5px 15px;
	cursor: pointer;
}

#cancel {
	margin-left: 10px;
}

.banner-text {
	margin-top: 35px;
	margin-bottom: 40px;
}
</style>
<div class="banner-container" align="center">
	<div class="banner-text">
		<br> <a class="nav-link"
			href="/moneybug/tagBoard/TagBoard_list?page=1">
			<h1>MoneyBug Community</h1></a>
		<p>나만의 이야기를 수정하고 있어요!</p>
	</div>
</div>
<br>

<form action="TagBoard_update" id="form" name="tagboardupdate" method="post" 
	 onsubmit="return validateForm();">
	<input name="seq" value="${param.seq}" type="hidden">




	<div>

		<select id="boardType" name="boardType">
			<option value="공과금"
				<c:if test="${param.boardType == '공과금'}">selected</c:if>>공과금</option>
			<option value="교통"
				<c:if test="${param.boardType == '교통'}">selected</c:if>>교통</option>
			<option value="데이트"
				<c:if test="${param.boardType == '데이트'}">selected</c:if>>데이트</option>
			<option value="생활꿀팁"
				<c:if test="${param.boardType == '생활꿀팁'}">selected</c:if>>생활꿀팁</option>
			<option value="식비"
				<c:if test="${param.boardType == '식비'}">selected</c:if>>식비</option>
			<option value="일상"
				<c:if test="${param.boardType == '일상'}">selected</c:if>>일상</option>
			<option value="플렉스"
				<c:if test="${param.boardType == '플렉스'}">selected</c:if>>플렉스</option>
		</select>
	</div>
	<br>
	<div>
		<input id="title" name="title" type="text" value="${param.title}"
			style="font-size: 25px;">
	</div>

	<div>
		<textarea id="content" name="content" rows="6"
			style="font-size: 23px;">${param.content}</textarea>
	</div>
<br>

	<div>

		<button id="update" class="btn btn-info">수정</button>
		<button id="cancel" class="btn btn-danger">취소</button>

	</div>
	<br>
	<br>
	<br>

</form>

<%@ include file="/layout/footer.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {

		var selectedBoardType = "${tagBoardDTO.boardType}";

		$("#boardType option").each(function() {
			if ($(this).val() === selectedBoardType) {
				$(this).prop("selected", true);
			}
		});
	});


	$('#cancel').click(function() {
		location.href = "TagBoard_one?seq=${param.seq}";
		return false;
	});

	$('#update').click(function() {
		var selectedValue1 = document.getElementById("boardType").value;
	    var selectedValue2 = document.getElementById("title").value;
	    var selectedValue3 = document.getElementById("content").value;
	    var maxLength = 20; // 최대 길이를 100으로 변경 (원하는 길이로 설정)
	    
	    if (selectedValue1 === "") {
	        alert("말머리를 선택하세요.");
	        return false; // 폼 제출 막기
	    }
	    
	    if (selectedValue2 === "") {
	        alert("제목을 입력하세요.");
	        return false; // 폼 제출 막기
	    }
	    
	    if (selectedValue3 === "") {
	        alert("내용을 입력하세요.");
	        return false; // 폼 제출 막기
	    }
	    
	    if (selectedValue2.length > maxLength) {
	        alert("제목은 " + maxLength + "자까지 입력 가능합니다!");
	        return false; // 폼 제출 막기
	    }
	    
	    return true; // 폼 제출 허용
	});
	
	$(document).ready(function() {
	    // 서버로부터 로그인 상태 값을 확인하여 처리
	    $.ajax({
	        url: "../checkLogin",
	        method: "GET",
	        success: function(response) {
	            let loginStatus = parseInt(response);
	            if (loginStatus !== 1) {
	                location.href = "/moneybug/login.jsp"; // 실제 로그인 페이지 URL로 변경
	            } else {
	                 if ("${userNickname}" !== "${param.writerId}") {
	                    location.href = "TagBoard_one?seq=${param.seq}";
	                } //else
	            }//else
	        },//success
	   		error : function() {
				alert("실패!")
			} //error
	    }); //ajax
	});//$
</script>
