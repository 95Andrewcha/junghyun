<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생일 쿠폰 설정</title>

  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<style>
  /* common*/
  *{margin:0; padding:0;}
  
ul, dl{padding-left:0 !important;}
      div{width:100%; background:white;
        height:auto;}

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
      .cjh_title{background:#e3e3e3; color:030303; line-height:20px; font-size:20px; width:100%; text-align:center;}
  
    /*until here*/
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
  	 <div class="container">
  	 		<div class="title">
  	 			<h2>생일 쿠폰 발급 여부</h2>
  	 		</div><!-- title -->
  	 		<div class="container1">
  	 			<table>
  	 				<tr>
  	 					<th>사용 여부</th>
  	 					<td><input type="radio" name="use">사용함 <br>
  	 						<input type="radio" name="use">사용 안함
  	 					</td>
  	 				</tr>
  	 				<tr>
  	 					<th>발급 일자</th>
  	 					<td>생일<input type="text"> 일전 ( 0입력시 생일 당일 발송 됩니다.)
  	 					
  	 				</tr>
  	 				<tr>
  	 					<th>발급 시간</th>
  	 					<td>
  	 						<select name="order_time"> <!-- 발급 시간 -->
  	 							<option value="time00">00시</option>
  	 							<option value="time06">06시</option>
  	 							<option value="time12">12시</option>
  	 							<option vlaue="time18">18시</option> 
  	 						</select>
  	 					</td>
  	 				</tr>
  	 				<tr>
  	 					<th>문자 발송</th>
  	 					<td>
  	 						<input type="radio" name="message_user"> 쿠폰 발급과 동시에 이메일로 안내<br>
  	 						<input type="radio" name="message_user"> 사용안함.
  	 					</td>
  	 				</tr>
  	 			</table>
  	 		</div><!-- container1 -->
  	 </div><!-- container -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
    <%@ include file="../../main/footer.jsp" %>
</body>
</html>