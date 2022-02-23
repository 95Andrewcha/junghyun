<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 회원 관리 페이지</title>

  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="/resources/css/common/admin_common.css">
<link rel="stylesheet" href="/resources/css/common/admin_popup.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>

    
    .cjh_contents>thead, tbody, tfoot, tr, td, th {border-width:1px !important;
         vertical-align:middle; }
      
        .cjh_contents>table{width:100%; text-align:center;}
        .size{width:100px; padding:2px; float:right; margin-left:15px; margin-top:10px;}
        .align{float:left; margin-left:30px;}
         .choose_value >h3{display:flex; font-size:16px; background:#e3e3e3; width:100%; padding-left:10px; line-height:35px;}
   
    </style>
</head>

<body>
<%@ include file="../../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 <!-- 내용 -->
  	 <div class="cjh_title">
  		<h2>기업 회원 관리</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_contaerin2_content">
  		<div class="cjh_left_in">
  		<form action="admin_c_member_manage_modify" method="post" id="modifyForm">
  		<table>
  			<tr>
  				<td class="table_left">업체명</td>
  				<td class="table_right">
  				<input name="company_Name" value='<c:out value="${list.company_Name}"/>'>
  				</td>
  				
  			</tr>
  			<tr>
  				<td class="table_left">사업자 등록번호</td>
  				<td class="table_right">
  				<input name="company_Number" value='<c:out value="${list.company_Number}"/>'>
  				</td>
  			</tr>
  			<tr>
  				<td class="table_left">경고 횟수</td>
  				<td class="table_right">
  				
  				<input type="number" min="1" max="5" <c:out value="${list.alert_Count}"/>>
  					
  				
  				</td>
  				
  			</tr>
  			<tr>
  				<td class="table_left">아이디</td>
  				<td class="table_right">
  				<input name="c_Id" value='<c:out value="${list.c_Id}"/>'>
  				</td>
  			</tr>
  			<tr>
  				<td class="table_left">비밀번호</td>
  				<td class="table_right">
  					<input name="c_Pw1" value='<c:out value="${list.c_Pw1}"/>'>
  				</td>
  			</tr>	

		
  			<tr>
  				<td class="table_left">성별</td>
  				<td class="table_right">
  					<input name="sex" value='<c:out value="${list.sex}"/>'>
  				</td>
  			</tr>
  			<tr>
  				<td class="table_left">이름</td>
  				<td class="table_right">
  				<input name="c_Name" value='<c:out value="${list.c_Name}"/>'>
  				</td>
  			</tr>
  			<tr>
  				<td class="table_left">생년 월일</td>
  				<td class="table_right">
  				<input name="birth_y" value='<c:out value="${list.birth_y}"/>'>-
  				<input name="birth_m" value='<c:out value="${list.birth_m}"/>'>-
  				<input name="birth_d" value='<c:out value="${list.birth_d}"/>'></td>
  			</tr>

  			<tr>
  				<td class="table_left">이메일</td>
  				<td class="table_right">
  				<input name="email1" value='<c:out value="${list.email1}"/>'>
  				@
  				<input name="email2" value='<c:out value="${list.email2}"/>'>
</td>
  			</tr>
  			<tr>
  				<td class="table_left">전화번호</td>
  				<td class="table_right">
  				<input name="phone1" value='<c:out value="${list.phone1}"/>'>-
  				<input name="phone2" value='<c:out value="${list.phone2}"/>'>-
  				<input name="phone3" value='<c:out value="${list.phone3}"/>'>
  				
  			</tr>
  			
  		</table>
  		</form>
  		<form id="infoForm" action="admin_c_member_manage_modify" method="get">
  			<input type="hidden" id="c_Id" name="c_Id" value='<c:out value="${list.c_Id }"/>'>
  		</form>
  		
  		</div>
  		
  		<div class="cjh_contents">
  			
  			<div class="btns">
	  			<a class="size"  id="update">수정하기</a>
	  			<a class="size" id="redirect">목록가기</a>
	  			<a class="size" id="cancel">취소</a>
	  			
	  	
  			</div><!-- btns -->
  		</div>
  	</div><!-- cjh_container2_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
    <%@ include file="../../main/footer.jsp" %>
    <script>
    
    let infoForm = $("#infoForm");
    let modifyForm =$("#modifyForm");
   
    
    	$("#redirect").on("click", function(e){
    		infoForm.find("#c_Id").remove();
    		infoForm.attr("action", "admin_c_member_manage01");
    		infoForm.submit();
    	});
    	
    	$("#update").on("click", function(e){
    		modifyForm.submit();
    	});
    	
    	$("#cancel").on("click", function(e){
    		infoForm.attr("action", "admin_c_member_manage");
    		infoForm.submit();
    	});
    </script>/
</body>
</html>