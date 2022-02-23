<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<style>
  /* common*/
  *{margin:0; padding:0;}
  
ul, dl{padding-left:0 !important;}
      div{width:100%; background:white;
        height:inherit;}

        .cjh_admin_container{
            width:100%; display:flex;
            justify-content: center;
            height:90vh;
        }

        .left_sider{width:20%; height:100%; background:#e3e3e3;}
        
             .cjh_admin_container2{display:flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding:20px;
        background:#e3e3e3;
    }
    .cjh_admin_container3{
    	background:white;
    	width:100%;
    	height:100%;
    	padding:20px;
    }
    
   .cjh_title{background:#e3e3e3; color:030303; line-height:20px; font-size:20px; width:100%; text-align:left;
   height:auto;}
    .cjh_contents>thead, tbody, tfoot, tr, td, th {border-width:1px !important; vertical-align:middle; text-align:center;}
    /*until here*/
  .mod{float:right; width:100px; margin-right:20px; margin-top:20px;}
    </style>
</head>

<body>
<%@ include file="../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 <!-- 내용 -->
  	 	<div class="cjh_admin_container3">
  	 		<div class="cjh_title">
  		<h2>회원 등급 관리</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_contents">
  		<form>
  			<table style="width:100%;">
  			<tr>
  				<th rowspan="2">회원 등급</th>
  				<th rowspan="2">혜택 결제 조건</th>
  				<th  colspan="2">구매 적립></th>
  				<th colspan="2">할인율</th>
  				
  			</tr>
  			
  			<tr>
  				<td>구매금액(이상)</td>
  				<td>적립</td>
  				<td>구매금액(이상)</td>
  				<td>할인</td>
  			</tr>
  			<tr>
  			<td>1성급</td>
  			<td>모든결제</td>
  			<td>0원</td>
  			<td>적립</td>
  			<td>0원</td>
  			<td></td>
  			</tr>
  			
  			<tr>
	  			<td>2성급</td>
	  			<td>모든결제</td>
	  			<td>500,000원</td>
	  			<td>5%</td>
	  			<td>500,000원</td>
	  			<td>5%</td>
	  		</tr>
  			
   			<tr>
	  			<td>3성급</td>
	  			<td>모든결제</td>
	  			<td>1,000,000원</td>
	  			<td>7%</td>
	  			<td>1,000,000원</td>
	  			<td>7%</td>
  			</tr>
  			
  			<tr>
	  			<td>4성급</td>
	  			<td>모든결제</td>
	  			<td>2,000,000원</td>
	  			<td>8%</td>
	  			<td>2,000,000원</td>
	  			<td>8%</td>
  			</tr>
  			
  			  			<tr>
  			<td>5성급</td>
  			<td>모든결제</td>
  			<td>3,000,000원</td>
  			<td>10%적립</td>
  			<td>3,000,000원</td>
  			<td>10%</td>
  			</tr>
  			
  			</table>
  			<input type="submit" value="변경" class="mod">
  			</form>
  		</div>
  	 	</div><!-- container3 -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
</body>
</html>