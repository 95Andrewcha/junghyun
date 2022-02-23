<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>

<style>

.cy_section { 
display: flex;
flex-direction: column;
align-items: center;

}
.cy_section1 { 
display: flex;
flex-direction: column;
align-items: center;

width: 45%;
    float: left;
    padding:20px !important;
    border:1px solid skyblue;
   height:330px;
}
.container{
    margin:0 auto;
    display: flex;
}
.cy_name{
    margin:0 auto;  
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 20;
    width: 45%;
    float: left;
    border:1px solid skyblue;
    padding:20px;
    height:330px;
    
}
.cy_header1{
    margin:0 auto;  
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-top: 20;
}
.cy_name1{
    display: flex;
    max-width: 800px;
    justify-content: center;
    align-items: center;
    margin: 0 auto;
    margin-bottom:80px;
}
section{padding:0 !important;}
</style>
<%@ include file="../main/header.jsp" %>
</head>
<title>비밀번호 찾기</title>
<body>
<div class=container>
    <div class="section-title" data-aos="zoom-out" ">
          <h2>Find Pw</h2>
          <p>비밀번호 찾기</p>
        </div>
<div>
    <h4 style="text-align: center; margin-top:100px;">반갑습니다. TripActivity 입니다. 비밀번호 찾기입니다.
        <p>회원정보에 등록한 휴대전화 번호와 입력한 휴대전화 번호가 같아야, 인증번호를 받을 수 있습니다.</p>
    </h4>
</div>
</div>
<div class=cy_name1 style="display: flex;">
<!-- 휴대폰 인증 -->
   <div class=cy_name>
      <h4 class="cy_header1">휴대폰 인증</h4>
      <form action="#" method="post">
            <div>
               <div style ="text-align:left">
                  <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>이름
               </div>
               <div colspan="3" class="user_name" style=" padding-top: 5px;">
                    <input type="text" name="memName" size="30" value="" placeholder="이름을 입력하시오." >
                      </div>
               </div>
                <div>
                     <div style ="text-align:left">
                       <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>휴대폰 번호
                   </div>
                   <div colspan="3" class="user_name" style=" padding-top: 5px;">
                       <input type="text" name="memName" size="30" value="" placeholder="휴대폰 번호를 입력하시오." >
                   </div>
               </div>
                  <div class="container" style="padding-left:0;">
                    <button onclick="location.href='#'"
                     style="height: 30px;width: 280px; margin:0 auto; font-size: 17px; background-color: #48c5de; color: #1d1d1d; margin-top: 10px; ;">인증번호 받기</button>
                </div>
            
               <div colspan="3" class="user_name" style=" padding-top: 10px;">
                <input type="text" name="memName" size="30" value="" placeholder="인증 번호를 입력하시오." >
               </div>
               <button onclick="location.href='#'"
               style="height: 30px; width: 280px; margin:0 auto; font-size: 17px; background-color: #48c5de; color: #1d1d1d; margin-top: 10px;">비밀번호 찾기</button>
       </div>    
       </form>
         
<!--  이메일 인증 -->
    <section class = "cy_section1">
        <h4 class="cy_header1">이메일 인증</h4>
        <form action="#" method="post">
        <div>
            <div>
                <div style ="text-align:left">
                    <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>이름
                </div>
                <div colspan="3" class="user_name" style=" padding-top: 5px;">
                    <input type="text" name="n_Name" size="30" value="" placeholder="이름을 입력하시오." >
                </div>
            </div>
            <div style ="text-align:left">
                <a style="color: red; padding-right: 5px;">*</a>이메일
            </div>
            <div colspan="3" class="email" >
                <input type="text" name="eamil1" value="" size="13" style="margin-bottom: 10px;" placeholder="Mail ID">
                @ <select name="email2"  id="selcet1"
                style="height: 25px;">
                <option value="naver.com">naver.com</option>
                <option value="gmail.com">gmail.com</option>
                <option value="nate.com">nate.com</option>
                <option value="daum.net">daum.net</option>
                <option value="hanmail.net">hanmail.net</option>
            </select>
        </div>
    </div>
    </form>
    <div class="container">
        <div class="container">
            <button onclick="location.href='#'"
            style="height: 30px; width: 280px; margin:0 auto; font-size: 17px; background-color: #48c5de; color: #1d1d1d; margin-top: 10px; ;">
            인증번호 받기</button>
        </div>
    </div>
    <div colspan="3" class="user_name" style=" padding-top: 10px;">
        <input type="text" name="memName" size="30" value="" placeholder="인증 번호를 입력하시오." >
    </div>
    <button onclick="location.href='#'" id="findBtn"
    style="height: 30px; width: 280px; margin:0 auto; font-size: 17px; background-color: #48c5de; color: #1d1d1d; margin-top: 10px;">
    비밀번호 찾기</button>
</section>
</div>
<%@ include file="../main/footer.jsp" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url : "/member/findpw",
				type : "POST",
				data : {
					n_Name : $("#n_Name").val(),
					email1 : $("#email1").val()
					email2 : $("#email2").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
</script>
</body>
</html>