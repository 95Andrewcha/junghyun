<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href="/resources/css/member/find_id.css">
<style>
ul {
	padding: 0 !important;
}

.cy_name {
	margin: 0 auto;
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20;
	width: 45%;
	
	border: 1px solid skyblue;
	padding: 20px;
	height: 330px;
}
</style>

<%@ include file="../main/header.jsp"%>
</head>
<body>
	<section>
		<div class="container">
			<div class="section-title" data-aos="zoom-out">
				<h2>Find Id</h2>
				<p>아이디 찾기</p>
			</div>

			<div style="text-align: center;">
				<h4>
					반갑습니다. TripActivity 입니다. 아이디 찾기입니다.
					<p>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 아이디를 찾을 수 있습니다.</p>
				</h4>
			</div>

<form action="/member/find_id.do" method="post">
			<div class=cy_name>

				<div>
					<div style="text-align: left">
						<a style="color: red; padding-right: 5px; white-space: nowrap;">*</a>이름
					</div>
					<div colspan="3" class="user_name" style="padding-top: 5px;">
						<input type="text" name="n_Name" size="30" 
							placeholder="이름을 입력하시오.">
					</div>
				</div>
				<div>
					<div style="text-align: left">
						<a style="color: red; padding-right: 5px; white-space: nowrap;">*</a>휴대폰
						번호
					</div>
					<div colspan="3" class="user_name" style="padding-top: 5px;">
						<input type="text" name="phone1" size="5" placeholder="010">-
						<input type="text" name="phone2" size="5" placeholder="0000">-
						<input type="text" name="phone3" size="5" placeholder="0000">
					</div>
				</div>
				<div class="container" style="padding-left: 0; text-align:center;">
					<button onclick="location.href='find_id.do'"
						style="height: 30px; width: 280px; margin: 0 auto; font-size: 17px; background-color: #48c5de; color: #1d1d1d; margin-top: 10px;">아이디찾기</button>
						
				</div>
			</div>
		
			</form>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
</body>
<%@ include file="../main/footer.jsp"%>

</html>