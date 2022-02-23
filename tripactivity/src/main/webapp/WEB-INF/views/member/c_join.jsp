<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="/resources/css/c_join.css" type="text/css">
    <script src="/resources/js/c_join.js"></script>
    <%@ include file="../main/header.jsp" %>
    
    <style>
    /* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}
	/* 비밀번호 확인 일치 유효성검사*/
	.pwck_input_re_1{
	 	color:green;
	 	display:none;
	}
	.pwck_input_re_2{
	 	color:red;
	 	display:none;
	}
    </style>
</head>
<body>
	<div class="container" >
   <section class="ftco-section testimony-section"
      style="padding-top: 50px; ">
      <div class="container" style="height: 650px;">
                         <div class="section-title" data-aos="zoom-out">
        				  	<h2>Nomal Membership</h2>
        				  	<p>기업 회원가입</p>
       				     </div>

                
     		<form name="CheckJoin" action="/member/c_join" method="post">
       			 <section class="ftco-section testimony-section" id="sect" style="padding: 0px; display: flex; ">
					<div class="container" style="width: 900px;">
                  		<section class="Easy-sgin-in-wrap">
                     		<div id="MainBox">
                            <table style="width:600px; height:330px;">
                                <tr>
                                    <td class="user_name" >
                                        <div >
                                            <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>기업 이름
                                        </div>
                                    </td>
                                    <td colspan="3" class="user_name" style="padding-left: 10px;">
                                        <input type="text" name="company_Name" size="30" placeholder="기업 이름을 입력하시오." >
                                    </td>
                                </tr><tr>
                                    <td class="user_name" >
                                        <div >
                                            <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>사업자 등록 번호
                                            
                                        </div>
                                    </td>
                                    <td colspan="3" class="user_name" style="padding-left: 10px; padding-top: 5px;">
                                        <input type="text" name="company_Number" size="30" placeholder="사업자 등록 번호를 입력하시오.">
                                    </td>
                                </tr>			
                                <tr>
                                    <td class="user_name" >
                                        <div >
                                            <a style="color: red; padding-right: 5px; white-space:nowrap;">*</a>대표자 이름
                                        </div>
                                    </td>
                                    <td colspan="3" class="user_name" style="padding-left: 10px;">
                                        <input type="text" name="c_Name" size="30" placeholder="대표자 이름을 입력하시오.">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="user_id">
                                        <div >
                                            <a style="color: red; padding-right: 5px;">*</a>아이디
                                        </div>
                                    </td>
                                    <td colspan="3" class="user_id" style="padding-left: 10px;">
                                        <input type="text" class="cid_input" name="c_Id" size="30" value=""placeholder="아이디를 입력하시오." style="margin-bottom: 10px; ">
                                        <span class="id_input_re_1">사용 가능한 아이디입니다.</span>
                                 		<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="user_password1">
                                        <div>
                                            <a style="color: red; padding-right: 5px;">*</a>비밀번호
                                        </div>
                                    </td>
                                    <td colspan="3" class="user_password1" style="padding-left: 10px;">
                                        <input type="password" class="cpw_input" name="c_Pw1" size="30" placeholder="비밀번호를 입력하시오.">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="user_password2">
                                        <div >
                                            <a style="color: red; padding-right: 5px;">*</a>비밀번호 확인
                                        </div>
                                    </td>
                                    <td colspan="3" class="user_password2" style="padding-left: 10px;">
                                    	<input type="password" class="cpwck_input" name="c_Pw2" size="30" placeholder="비밀번호를 다시 입력하시오.">
                                    	<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                                 		<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="email">
                                        <div >
                                            <a style="color: red; padding-right: 5px;">*</a>이메일
                                        </div>
                                    </td>
                                    <td colspan="3" class="email" style="padding-left: 10px;">
                                 	<input type="text" name="email1" id="email1" placeholder="메일ID 입력하시오." size="13" >
                                 		@ <input name="email2" type="text">
                        				<select name="select_email" onChange="selectEmail(this)"> 
                        					<option value="" selected>선택하세요</option> 
                        					<option value="naver.com">naver.com</option>
                                			<option value="gmail.com">gmail.com</option>
                                			<option value="nate.com">nate.com</option>
                                			<option value="daum.net">daum.net</option>
                                			<option value="hanmail.net">hanmail.net</option>
                        					<option value="1" >직접입력</option> 
                        				</select>
                              		</td>
                                </tr>
                                <tr>
                                    <td class="sex">
                                        <div >
                                            <a style="color: red; padding-right: 5px;">*</a>성별
                                        </div>
                                    </td>
                                    <td colspan="3" class="sex" style="padding-left: 10px;">
                                        <select name="sex"  id="sex1"
                                        style="height: 34px;">
                                            <option value="남">남자</option>
                                            <option value="여">여자</option>
                                            
                                    </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="age">
                                        <div >
                                            <a style="color: red; padding-right: 5px;">*</a>생년월일
                                        </div>
                                    </td>
                                    <td colspan="3" class="sex" style="padding-left: 10px;">
                                        
                                        <input type="text" name="birth_y" placeholder="1900" size="3">년
                                        <input type="text" name="birth_m" placeholder="01"size="3">월
                                        <input type="text" name="birth_d" placeholder="01"size="3">일

                                        
                                 
                                    </td>
                                </tr>
                                <tr>
                                    <td class="phone">
                                        <div style=" margin-bottom: 10px;">
                                            <a style="color: red; padding-right: 5px;">*</a>핸드폰
                                        </div>
                                    </td>
                                    <td colspan="3" class="phone" style="padding-left: 10px;">
                                        <select name="phone1"  id="selcet1"
                                        style="height: 34px;margin-bottom: 5px;">
                                            <option value="">선택</option>
                                            <option value="010">010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="019">018</option>
                                            <option value="010">019</option>
                                    </select>- <input type="text" name="phone2" placeholder="0000" size="3">-
                                        <input type="text" name="phone3" placeholder="0000" size="3"> <input
                                        type="button" name="phone_certification"
                                        onclick="phone_check()" value="핸드폰인증">
                                    </td>
                                </tr>
                                								
                            
                            </table>
                         </div>
                      </section>
                    </div>
                <div class="container">
                    <div id="RightBox ">
                        <table style="width:450px; height:330px;">
                        <tr>
                           <td style="padding-left: 15px;"><input type="checkbox"
                              name="full_agree" id="full_agree" onclick="checkAllCheckbox()"
                              value="on"> 전체 동의</td>
                        </tr>
                        <tr>
                           <td style="padding-left: 15px;"><input type="checkbox"
                              name="service1" id="service1" value="on"><a
                              style="color: red;">*</a> 이용 약관</td>
                        </tr>
                        <tr>
                           <td style="text-align: center; padding-left: 10px;"><textarea
                                 cols=55 rows=4 name="contents" disabled>
     가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 아이디, 비밀번호, 연락처(메일주소, 휴대폰 번호), 가입인증정보
만14세 미만 아동 회원가입
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
단체아이디 회원가입
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호
둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.
넷째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호
  나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 배송요청
- 협력회사로부터의 제공
- 생성정보 수집 툴을 통한 수집
   </textarea></td>

                        </tr>
                        <tr>
                           <td style="padding-left: 10px;">
                              <div align="left" style="padding-left: 5px;">
                                 <input type="checkbox" name="service2" id="service2" value="on"><a
                                    style="color: red;">*</a>개인정보 수집 및 이용안내
                              </div>
                           </td>

                        </tr>
                        <tr>
                           <td style="padding-left: 15px;"><textarea cols=55 rows=4
                                 name="contents" disabled>본인은 회원가입과 관련하여 개인정보를 제공하며, 다음과 같은 개인정보 수집, 이용 등에 동의합니다.
목적 및 업체 이외로 고객의 개인정보를 이용 또는 제공하지 않습니다.
다만, 법령의 규정에 의거하거나 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우에는 예외로 합니다.
본 동의서 내용은 회사 정책에 따라 변경될 수 있으며, 변경 내용은 회사 홈페이지에 공지하거나 법령에 따라 필요한 절차를 진행할 수 있습니다.</textarea>
                           </td>

                        </tr>
                        <tr>
                           <td style="padding-left: 15px;">
                              <div align="left">
                                 <input type="checkbox" name="agree" id="service3" value="on">마켓팅
                                 수신 동의
                              </div>
                           </td>

                        </tr>
                        <tr>
                           <td style="padding-left: 15px;"><textarea cols=55 rows=3
                                 name="contents" disabled>쇼핑몰에서는 회원가입시 수집된 개인정보를 이용하여 탈퇴시까지 각종 서비스, 상품에 대하여 홍보 목적으로 본인에게 정보, 전화, SMS, 이메일 등의 방법으로 전달합니다.</textarea>

                           </td>

                        </tr>

                     </table>


                    </div>
                </div>
               </section>
            <div style="text-align: center; padding-bottom: 70px; padding-top:40px;">
                <input type="button" name="modify" value="회원가입 "
                    style="padding-left: 10px; background-color: skyblue; color: white; border-radius:2px;" onclick="Check_Join()"> <input
                    type="reset" name="reset" value="취    소" style="width: 75px; background-color: skyblue; color: white; border-radius:2px; margin-left:20px;"
                    onclick="location.href='/member/selectJoin'">
            </div>
          </form>
        </div>
      </section>
    </div>
<div id="nav">
	<%@ include file="../main/footer.jsp" %>
</div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
//로그인
function Check_Join() {
  var form = document.CheckJoin;

  if (form.c_Name.value == "") {
     alert("이름을 입력하지 않았습니다.")
     form.memName.focus();
     return false;
  }

  if (form.c_Name.value.length < 2) {
     alert("이름을 2자 이상 입력해주십시오.")
     document.form.memName.focus();
     return false;
  } 

   //아이디 유효성 검사 (영문소문자, 숫자만 허용)
  for (var i = 0; i < form.c_Id.value.length; i++) {
     ch = form.c_Id.value.charAt(i)
     if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
           && !(ch >= 'A' && ch <= 'Z')) {
        alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
        form.c_Id.focus();
        form.c_Id.select();
        return false;
     }
  }

  //아이디에 공백 사용하지 않기
  if (form.c_Id.value.indexOf(" ") >= 0) {
     alert("아이디에 공백을 사용할 수 없습니다.")
     form.n_Id.focus();
     form.n_Id.select();
     return false;
  }
  //아이디 길이 체크 (4~12자)
  if (form.c_Id.value.length<4 || form.c_Id.value.length>12) {
     alert("아이디를 4~12자까지 입력해주세요.")
     form.n_Id.focus();
     form.n_Id.select();
     return false;
  }

  //비밀번호 입력여부 체크
  if (form.c_Pw1.value == "") {
     alert("비밀번호를 입력하지 않았습니다.")
     form.c_Pw1.focus();
     return false;

  }
  if (form.c_Pw1.value == form.c_Id.value) {
     alert("아이디와 비밀번호가 같습니다.")
     form.c_Pw1.focus();
     return false;
  }
  
  //비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
  for (var i = 0; i < form.c_Pw1.value.length; i++) {
     ch = form.c_Pw1.value.charAt(i)
     if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
           && !(ch >= 'A' && ch <= 'Z')) {
        alert("비밀번호는 영문 대소문자, 숫자만 입력가능합니다.")
        form.c_Pw1.focus();
        form.c_Pw1.select();
        return false;
     }
  }
  if (form.email1.value == "") {
     alert("이메일을 입력하지 않았습니다.")
     form.email1.focus();
     return false;
  }

  for (var i = 0; i < form.email1.value.length; i++) {
     chm = form.email1.value.charAt(i)
     if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')
           && !(chm >= 'A' && chm <= 'Z')) {
        alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
        form.email1.focus();
        form.email1.select();
        return false;
     }
  }
  if (form.phone1.value == "") {
     alert("핸드폰번호를 입력하지 않았습니다..")
     form.phone1.focus();
     return false;
  }

  if (form.phone2.value == "") {
     alert("핸드폰번호를 입력하지 않았습니다.")
     form.phone2.focus();
     return false;
  }

  for (var i = 0; i < form.phone2.value.length; i++) {
     ch = form.phone2.value.charAt(i)
     if (!(ch >= '0' && ch <= '9')) {
        alert("핸드폰번호는 숫자만 입력가능합니다.")
        form.phone2.focus();
        form.phone2.select();
        return false;
     }
  }
  if (form.phone3.value == "") {
     alert("핸드폰번호를 입력하지 않았습니다.")
     form.phone3.focus();
     return false;
  }
  for (var i = 0; i < form.phone3.value.length; i++) {
     ch = form.phone3.value.charAt(i)
     if (!(ch >= '0' && ch <= '9')) {
        alert("핸드폰번호는 숫자만 입력가능합니다.")
        form.phone3.focus();
        form.phone3.select();
        return false;
     }
  }

  if (!service1.checked) {

     alert("이용 약관 동의를 체크하세요.");
     service1.focus();
     return false;
  }
  if (!service2.checked) {

     alert("개인정보 수집 및 이용안내 동의를 체크하세요.");
     service2.focus();
     return false;
  }

  form.submit();

} 
function checkAllCheckbox(obj) {
    $("input[name='agree']").prop('checked', true);
    $("[name=agree]").prop("checked", $(obj).prop("checked"));
    $("[name=service1]").prop("checked", $(obj).prop("checked"));
    $("[name=service2]").prop("checked", $(obj).prop("checked"));


 }
 function checkOneCheckbox(obj) {
    var allObj = $("[name=full_agree]");
    var objName = $(obj).attr("name");

    if ($(obj).prop("checked")) {
       checkBoxLength = $("[name=" + objName + "]").length;
       checkedLength = $("[name=" + objName + "]:checked").length;

       if (checkBoxLength == checkedLength) {
          allObj.prop("checked", true);
       } else {
          allObj.prop("checked", false);
       }
    } else {
       allObj.prop("checked", false);
    }
 }

 $(function() {
    $("[name=full_agree]").click(function() {
       checkAllCheckbox(this);
    });
    $("[name=agree]").each(function() {
       $(this).click(function() {
          checkOneCheckbox($(this));
       });
    });
 });


//직접입력
   function selectEmail(ele){ var $ele = $(ele); var $email2 = $('input[name=email2]'); 
   // '1'인 경우 직접입력 
   if($ele.val() == "1"){ 
      $email2.attr('readonly', false); 
      $email2.val(''); } 
   else { $email2.attr('readonly', true); 
   $email2.val($ele.val()); } }
   
   //아이디 중복검사 
   //아이디 중복검사
  $('.cid_input').on("propertychange change keyup paste input", function(){

  	/* console.log("keyup 테스트"); */	
  	
  	var c_Id = $('.cid_input').val();			// .id_input에 입력되는 값
  	var data = {c_Id : c_Id}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
  	
  	$.ajax({
  		type : "post",
  		url : "/member/cmemberIdChk",
  		data : data,
  		success:function(result){
  			//console.log("성공 여부 " + result);
  			if(result != 'fail'){
  				$('.id_input_re_1').css("display","block");
  				$('.id_input_re_2').css("display","none");
  			} else {
  				$('.id_input_re_2').css("display","block");
  				$('.id_input_re_1').css("display","none");
  			}
  		}//success 종료
  	}); // ajax 종료
  });// function 종료
  
//비밀번호 확인 일치 유효성 검사
  $('.cpwck_input').on("propertychange change keyup paste input", function(){
  	var pw = $('.cpw_input').val();
  	var pwck = $('.cpwck_input').val();
  	
  	if(pw == pwck){
          $('.pwck_input_re_1').css('display','block');
          $('.pwck_input_re_2').css('display','none');
          pwckcorCheck = true;
      }else{
          $('.pwck_input_re_1').css('display','none');
          $('.pwck_input_re_2').css('display','block');
          pwckcorCheck = false;
      } 
  });
   </script>
</html>