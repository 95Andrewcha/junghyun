<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>

<style>
#main_box { /*아이디 선택자*/
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 20px;
}

.order_text {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-bottom: 20px;
	font-size: 20px;
}

#main-back {
	padding-top: 20px;
	text-align: center;
}

.cy-section {
	display: flex;
	align-items: center;
}

.cy_header {
	align-items: center;
	flex-direction: column;
	display: flex;
	font-size: 25px;
	text-align: center;
}

.container {
	margin: 0 auto;
}

.write {
	color: #ffffff;
	background: #030303;
	font-size: 1.2em;
	padding: 0.3em 0.5em;
	margin-right: 0.1em;
	float: right;
}
</style>
<%@ include file="../main/header.jsp"%>
</head>
<title>아이디 찾기 창</title>
<body>


	<div class="container">
		<div class="section-title" data-aos="zoom-out">
			<h2>Find Id</h2>
			<p>아이디 찾기</p>
		</div>


		<c:if test="${check == 0 }">

			<div class="cy_header">
				<h4>
					반갑습니다. ${n_Name} 님 !!!
					<p>귀하의 아이디는 ${id} 입니다.</p>
				</h4>
			</div>

		</c:if>

		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<!-- <script>
				opener.document.findform.name.value = "";
				opener.document.findform.phone.value = "";
			</script> -->
			<div class="cy_header">
				<h4>
					일치하신 정보가 없습니다.
					<p>다시 입력해주세요.</p>
				</h4>


				<button onclick="location.href='/member/Find_Id'"
					style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
					아이디 찾기 바로가기</button>
			</div>
		</c:if>
		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<section class="cy-section testimony-section">
			<div class="container">


				<div class="container">
					<div id="main-back">
						<button onclick="location.href='/member/login'"
							style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
							로그인 바로가기</button>
					</div>
				</div>
				<div class="container">
					<div id="main-back">
						<button onclick="location.href='#'"
							style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
							비밀번호 찾기</button>
					</div>
				</div>
			</div>


		</section>
	</div>
</body>

<%@ include file="../main/footer.jsp"%>
</html>
