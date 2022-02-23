<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../main/header.jsp" %>
	<link rel="stylesheet" type="css" href="/resources/css/reset.css">
    <link rel="stylesheet" type="css" href="/resources/bootstrap/css/style.css">
    <style>
        .yj_section1{
            width:1100px;
            margin:0px auto;
            height: 1000px;
        }
        .yj_div1{
            font-size:24px;
            font-weight:bold;
            text-align:center;
            border:1px solid #eee;
            background-color: #eee;
            padding:10px 0;
            margin:20px auto;
        }
        .yj_div2{
            width:100%;
        }
        .yj_table1{
            width:100%;
        }
        #yj_tableId1{
            text-align: center;
            background-color:#eee;
        }
        tr td{
        	border:1px solid #1d1d1d;
        	vertical-align:middle;
        	text-align:center;
        	padding:10px;
        }
        #yj_allButton{
            border:1px solid #1d1d1d;
            background-color: #1d1d1d;
            color:#fff;
            padding:7px;
            border-radius:8px;
            cursor:pointer;
            font-weight:bold;
            float:right;
            margin-top:15px;
        }
        #yj_allButton:hover{
            color:#1d1d1d;
            background-color: #fff;
        }
    </style>
</head>
<body>
<%@ include file="../main/c_acoordian.jsp" %>
<section class="yj_section1">
    <div class="yj_div1">
        객실 등록 정보
    </div>
    <div class="yj_div2">
        <table border="1" class="yj_table1">
            <tr id="yj_tableId1">
                <td style="width:60%;">객실명</td>
                <td style="width:10%;">기준인원</td>
                <td style="width:10%;">최대인원</td>
                <td style="width:10%;">객실 수</td>
            </tr>
            <c:forEach items="${room}" var="room">
            	<c:if test="${room.company_Name == cmemberVO.company_Name}">
            		<tr>
                		<td><a href="/product/roomDetail?ac_roomNum=${room.ac_roomNum }">${room.ac_roomName}</a></td>
                		<td>${room.ac_standardPeople}</td>
                		<td>${room.ac_maxPeople}</td>
                		<td>${room.ac_roomCount}</td>
            		</tr>
            	</c:if>
            </c:forEach>
        </table>
        <button type="button" onclick="location.href='/product/roomEnroll'" id="yj_allButton">객실 추가 하기</button>
    </div>
</section>


<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
	
	let eResult = '<c:out value="${enroll_result}"/>';
	
	checkResult(eResult);
	
	function checkResult(result){
		
		if(result === ''){
			return;
		}
		
		alert(""+ eResult +" 객실이 등록되었습니다.");
		
	}
	
	/* 수정 성공 이벤트 */
	let modify_result = '${modify_result}';

	if(modify_result == 1){
		alert("수정 완료");
	}
	
	//삭제 성공 이벤트
	let delete_result = '${delete_result}';
	
	if(delete_result == 1){
		alert("삭제 완료");
	}

});
</script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>