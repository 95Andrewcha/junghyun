<!-- 차정현 -->
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
            <div class="cjh_label" onclick="location.href='/board/notice';">공지사항</div>
        </div>
        
        <div class="cjh_contentBx">
            <div class="cjh_label" onclick="location.href='/board/faq';">자주 묻는 질문</div>
            
        </div><!--content bx-->
       
        <div class="cjh_contentBx">
            <div class="cjh_label" onclick="location.href='/board/inquiry';">1:1 문의하기</div>
            
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