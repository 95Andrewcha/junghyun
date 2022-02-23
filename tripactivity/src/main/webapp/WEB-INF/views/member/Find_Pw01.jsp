<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
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
.cy-section{
display: flex;
align-items: center;
}

.cy_header{
align-items: center;
flex-direction: column;
display: flex;
font-size: 25px;

}
.container{
margin:0 auto;
text-align: center;
}
</style>
</head>
<title>비밀번호 찾기 창</title>
<body>


<div class="container">
         <div class="section-title" data-aos="zoom-out" style = "margin-top:220px;">
          <h2>Find Pw</h2>
          <p>비밀번호 찾기</p>
        </div>
    <div class=cy_header style=" text-align: center;">
      <h4>반갑습니다. { } 님 ! ! !    </h4>
    </div>
</div>

<section class="cy-section testimony-section">
    <div class="container">
       
            <div>
                <div>
                    <div style ="text-align:center; margin-right: 105px">
                        새 비밀번호 입력
                    </div>
                    <div colspan="3" class="user_name" style=" padding-top: 5px;   ">
                        <input type="text" name="memName" size="30" value=""placeholder="새로운 비밀번호 입력" >
                    </div>
                </div>
                <div>
                    <div style ="text-align:center; margin-right: 105px" >
                        새 비밀번호 확인         
                    </div>
                    <td colspan="3" class="user_name" style=" padding-top: 5px;">
                        <input type="text" name="memName" size="30" value="" placeholder="새로운 비밀번호 확인" >
                    </td>
                </div>
            </div>
            <h4 style="font-size: 12px">영문, 숫자, 특수문자를 함께 사용하면(8자 이상 16자 이하)보다 안전합니다.<p>
                다른 사이트와 다른 트립액티비티 아이디만의 비밀번호를 만들어 주세요.
            </p>    </h4>  
            <div class="container">
                <div id="main-back">
                    <button onclick="location.href='#'"
                        style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
                        확인</button>
                </div>
            </div>
            
    </div>
</section>

</body>
</html>
