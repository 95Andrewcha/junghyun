<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta>
<title>Insert title here</title>
<style>
.cjh_fixed_btn{display:block; width:50%; padding:10px 30px;}
    .cjh_fixed_btn>a{display:block;}

    .cjh_fixed_bottom{display:flex;}

    .cjh_sell_banner_container{display:flex; flex-direction:column; width:200px; position:fixed; top:20%; left:3%; background:#e3e3e3;}
    
    
    .cjh_sell_banner>ul{width:100%; height:100%; padding:0; margin-bottom:0;}
    .cjh_sell_banner>ul>li>a>img{width:100%; height:100%;}
    
    #cjh_sell_banner_close{ text-align:right; padding:5px; background:#e3e3e3; margin-right:5px; cursor:pointer;}
    .cjh_sell_banner_close>a{padding:5px; }

    .cjh_recent_img{margin:0 auto; margin-top:15px;}

    footer{width:100%;
    height:300px; background:#e3e3e3; margin-top:100px;}
</style>
</head>
<body>
  <div class="cjh_sell_banner_container">
            <div class="cjh_sell_banner">
                <ul>
                    <li><a href="#"><img src="${contextPath }/resources/img/left_banner.png"></a></li>
                </ul>
            </div>
            <div id="cjh_sell_banner_close">
                <a herf="#" class="cjh_sell_banner_close">닫기</a>
            </div>
        </div>
        <script>
	        var cjh_sell_banner_close = document.getElementsByClassName('cjh_sell_banner_close');
	        var cjh_sell_banner_container = document.getElementsByClassName('cjh_sell_banner_container');
	        for(i=0; i<cjh_sell_banner_close.length; i++){
	            cjh_sell_banner_close[i].addEventListener('click', function(){
	            	cjh_sell_banner_container[0].style.display="none";
	            })
	        }
        </script>
</body>
</html>