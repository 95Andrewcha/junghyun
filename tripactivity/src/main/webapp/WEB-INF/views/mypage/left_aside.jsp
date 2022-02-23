<!-- 김예은 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>left_aside</title>
    <link rel="stylesheet" href="/resources/css/reset.css">
    <style>
        a:active-color {
        	color:#fff;
        }
        a:visited {
        	color:#fff;
        }
        
        .cjh_body_accordion{
           width:200px;
          
        }
        .cjh_accordion{
            width:200px;
			 float:left;
			 margin-left:50px;
        }
        .cjh_accordion .cjh_contentBx{
            position:relative;
            margin:10px 20px;
        }

        .cjh_accordion .cjh_contentBx .cjh_label{
            position:relative;
            padding:10px;
            background:#2694af;
            color:#fff;
            cursor:pointer;

        }
        .cjh_accordion .cjh_contentBx .cjh_plus::before{
            content:"+";
            position:absolute;
            top:50%;
            right:10px;
            transform:translateY(-50%);
            font-size:1.5em;
        }
        .cjh_accordion .cjh_contentBx .cjh_content{
            position:relative;            
            background:#fff;
            height:0;
            overflow:hidden;
            transition:0.4s;
            overflow-y:auto;
        }
        .cjh_accordion .cjh_contentBx.active .cjh_content{
            height:auto;
            padding:10px;                     
        }
        .cjh_accordion .cjh_contentBx.active .cjh_plus:before{
            content:'-';
        }
        
        .cjh_accordion .cjh_contentBx .cjh_content>ul{
            width:100%;
        }
        .cjh_accordion .cjh_contentBx .cjh_content>ul>li{
            padding:10px;
            border-bottom:1px solid #E3e3e3;
        }
        .cjh_accordion .cjh_contentBx .cjh_content>ul>li>a{
            text-decoration:none;
            color:#030303;
        }
    </style>
    <script>
    	$("a").click(function() {
    		toggleClass(".active-color");
    	});
    </script>
</head>
<body>
<div class="cjh_body_accordion">
    <div class="cjh_accordion">
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/mypage/MypageMain">마이페이지</a></div>
        </div>
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/mypage/Minfo_PW">회원 정보 수정</a></div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">예약 정보</div>
            <div class="cjh_content">
                <ul>
                    <li><a href="#">예약 조회</a></li>
                    <li><a href="#">예약 변경</a></li>
                    <li><a href="#">예약 취소</a></li>
                    
                </ul>
            </div><!--content-->
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">예약 취소 내역</div>
            
        </div><!--content bx-->
        
        <div class="cjh_contentBx">
            <div class="cjh_label">즐겨 찾기</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/mypage/cart">장바구니</a></div>

        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">상품 리뷰</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">쿠폰</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">회원 등급 안내</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/member/n_del">회원 탈퇴</a></div>
            
        </div><!--content bx-->
        
    </div><!--accordion-->
</div><!--body_accordion-->
    <script>
        const accordion = document.getElementsByClassName('cjh_contentBx');

        for(i=0; i<accordion.length; i++){
            accordion[i].addEventListener('click', function(){
                this.classList.toggle('active');
            })
        }

    </script>
    
</body>
</html>