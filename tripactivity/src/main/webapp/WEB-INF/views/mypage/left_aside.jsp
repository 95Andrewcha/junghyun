<!-- κΉμμ -->
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
            <div class="cjh_label"><a href="/mypage/MypageMain">λ§μ΄νμ΄μ§</a></div>
        </div>
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/mypage/Minfo_PW">νμ μ λ³΄ μμ </a></div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">μμ½ μ λ³΄</div>
            <div class="cjh_content">
                <ul>
                    <li><a href="#">μμ½ μ‘°ν</a></li>
                    <li><a href="#">μμ½ λ³κ²½</a></li>
                    <li><a href="#">μμ½ μ·¨μ</a></li>
                    
                </ul>
            </div><!--content-->
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">μμ½ μ·¨μ λ΄μ­</div>
            
        </div><!--content bx-->
        
        <div class="cjh_contentBx">
            <div class="cjh_label">μ¦κ²¨ μ°ΎκΈ°</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/mypage/cart">μ₯λ°κ΅¬λ</a></div>

        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">μν λ¦¬λ·°</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">μΏ ν°</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label">νμ λ±κΈ μλ΄</div>
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label"><a href="/member/n_del">νμ νν΄</a></div>
            
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