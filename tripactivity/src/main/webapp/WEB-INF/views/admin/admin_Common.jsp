<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간편 매출 통계</title>

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
<%@ include file="../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 	<div class="cjh_contaerin2_content">
  		
  		</div>
  		
  		<div class="cjh_contents">
  			
  		</div>
  	</div><!-- cjh_container2_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
  
    <%@ include file="../main/footer.jsp" %>
</body>
</html>