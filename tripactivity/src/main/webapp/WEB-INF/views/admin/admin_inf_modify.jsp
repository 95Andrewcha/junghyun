<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="admin_info_modify_pro" method="post" modelAttribute="admin_info_modify_AdminVO">
		<form:label path="admin_name"/>
		<form:input path="admin_name" readonly="true"/>
		
		<hr>
		<form:label path="admin_Id"/>
		<form:input path="admin_Id" readonly="true"/> <!-- readonly 는 수저 불가 벗 서버에 전송 가능 disable는 불가 -->
		
		
		<hr>
		<form:label path="admin_pw">비밀번호</form:label>
		<form:password path="admin_pw"/>
		<form:errors path="admin_pw"/>
		<hr>
		<form:label path="admin_pw2">비밀번호확인</form:label>
		<form:password path="admin_pw2"/>
		<form:errors path="admin_pw2"/>
		
		<form:button class="btn">정보수정</form:button>
	</form:form>
</body>
</html>