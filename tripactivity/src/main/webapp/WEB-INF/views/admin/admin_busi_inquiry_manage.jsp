<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 문의 관리</title>

<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="/resources/css/common/admin_common.css">
<style>
</style>
</head>

<body>
<%@ include file="../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 <div class="container">
        <div class="title">
            <h2>문의 관리</h2>
        </div>
        <div class="container1">
        
        <form:form action="admin_busi_inquiry_manage_search" method="post" modelAttribute="searchAdminQuestionVO">
            <table class="table">
                <tr>
                    <th class="for_bg for_padding" style="width:20%;">회원아이디</th>
                    <td style="width:40%;">
                    <form:input path="n_Id" autocomplete="off" class="for_input_padding"></form:input>
                    <form:errors path="n_Id"/>
                    
                    </td>
                    <th class="for_bg for_padding" style="width:20%;">답변 상태</th>
                    <td style="width:20%;">
                    <form:select path="answer_stats">
                    	
                    	<form:option value="0" label="답변 대기중"/>
                    	<form:option value="1" label="답변 완료"/>
                    </form:select>
                    
                       
                    </td>
                </tr>
                <tr>
                    <th class="for_bg for_padding">제목</th>
                    <td>
                    <form:input path="board_title"></form:input>
                    <form:errors path="board_title"/>
                    </td>
                    <td>
                    <form:button style="width:100%; padding:5px; float:right;">
                    검색하기
                     </form:button>
                    </td>
                </tr>
            </table>
            </form:form>
            <div class="contests">
                <p>회원에게 답변 또는 해당글 수정을 할 시 처리 항목의 <a href="#">관리</a>버트는 클릭 하시면 됩니다.</p>
            </div>
        
        </div><!--container1-->
        <div class="container2">
            <table class="table2">
                <tr>
                    <th style="width:10%;" class="for_bg for_outline">번호</th>
                    <th style="width:10%;" class="for_bg for_outline">회원ID</th>
                    <th style="width:40%;" class="for_bg for_outline">문의 제목</th>
                    <th style="width:10%;" class="for_bg for_outline">답변 상태</th>
                    <th style="width:20%;" class="for_bg for_outline">등록일</th>
                    <th style="width:10%;" class="for_bg for_outline">관리</th>
                </tr>
                
                <c:forEach var="list" items="${list}" varStatus="status" begin="0" end="5">
	                <tr style="border-bottom:1px solid black;">
	                    <td class="td_align_padding for_outline">${list.board_seq}</td>
	                    <td class="td_align_padding for_outline">${list.n_Id}</td>
	                    <td class="td_align_padding for_outline">${list.board_title}</td>
	                    <td class="td_align_padding for_outline">
	                    
	                    <c:if test="${list.answer_stats == 1}">
	                    <td class="td_align_padding for_outline">답변 대기중
	                    </td>
	                    </c:if>
	                    <c:if test="${list.answer_stats == 2}">
	                    <td class="td_align_padding for_outline">답변완료
	                    </td>
	                    </c:if>
	                    
	                    <td class="td_align_padding for_outline">${list.board_date}</td>
	                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
	                    
	                </tr>
                </c:forEach>
                
                
                
                
            </table>
        </div><!--container2-->
    </div><!--container-->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
</body>
</html>