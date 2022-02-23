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
<title>회원 탈퇴</title>
<body>


	<div class="container">
		<div class="section-title" data-aos="zoom-out">
			<h2>Find Id</h2>
			<p>회원 탈퇴</p>
		</div>


		<c:if test="${check == 0 }">

			<div class="cy_header">
				<h4>
					${nmemberVO.n_Name} 님 !!!
					<p>그 동안 tripactivity를 이용해주셔서 감사합니다.</p>
					 <p>정말로 탈퇴하시겠습니까? 아래의 버튼을 눌러주세요. </p> 
				</h4>
			</div>
			<div class="container">
			
             	
					<div id="main-back">
					<form id="id" >
						<button style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
							회원 탈퇴</button>
					</form>
					</div>
					
					
				</div>
				<div class="container">
					<div id="main-back">
						<button onclick="location.href='/mypage/MypageMain'"
							style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
							마이페이지 이동</button>
					</div>
				</div>
				<form action="/member/n_delete" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="n_Id" name="n_Id" value="${nmemberVO.n_Id}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="n_Pw1">패스워드</label>
					<input class="form-control" type="password" id="n_Pw1" name="n_Pw1" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="userName">성명</label>
					<input class="form-control" type="text" id="n_Name" name="n_Name" value="${nmemberVO.n_Name}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원탈퇴</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>

		</c:if>

		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<!-- <script>
				opener.document.findform.name.value = "";
				opener.document.findform.phone.value = "";
			</script> -->
			<div class="cy_header">
				<h4>
					일치하신 정보가 틀립니다.
					<p>다시 입력해주세요.</p>
				</h4>

		
				<button id="click"onclick="location.href='/member/n_del'"
					style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
					비밀번호 입력 바로가기</button>
			</div>
		</c:if>
		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<section class="cy-section testimony-section">
			<div class="container">


				<div class="container">
					<div id="main-back">
						<button onclick="location.href='/main/main'"
							style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
							메인페이지 바로가기</button>
					</div>
				</div>
			
			</div>


		</section>
	</div>
	<script>
					let click =document.querySelector("#click");
						let id= document.querySelector("#id");
						click.addEventListener("click", function(){
							id.setAttribute('action', "/member/n_delete");
							id.submit();
						})
					</script>
</body>

<%@ include file="../main/footer.jsp"%>
</html>
