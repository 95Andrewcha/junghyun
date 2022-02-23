<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html lang="en">
<head>

<style>
section{
   padding:0 !important;
}
#main_box { /*아이디 선택자*/
   display: flex;
   /*flex-direction: column;*/
   align-items: center;
   padding-top: 20px;
}
#main-back {
   padding:20px;
   text-align: center;
}

.order_text {
   display: flex;
   flex-direction: column;
   align-items: center;
   padding-bottom: 20px;
   font-size: 20px;
}

.cy-section{
    display: flex;
    align-items: center;
}

.cy_header{
    align-items: center;
    flex-direction: column;
    display: flex;
    margin-top:20px;

}
.container01{
    margin:0 auto;
}
</style>

	<%@ include file="../main/header.jsp" %>

</head>
<title>회원가입 창</title>
<body>

<div class="container">
   <section>
        <div class="section-title" data-aos="zoom-out" >
          <h2>Membership</h2>
          <p>회원가입</p>
        </div>
        <div class=cy_header style=" text-align: center;">
          <h4>반갑습니다. Trip Activity 에 오신걸 환영합니다.
            <p>Trip Activity는 개인회원과 기업회원 2가지 유형이 있습니다.</p>
            <p>개인회원은 숙박과 레저 예약을 이용 할 수 있는 회원</p>
            <p>기업회원은 국내 숙박과 레저 등록 회원 (반드시 사업자등록증 보유 필요)</p>
        </h4>
        </div>
        

    </section>
   <section class="cy-section testimony-section">
      <div class="container01">
         <div id=main_box>
            
         
            <section class="cy-section testimony-section">
               <div class="container01">
                       
                  <div class="order_text">
                     <img src="/resources/img/개인.JPG" alt="My Image" height="150">
                            <a href="/member/n_join"
                        style="margin-right: 5px; text-align:center;margin-top: 5px; height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">개인 회원가입</a>
                  </div>
               </div>
                    <br>
                 </section>                   
                <section class="cy-section testimony-section">
                    <div class="container01">                       
                        <div class="order_text">                            
                            <img src="/resources/img/기업.JPG" alt="My Image" height="150">
                            <a href="/member/c_join"
                     style="margin-right: 5px;
                            margin-top: 5px;height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d; text-align:center;">기업 회원가입</a>
                        </div>
                    </div>   
             </section>
            </div>
                <div class="container01">
                    <div id="main-back">
                       <a href="/main/main"
                            style="height: 30px; width: 200px; font-size: 17px; background-color: #48c5de; color: #1d1d1d;">
                            홈 바로가기</a>
                    </div>
         </div>
      </div>
   </section>
</div>
<div id="nav">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
</html>

