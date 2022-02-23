<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 페이지</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);


*{margin:0; padding:0;}

.admin_login{margin-bottom:30px;}
.login-page {
  width: 560px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 460px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: skyblue;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
</style>
</head>
<body>
<%@ include file="../main/admin_header.jsp" %>
 <div class="login-page">
        <div class="form">
            <div class="admin_login"><p>관리자 로그인</p></div>
          
          <c:if test="${fail == true}">
          <div class="alert">
          	<h3>로그인 실패</h3>
          	<p>아이디 비밀번호 다시 입력 바람.</p>
          </div>
          </c:if>
          <form:form action="admin_login_pro"  method="post" modelAttribute="tempLoginAdminVO" >
          	<form:label path="admin_Id" style="margin-bottom:15px; font-weight:bold;">아이디</form:label>
          	<form:input path="admin_Id"/>
          	<form:errors path="admin_Id" style="color:red; font-weight:bold;"/>
          
          	<br><br>	
          	<form:label path="admin_pw" style="margin-bottom:15px; font-weight:bold;">패스워드</form:label>
          	<form:input path="admin_pw"/>
          	<form:errors path="admin_pw" style="color:red; font-weight:bold;"/>
          	<br><br>
          
            <form:button class="btn">로그인</form:button>
          
         </form:form>
        </div>
      </div>
        <%@ include file="../main/footer.jsp" %>
</body>
</html>