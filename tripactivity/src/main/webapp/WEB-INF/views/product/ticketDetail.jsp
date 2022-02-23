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
<section class="yj_productEnroll_section">
		<div class="yj_productEnroll_option"id="yj_room">
                <ul>
                    <li>
                        <b class="yj_roomB">티켓 정보</b>
                    </li>
                </ul>
                <div class="yj_productEnroll_room">
                    <ul>
                        <li style="width:30%;">
                            티켓명 :
                            <input type="text" name="le_ticketName" class="" id="" value="${ticketDetail.le_ticketName}" disabled>
                        </li>
                        <li style="width:30%;">
                            할인율 : 
                            <input type="text" maxlength="2" class="" id="yj_ticketDiscount" disabled>
                            <input type="hidden" name="le_ticketDiscount" value="">
                        </li>
                        <li style="width:30%">
                        	업체명 : 
                        	<input type="text" name="company_Name" value="${ticketDetail.company_Name}" disabled>
                        </li>
                    </ul>
                    <div class="yj_div1">
                        <ul>
                            <li style="width:30%;">
                                기준인원 :
                                <input type="text" name="le_standardPeople" class="" id="" value="${ticketDetail.le_standardPeople}" disabled>
                            </li>
                            <li style="width:30%;">
                                최대인원 :
                                <input type="text" name="le_maxPeople" class="" id="" value="${ticketDetail.le_maxPeople}" disabled>
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
                            <td><input type="text" name="le_n_Price" class="" id="" value="${ticketDetail.le_n_Price}" disabled></td>
                            <td><input type="time" name="le_n_startTime" class="" id="" value="${ticketDetail.le_n_startTime}" disabled></td>
                            <td><input type="time" name="le_n_endTime" class="" id="" value="${ticketDetail.le_n_endTime}" disabled></td>
                            <td><input type="time" name="le_n_lastEntrance" class="" id="" value="${ticketDetail.le_n_lastEntrance}" disabled></td>
                        </tr>
                        <tr>
                            <th>주말</th>
                            <td><input type="text" name="le_h_Price" class="" id="" value="${ticketDetail.le_h_Price}" disabled></td>
                            <td><input type="time" name="le_h_startTime" class="" id="" value="${ticketDetail.le_h_startTime}" disabled></td>
                            <td><input type="time" name="le_h_endTime" class="" id="" value="${ticketDetail.le_h_endTime}" disabled></td>
                            <td><input type="time" name="le_h_lastEntrance" class="" id="" value="${ticketDetail.le_h_lastEntrance}" disabled></td>
                        </tr>
                    </table>
                </div>
            </div>
            <button class="yj_ticketModifyButton" id="yj_allButton">수정 하기</button>
       	 	<button class="yj_ticketDeleteButton" id="yj_allButton">삭제 하기</button>
        	<button class="yj_ticketListButton" id="yj_allButton">목록 보기</button>
			
			<form action="/product/ticketManage" method="get" id="moveForm">
        	
        	</form>

</section>


<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	
	/* 숙박 할인율 값 삽입 */
	let le_ticketDiscount = '${ticketDetail.le_ticketDiscount}'*100;
	$("#yj_ticketDiscount").attr("value", le_ticketDiscount);
});
/* 숙박 할인율 Input 설정 */
$("#yj_ticketDiscount").on("propertychange change keyup paste input", function(){
	
	let stayUserInput = $("#yj_ticketDiscount");
	let discountInput = $("input[name='le_ticketDiscount']");
	
	let discountRate = stayUserInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	
	discountInput.val(sendDiscountRate);	
});

/* 수정 페이지 이동 */
$(".yj_ticketModifyButton").on("click", function(e){
	e.preventDefault();
	let addInput = '<input type="hidden" name="le_ticketNum" value="${ticketDetail.le_ticketNum}">';
	$("#moveForm").append(addInput);
	$("#moveForm").attr("action", "/product/ticketModify");
	$("#moveForm").submit();
});	
/* 목록 이동 버튼 */
$(".yj_ticketListButton").on("click", function(e){
	e.preventDefault();
	$("#moveForm").submit();	
});
/* 삭제 버튼 */
$(".yj_ticketDeleteButton").on("click", function(e){
	e.preventDefault();
	let moveForm = $("#moveForm");
	moveForm.find("input").remove();
	moveForm.append('<input type="hidden" name="le_ticketNum" value="${ticketDetail.le_ticketNum}">');
	moveForm.attr("action", "/product/ticketDelete");
	moveForm.attr("method", "post");
	moveForm.submit();
});

</script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>