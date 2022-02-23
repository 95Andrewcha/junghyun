<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${PageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  
  <title>TripActivity</title>
  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <style>
  *{margin:0; padding:0;}
cjh_content>ul, dl{padding-left:0 !important;}
  .cjh_container{width:1200px; margin:0 auto; display:flex; flex-direction:column; height:100%;}
  .cjh_container2{width:100%; display:flex; flex-direction:row; }
  .cjh_title{background:#e3e3e3; color:030303; line-height:20px; font-size:20px; width:100%; text-align:center;}
  
 
        
        
        .choose_value >h3{display:flex; font-size:16px; background:#e3e3e3; width:100%; padding-left:10px; line-height:35px;}
        .cjh_container2{margin-top:50px;}
        .cjh_contents>thead, tbody, tfoot, tr, td, th {border-width:1px !important;}
        .cjh_contaerin2_content{width:1000px;}
        .cjh_contents>table{width:100%; text-align:center;}
  </style>
  </head>
  <body>
  <div class="cjh_container">
  	<div class="cjh_title">
  		<h2>관리자 1:1 문의</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_container2">
  <%@ include file="../main/admin_accordion.jsp" %>
  	<div class="cjh_contaerin2_content">
  		<div class="choose_value">
  			<h3>분류 | <select>
  			<option>일반회원</option>
  			<option>기업회원</option>
  			
  			</select> 
  			<input type="button" value="조회">
  			</h3>
  		</div>
  		
  		<div class="cjh_contents">
  			<table>
  				<tr>
	  				<th>번호</th>
	  				<th colspan="2" >제목</th>
	  				<th>작성자</th>
	  				<th>작성일</th>
	  				<th>조회수</th>
	  				<th>상태</th>
	  			</tr>
	  			<tr>
	  				<td>{no}</td>
	  				<td colspan="2" style="width:40%;">{title}</td>
	  				<td>{wrtier}</td>
	  				<td>{date}</td>
	  				<td>{hits</td>
	  				<td>{Stats}</td>
	  		</table>
  		</div>
  	</div><!-- cjh_container2_content -->
  </div><!-- cjh_container2 -->
  </div><!-- container -->
    <%@ include file="../main/footer.jsp" %>
  
  </body>

  </html>