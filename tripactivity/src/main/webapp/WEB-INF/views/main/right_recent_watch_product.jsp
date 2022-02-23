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
/* right recent_wathcer_banner*/
.fa-chevron-left{font-size:25px; color:skyblue;}
    .fa-chevron-right{font-size:25px; color:skyblue;}
.cjh_fixed{outline:1px solid skyblue;}
    .cjh_left_container{width:180px; position:fixed;; top:20%; right:4%; display:flex; flex-direction:column;
         justify-content: center; align-items:center; transition:all .3s ease-in-out; background-color:white;}
    .cjh_left_container_box{width:90%; margin-top:15px;}
    div.cjh_left_container_box:nth-child(2){
        height:100px;
    }
    div.cjh_left_container_box:nth-child(3){
        height:100px;
    }
    
    .cjh_left_container_box>a{width:100%;  text-align:center;}
    .cjh_left_container_box>a>img{width:100%; height:100%; text-align:center; display:block}
    .cjh_left_container_first_box{display:flex; flex-direction:column;}
    .cjh_left_container_first_box>a{background-color:#e3e3e3; margin-bottom:5px; line-height:30px; display:block; text-decoration:none;}
</style>
</head>
<body>
  <div class="cjh_left_container cjh_fixed">
            <div class="cjh_left_container_box cjh_left_container_first_box cjh_img">
                <a href="#">최근 본 상품</a>
                <a href="#">장바구니</a>
            </div>
            <div class="cjh_for_padding">
                <div class="cjh_left_container_box cjh_left_container_second_box cjh_recent_img">
                    <a href="#"><img src="${contextPath }/resources/img/recent_image01.jpg" alt="최근본 상품 이미지"></a>
                </div>
                <div class="cjh_left_container_box cjh_left_container_third_box cjh_recent_img">
                    <a href="#"><img src="${contextPath }/resources/img/recent_image02.png" alt="최근본 상품 이미지"></a>
                </div>
                <div class="cjh_left_container_box cjh_left_container_second_box cjh_recent_img">
                    <a href="#"><img src="${contextPath }/resources/img/recent_image01.jpg" alt="최근본 상품 이미지"></a>
                </div>
                <div class="cjh_left_container_box cjh_left_container_second_box cjh_recent_img">
                    <a href="#"><img src="${contextPath }/resources/img/recent_image01.jpg" alt="최근본 상품 이미지"></a>
                </div>
    
                
            </div><!-- for_padding -->
            <div class="cjh_fixed_bottom">
                <div class="cjh_button_left cjh_fixed_btn">
                    <a href="#"><i class="fas fa-chevron-left"></i></a>
                </div>
                <div class="cjh_button_right cjh_fixed_btn">
                    <a href="#"><i class="fas fa-chevron-right"></i></a>
                </div>
            </div>
        </div><!-- left_container -->
</body>
</html>