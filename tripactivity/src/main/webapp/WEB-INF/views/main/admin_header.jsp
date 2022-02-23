<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/common/admin_header.css">
	<link rel="stylesheet" href="/resources/css/reset.css">
	<link href="/resources/img/logo1.png" rel="icon">
  	<link href="/resources/img/logo1.png" rel="apple-touch-icon">
    <title>Tripactivity</title>
<script type="text/javascript">
	
</script>
    
</head>
<body>
    <header style="border-bottom:1px solid #e3e3e3;">
        
        <div class="cjh_inner">
            <h1 class="cjh_logo">
                <a href="/admin/admin_main"><img src="/resources/img/LOGO.png" alt="trip&activity logo"></a>    
            </h1>
            
            <div class="cjh_nav2">
                <ul>
                	<c:choose>
                		<c:when test="${loginAdminVO.adminLogin == true}">
                    		<li><a href="/admin/admin_logout">로그아웃</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li><a href="/admin/admin_login">로그인</a></li>
                    		
                		</c:otherwise>
                	</c:choose>
                			<li><a href="/board/listArticles.do">고객센터</a></li>
                </ul>
            </div>
        </div><!--class = inner-->
        
    </header>
   
</body>
</html>