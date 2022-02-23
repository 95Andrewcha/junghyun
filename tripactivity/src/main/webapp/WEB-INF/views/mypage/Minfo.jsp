<!-- 김예은 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripactivity</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/MemInfo.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<%@ include file="../main/header.jsp" %>

<style>
	/* 비밀번호 확인 일치 유효성검사*/
	.pwck_input_re_1{
	 	color:green;
	 	display:none;
	}
	.pwck_input_re_2{
	 	color:red;
	 	display:none;
	}
	
 
	/* 유효성 검사 문구 */
	 
	.final_email_ck{
	    display: none;
	}
	.final_sex_ck{
	    display: none;
	}
	.final_birth_ck{
	    display: none;
	}
	.final_phone_ck{
	    display: none;
	}
	.final_pw_ck{
    display: none;
	}
	.final_pwck_ck{
	    display: none;
	}
</style>
</head>
<body>
	<div>
		<%@ include file="../mypage/left_aside.jsp" %>
	</div>
	<main>
		<div class="section-title" data-aos="zoom-out">
	          <h2>Edit member information</h2>
	          <p>회원정보 수정</p>
	    </div>    
	    <div class="kye_member_inform">
	    	<form id="modifyform" action="/mypage/modify" method="post">
	        <section class="Easy-sgin-in-wrap">
                     <div id="MainBox">
                        <table style="width:400px; height:330px;">
                           <tr>
                              <td class="user_name" >
                                 <div style="text-align:right">
                                    이름
                                 </div>
                              </td>
                              <td colspan="3" class="user_name" style="padding-left: 20px;">
                                 <div>
                                   <c:out value="${nmemberVO.n_Name}"/> 
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <td class="user_id">
                                 <div style="text-align:right">
                                    아이디
                                 </div>
                              </td>
                              <td colspan="3" class="user_id" style="padding-left: 20px; ">
                                 <div>
                                   <c:out value="${nmemberVO.n_Id}"/> 
                                 </div>                               
                              </td>
                           </tr>
                           <tr>
                              <td class="user_password1">
                                 <div style="text-align:right">
                                    비밀번호
                                 </div>
                              </td>
                              <td colspan="3" class="user_password1" style="padding-left: 20px;">
                                 <input type="password" class="npw_input" name="n_Pw1" id="n_Pw1" size="30" value="<c:out value="${nmemberVO.n_Pw1}"/>"></td>
                                 <span class="final_pw_ck">비밀번호를 입력해주세요.</span>
                           </tr>
                           <tr>
                              <td class="user_password2">
                                 <div style="text-align:right">
                                    비밀번호 확인
                                 </div>
                              </td>
                              <td colspan="3" class="user_password2" style="padding-left: 20px;">
                              		<input type="password" class="npwck_input" name="n_Pw2" id="n_Pw2" size="30" value="<c:out value="${nmemberVO.n_Pw2}"/>">
                              		<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
                              		<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                                 	<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
                              </td>
                                 
                           </tr>
                           <tr>
                              <td class="email">
                                 <div style="text-align:right">
                                    이메일
                                 </div>
                              </td>
                              <td colspan="3" class="email" style="padding-left: 20px;">
                                 	<input type="text" name="email1" id="email1" value="<c:out value="${nmemberVO.email1}"/>">@
                                 	<input type="text" name="email2" id="email2" value="<c:out value="${nmemberVO.email2}"/>">
                                 	<span class="final_email_ck">이름을 입력해주세요.</span>                        				
                              </td>
                           </tr>
                                    <tr>
                              <td class="sex">
                                 <div style="text-align:right">
                                    성별
                                 </div>
                              </td>
                              <td colspan="3" class="sex" style="padding-left: 20px;">
                                 <input type="text" name="sex" id="sex" value="<c:out value="${nmemberVO.sex}"/>">
                                 <span class="final_sex_ck">성별을 입력해주세요.</span>
                              </td>
                           </tr>
                                    <tr>
                              <td class="age">
                                 <div style="text-align:right">
                                    생년월일
                                 </div>
                              </td>
                              <td colspan="3" class="birth" style="padding-left: 20px;">                                 
                              	 <input type="text" name="birth_y" value="<c:out value="${nmemberVO.birth_y}"/>">년 
                                 <input type="text" name="birth_m" value="<c:out value="${nmemberVO.birth_m}"/>">월 
                                 <input type="text" name="birth_d" value="<c:out value="${nmemberVO.birth_d}"/>">일
                                 <span class="final_birth_ck">생일을 입력해주세요.</span>                           
                              </td>
                           </tr>
                           
                           <tr>
                              <td class="phone">
                                 <div style="text-align:right;">
                                    핸드폰
                                 </div>
                              </td>
                              <td colspan="3" class="phone" style="padding-left: 20px;">
                                 <input type="text" name="phone1"  id="phone1" value="<c:out value="${nmemberVO.phone1}"/>">- 
                              	 <input type="text" name="phone2"  id="phone2" value="<c:out value="${nmemberVO.phone2}"/>">-
                                 <input type="text" name="phone3"  id="phone3" value="<c:out value="${nmemberVO.phone3}"/>">
                                 <span class="final_phone_ck">핸드폰 번호를 입력해주세요.</span>
                              </td>
                           </tr> 
                        
                        </table>
                        
                     </div>
                  </section>
                  <div class="kye_submit_bottom">
                  	 <a class="btn modify_btn" id="modifyBtn">확인</a>
        			 <a class="btn" id="cancelBtn">취소</a>
                  </div>
	        </form> 
	    </div>
	  </main>
	<div id="nav">
		<%@ include file="../main/footer.jsp" %>
	</div>
	<div id="nav">
		<%@ include file="../main/right_recent_watch_product.jsp" %>
	</div>
	
	<script>
		let mForm = $("#modifyForm");
		
		/* 수정 하기 버튼 */
	    $("#modify_btn").on("click", function(e){
	        mForm.submit();
	    });
	</script>
</body>

</html>