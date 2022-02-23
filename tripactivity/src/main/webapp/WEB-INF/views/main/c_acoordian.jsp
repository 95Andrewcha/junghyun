<!-- 차정현 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/reset.css">
    <style>
        
        
        .cjh_body_accordion{
           width:200px;
           position:absolute;
           margin-left:120px;
           margin-top:50px;
        }
        .cjh_accordion{
            width:200px;

        }
        .cjh_accordion .cjh_contentBx{
            position:relative;
            margin:10px 20px;
        }

        .cjh_accordion .cjh_contentBx .cjh_label{
            position:relative;
            padding:10px;
            background:#fff;
            color:#1d1d1d;
            cursor:pointer;
            border-bottom:1px solid #E3e3e3;
            font-size:17px;

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
            height:100%;
            padding:10px;
        }
        .cjh_accordion .cjh_contentBx.active .cjh_plus:before{
            content:'-';
        }
        
        .cjh_accordion .cjh_contentBx .cjh_content>ul{
            width:100%;
            padding:0 !important;
        }
        .cjh_accordion .cjh_contentBx .cjh_content>ul>li{
            padding:10px;
            border-bottom:1px solid #E3e3e3;
            font-size:14px;
        }
        .cjh_accordion .cjh_contentBx .cjh_content>ul>li>a{
            text-decoration:none;
            color:#030303;
        }
    </style>
</head>
<body>
<div class="cjh_body_accordion">
    <div class="cjh_accordion">
        <div class="cjh_contentBx">
            <div class="cjh_label">마이페이지</div>
        </div>
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">기업회원</div>
            <div class="cjh_content">
                <ul>
                    <li><a href="/product/ac_enrollManage">숙박 업체 관리</a></li>
                    <li><a href="/product/le_enrollManage">레저 업체 관리</a></li>
                    <li><a href="/product/roomManage">객실 관리</a></li>
                    <li><a href="/product/ticketManage">티켓 관리</a></li>
                    <li><a href="">예약 회원 관리</a></li>
                </ul>
            </div><!--content-->
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">회원 정보 수정</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">예약 조회/변경</div>
            <div class="cjh_content">
                <ul>
                    <li><a href="#">예약 조회</a></li>
                    <li><a href="#">예약 변경</a></li>
                    
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
            <div class="cjh_label">장바구니</div>

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
            <div class="cjh_label">회원 탈퇴</div>
            
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