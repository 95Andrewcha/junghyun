<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
</style>
</head>
<body>
<h1>조회 페이지</h1>
	<div class="input_wrap">
		<label>회원 등급</label>
		<input name="n_grade" readonly="readonly" value='<c:out value="${pageInfo.n_grade}"/>' >
	</div>
	<div class="input_wrap">
		<label>아이디</label>
		<input name="n_Id" readonly="readonly" value='<c:out value="${pageInfo.n_Id}"/>' >
	</div>
	<div class="input_wrap">
		<label>비밀번호</label>
		<textarea rows="3" name="n_Pw1" readonly="readonly"><c:out value="${pageInfo.n_Pw1}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>생년월일</label>
		<input name="birth_y" readonly="readonly" value='<c:out value="${pageInfo.birth_y}"/>' >-
		<input name="birth_m" readonly="readonly" value='<c:out value="${pageInfo.birth_m}"/>' >-
		<input name="birth_d" readonly="readonly" value='<c:out value="${pageInfo.birth_d}"/>' >
	</div>
	<div class="input_wrap">
		<label>성별</label>
		<input name="sex" readonly="readonly"  value='<c:out value="${pageInfo.sex}"/>' >
	</div>
	<div class="input_wrap">
		<label>이메일</label>
		<input name="email1" readonly="readonly" value='<c:out value="${pageInfo.email1}"/>' >
		<input name="email2" readonly="readonly" value='<c:out value="${pageInfo.email2}"/>' >
	</div>		
	<div class="input_wrap">
		<label>전화번호</label>
		<input name="phone1" readonly="readonly" value='<c:out value="${pageInfo.phone1}"/>' >-
		<input name="phone2" readonly="readonly" value='<c:out value="${pageInfo.phone2}"/>' >-
		<input name="phone3" readonly="readonly" value='<c:out value="${pageInfo.phone3}"/>' >
	</div>
	<div class="input_wrap">
		<label>탈퇴일</label>
	
		<input name="date" readonly="readonly" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${pageInfo.date}"/>' >
	</div>
	<div class="btn_wrap">
		<a class="btn" id="list_btn" href="manage/admin_withdraw_manage">목록 페이지</a> 
		
	</div>
	<form id="infoForm" action="/board/modify" method="get">
		<input type="hidden" id="n_Id" name="n_Id" value='<c:out value="${pageInfo.n_Id}"/>'>
	</form>
<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#n_Id").remove();
		form.attr("action", "admin_withdraw_manage");
		form.submit();
	});
	
	
</script>	
</head>
<body>

</body>
</html>