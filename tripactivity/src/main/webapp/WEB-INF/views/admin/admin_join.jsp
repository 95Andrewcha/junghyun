<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script>
	function checkUserIdExist(){
		
		var admin_Id = $("#admin_Id").val()
		
		if(admin_Id.length == 0 ){
			alert("아이디를 입력해주세요.");
			return
		}
		
		$.ajax({
			url :'checkUserIdExist/' + admin_Id,
			type : 'get',
			dataType:"text",
			success :function(result){
				if(result.trim() == 'true'){
					alert("사용가능한 아이디입니다.")
					$("#adminIdExist").val('true')
				}else{
					alert("이미 존재하는 아이디 입니다.")
					$("#adminIdExist").val('false')
				}
			}
		})
	}
	
	function resetAdminIdExist(){
		$("#adminIdExist").val('false')
	}
</script>

<style>
.login-page {
  width: 660px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 660px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 65%;
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

label{text-align:left; width:25%}
span{display:inherit; text-align: left;
    margin-left: 31% !important;
    margin-bottom: 10px !important;
    color: red;
    font-weight: bold !important;}
    
    .admin_login>p{
    font-weight: bold;
    font-size: 27px;
    margin-bottom: 50px;
    border-bottom: 1px solid #e3e3e3;
    text-align: left;
    padding-left: 20px;}
</style>
</head>
<body>
<%@ include file="../main/admin_header.jsp" %>
<div class="login-page">
        <div class="form">
            <div class="admin_login"><p>관리자 회원가입</p></div>
	<form:form action="admin_join_pro" method="post" modelAttribute="joinAdminVo">
		
		<form:hidden path="adminIdExist"/>
		<form:label path="admin_name">이름</form:label>
		<form:input path="admin_name"></form:input>
		<form:errors path="admin_name"/>
		
		
		<form:label path="admin_Id">아이디</form:label>
		<form:input path="admin_Id" onkeypress="resetAdminIdExist()" style="width:40%;" ></form:input>
		
			<button type="button" class="primary_btn" onclick="checkUserIdExist()" style="width:24%;">중복확인</button>
		
		<form:errors path="admin_Id"/>
		
	
		
		<form:label path="admin_pw">비밀번호</form:label>
		<form:password path="admin_pw"></form:password>
		<form:errors path="admin_pw"/>
		
		
		
		<form:label path="admin_pw2">비밀번호확인</form:label>
		<form:password path="admin_pw2"></form:password>
		<form:errors path="admin_pw2"/>
		
		
		<form:label path="admin_phone">연락처</form:label>
		<form:input path="admin_phone"></form:input>
		
		<form:label path="admin_email">이메일</form:label>
		<form:input path="admin_email"></form:input>
		
		
		
		<div>
			<form:button>회원가입</form:button>
		</div>
	</form:form>
	  </div>
      </div>
        <%@ include file="../main/footer.jsp" %>
</body>
</html>