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
<title>Insert title here</title>

  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
  /* common*/
  *{margin:0; padding:0;}
  
ul, dl{padding-left:0 !important;}
      div{width:100%; background:white;
        height:inherit;}

        .cjh_admin_container{
            width:100%; display:flex;
            justify-content: center;
            height:auto;
        }

        .left_sider{width:20%; height:100%; background:#e3e3e3;}
        
             .cjh_admin_container2{
        padding:20px;
        background:#e3e3e3;
    }
    
    /*until here*/
    
          
        .cjh_contents>table{width:100%; text-align:center;}
        .cjh_contents>table>tbody>tr>td{outline:1px solid black;}
        .cjh_contents>table>tbody>tr>th{outline:1px solid black;}
            .serchform{overflow:hidden; height:auto;}
       
        .cjh_container2{margin-top:50px;}
     .cjh_title{background:#e3e3e3; color:030303; line-height:20px; font-size:20px; width:100%; text-align:center; height:auto;}
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
  		<h2>회원 정보 조회</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_contaerin2_content">
  		<div class="search_container">
  			<c:if test="${not empty list }">
  				<form name="searchForm">
  					<select name="colName" id="colName">
  						<option value="">::검색 :: </option>
  						<option value="n_name"> 회원명 </option>
  						<option value="n_email"> 이메일</option>
  						<option value="n_Id">아이디</option>
  					</select>
  					<input type="text" name="searchWord"/>
  					<button type="button" id="btnSerach">검색</button>
  					
  				</form>
  			</c:if>
  			
  		</div>
  		
  		<div class="cjh_contents">
  			<table>
  			<tr>
  				<th>체크</th>
  				<th>회원 등급</th>
  				<th>회원 번호</th>
  				<th>아이디</th>
  				<th>비밀번호</th>
  				
  				<th>이름</th>
  				<th>생년 월일</th>
  				<th>성별</th>
  				<th>이메일</th>
  				<th>전화번호</th>
  				<th>가입일</th>
  			</tr>
  			
  			<c:forEach var="list" items="${list}">
  			<tr>
  				<td><input type="checkbox"></td>
  				<td style="background:skyblue;">${list.n_grade}</td>
  				<td>${list.n_memberNum}</td>
  				<td>${list.n_Id}</td>
  				<td>${list.n_Pw1}</td>
  				<td>${list.n_Name}</td>
  				<td>${list.birth_y}.${list.birth_m}.${list.birth_d}</td>
  				<td>${list.sex}</td>
  				<td>${list.email1}@${list.email2}</td>
  				<td>${list.phone1}-${list.phone2}-${list.phone3}</td>
  				<td><fmt:formatDate value="${list.date}" pattern="yyyy-MM-dd"/></td>
  			</tr>
  			</c:forEach>
  			</table>
  			<!-- 회원정보 X -->
  			<c:if test="${listCheck == 'empty' }">
  				<div class="table_empty">
  					등록된 회원이 없습니다.
  				</div>
  			</c:if>
  			<br>
  			<br>
  			
  			
  		</div>
  	</div><!-- cjh_container2_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
  
    <%@ include file="../../main/footer.jsp" %>
  <script>
  	$(document).ready(function(){
  		
  		$("#btnSerach").click(function(){
  		var searchWord = $("input[name=searchWord]").val().trim();
  		var colName = $("#colName").val();
  		
  		if(colName==""){
  			alert("검색 조건을 선택해 주십시오!.");
  			$("input[name=searchWord]").val("");
  			$("input[name=searchWrod]").focus();
  			return;
  		}
  		
  		else if(searchWord == ""){
  			alert("검색어를 입력해 주세요.");
  			return
  		}
  		
  		var form = document.searchForm;
  		
  		form.method="GET";
  		form.action ="test8.action"; //바꿔야함
  		form.submit();
  		
  	});
  	});
  	
  </script>
</body>
</html>