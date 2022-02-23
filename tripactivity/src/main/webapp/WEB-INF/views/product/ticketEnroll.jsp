<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/bootstrap/css/style.css">
    <link rel="stylesheet" href="/resources/css/product/le_Enroll.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
    <%@ include file="../main/header.jsp" %>
</head>
<body>
<%@ include file="../main/c_acoordian.jsp" %>
<form action="/product/ticketEnroll" method="post">
<section class="yj_productEnroll_section">
		<div class="yj_productEnroll_option"id="yj_room">
                <ul>
                    <li>
                        <b class="yj_roomB">티켓 정보</b>
                    </li>
                </ul>
                <div class="yj_productEnroll_room">
                    <ul>
                        <li style="width:32%;">
                            티켓명 :
                            <input type="text" name="le_ticketName" class="" id="">
                        </li>
                        <li style="width:32%;">
                            할인율 : 
                            <input type="text" maxlength="2" class="" id="yj_ticketDiscount">
                            <input type="hidden" name="le_ticketDiscount" value="0.00">
                        </li>
                        <li style="width:32%">
                        	업체명 : 
                        	<input type="text" name="company_Name" value="${cmemberVO.company_Name}">
                        </li>
                    </ul>
                    <div class="yj_div1">
                        <ul>
                            <li style="width:32%;">
                                기준인원 :
                                <input type="text" name="le_standardPeople" class="" id="">
                            </li>
                            <li style="width:32%;">
                                최대인원 :
                                <input type="text" name="le_maxPeople" class="" id="">
                            </li>
                        </ul>
                    </div>
                    <table border="1" class="yj_dayTable">
                        <tr>
                            <td colspan="5" class="yj_title1">티켓 정보</td>
                        </tr>
                        <tr id="yj_tr1">
                            <td></td>
                            <th>이용요금</th>
                            <th>운영시작</th>
                            <th>운영종료</th>
                            <th>입장마감</th>
                        </tr>
                        <tr>
                            <th>평일</th>
                            <td><input type="text" name="le_n_Price" class="" id=""></td>
                            <td><input type="text" name="le_n_startTime" class="" id=""></td>
                            <td><input type="text" name="le_n_endTime" class="" id=""></td>
                            <td><input type="text" name="le_n_lastEntrance" class="" id=""></td>
                        </tr>
                        <tr>
                            <th>주말</th>
                            <td><input type="text" name="le_h_Price" class="" id=""></td>
                            <td><input type="text" name="le_h_startTime" class="" id=""></td>
                            <td><input type="text" name="le_h_endTime" class="" id=""></td>
                            <td><input type="text" name="le_h_lastEntrance" class="" id=""></td>
                        </tr>
                    </table>
                </div>
            </div>
            <input type="submit" class="yj_roomSubmitButton1" id="yj_allButton" value="등록 하기">
            <button type="reset" class="yj_roomSubmitButton2" id="yj_allButton" onclick="">취소 하기</button>
</section>
</form>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

/* 숙박 할인율 Input 설정 */
$("#yj_ticketDiscount").on("propertychange change keyup paste input", function(){
	
	let stayUserInput = $("#yj_ticketDiscount");
	let discountInput = $("input[name='le_ticketDiscount']");
	
	let discountRate = stayUserInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	
	discountInput.val(sendDiscountRate);	
});

</script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>