<!-- 김찬영 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
   request.setCharacterEncoding("UTF-8");
   String id=request.getParameter("memName");
   String phone = request.getParameter("memphone");
%>
<% String recentURI = request.getParameter("action"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <style>
        *{margin: 0; padding: 0; list-style:none;  text-decoration:none; }
        ul{padding: 0 !important;}
    
   .loginbox{width:330px; 
        height:430px; 
        border:1px solid #48c5de; 
        margin:auto; 
        padding:25px 15px; 
        box-sizing:border-box;
        text-align:center; 
    }
     
    .loginbox h1{   
        display: flex;
        width:100%; 
        height:40px; 
        font-size: 28px; 
        color:#48c5de; 
        border-bottom:1px solid #48c5de; 
        padding-left:40px; 
        box-sizing:border-box; 
        background-image:url(images/titleIcon.gif); 
        background-repeat:no-repeat; background-position: 3px 5px; 
        margin-bottom:30px;
    
    }
    
    #loginid, #loginpw{width:200px; 
        height:25px; border:1px solid #333; 
        box-sizing:border-box; 
        margin-bottom:10px;
    }
    
    #c_loginid, #c_loginpw{width:200px; 
        height:25px; border:1px solid #333; 
        box-sizing:border-box; 
        margin-bottom:10px;
    }
    
    .labelid{font-size:14px; 
        color:#666; 
        margin-left:15px; 
        margin-right: 22px;
    }
    
    .labelpw{font-size:14px; 
        color:#666; 
        margin-left:15px; margin-right: 8px;}
    
    #chk{width:100%; 
        text-align:right; 
        padding-right:13px; 
        box-sizing:border-box;
    }
    
    #chk1{width:100%; 
        text-align:right; 
        padding-right:13px; 
        box-sizing:border-box;
    }
    
    #chk label{font-size:12px;
         color:#333; 
         position:relative; 
         top:-3px;}
         
          #chk1 label{font-size:12px;
         color:#333; 
         position:relative; 
         top:-3px;}
    
    
    .search{width:100%; 
        height:40px; 
        border-bottom:1px dashed #333; 
        box-sizing:border-box; 
        line-height:40px; 
        text-align:center; 
        margin-bottom:20px;
    }
    
    .search span{font-size:11px; 
        color:#333;
    }
    
    .search a{font-size:12px; 
        text-decoration:none; 
        background-color: #48c5de; 
        color:#1d1d1d; 
        padding:3px 5px; 
        border-radius:3px; 
        margin-left:5px;
    }
     
    .btnwrap{width:100%; 
        text-align:center; 
    }
    
    .btnwrap label{position:absolute; 
        left:-999em;
    }
    
    .btnwrap a{width:129px; 
        height:35px; 
        text-align:center;
        background-color: #48c5de; 
        text-decoration: none; 
        display: inline-block; 
        border-radius:3px; 
        color:#1d1d1d; 
        font-size:14px; 
        font-weight: bold; 
        line-height: 35px;
    }
    
    #loginbtn{width:129px; 
    height:35px; border:none; 
    background-color: #48c5de; 
    border-radius:3px; 
    color:#1d1d1d; 
    font-size:14px; 
    font-weight:bold; 
    position:relative; 
    top:1px;
    }
    
    #loginbtn1{width:129px; 
    height:35px; border:none; 
    background-color: #48c5de; 
    border-radius:3px; 
    color:#1d1d1d; 
    font-size:14px; 
    font-weight:bold; 
    position:relative; 
    top:1px;
    }
    .login_container{position:relative;}
    .normal_login{position:absolute; z-index:100; opacity:0; transition:all .3s ease-in-out;}
    .normal_login.on{opacity:1;}
    
    .sns_login{line-height:40px; margin-top:30px;}
    .sns_login ul li{background:green; margin-bottom:10px; display: flex;
    justify-content: flex-start;}
    
    .sns_login ul li>a{color:#f3f3f3;}
    .sns_login ul li:nth-child(2){background:yellow;}
    .sns_login ul li:nth-child(2)>a{color:#1d1d1d;}
    .sns_login ul li a>img{width: 30px;
        height: 30px;
        vertical-align: middle;
        margin-right: 30px;}

        .sns_login ul li a{margin-left:40px;}
    
        
    
        .login_w>ul{width:100%;display:flex;
        justify-content: space-around;}
        .login_w>ul>li{width:50%; line-height:30px; margin-bottom:20px; cursor:pointer;}
    
        .customer_login{background:skyblue;}
        .company_login{background:mediumspringgreen;}
    
            .c_login{position:absolute; z-index:100; opacity:0; transition:all .3s ease-in-out;}

            
           .on{opacity:1; z-index:10000;}
           
	.login_warn{
    	margin-top: 30px;
    	text-align: center;
    	color : red;
	}
    </style>
<%@ include file="../main/header.jsp" %>

</head>
<body>

<div class="container">
<section>
     <div class="section-title" data-aos="zoom-out">
          <h2>Login</h2>
          <p>로그인</p>
        </div>
    <div class="loginbox">
        <div class="login_w">
            <ul>
                <li class="customer_login">개인회원 로그인</li>
                <li class="company_login">기업회원 로그인</li>
            </ul>
        </div>
        <div class="login_container">
        <form action="/member/n_ilogin.do" class="normal_login on" method="post">
            <label for="loginid" class="labelid">아이디</label>
            <input name="n_Id"type="text" id="n_id"><br />
            <label for="loginpw" class="labelpw">패스워드</label>
            <input name="n_Pw1" type="password" id="n_pw1">
            <c:if test="${result == 0 }">
            	<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            </c:if>
            <div class="chk">
                <input type="checkbox" id="idchk">
                <label for="idchk">아이디 저장</label>
                <input type="checkbox" id="pwchk">
                <label for="pwchk">비밀번호 저장</label>
            </div>
            <div class="search">
                <span class="text">아이디 또는 비밀번호를 잊으셨나요?</span>
                <a href="Find_Id">ID</a><a href="Find_Pw">PW 찾기</a>
            </div>
            <div class="btnwrap">
                <a href="/member/selectJoin">회원가입</a>
                <input type="submit" id="loginbtn" value="로그인">
                <label for="loginbtn">로그인버튼</label>
            </div>
            
            <div class="sns_login">
                <ul>
                    <li><a href="#"><img src="/resources/img/naver.png">네이버 로그인</a></li>
                    <li><a href="#"><img src="/resources/img/kakaotalk.PNG">카카오톡 로그인</a></li>
                </ul>
            </div>
        
        </form>
    
        <form action="/member/c_login.do" class="c_login" method="post">
            <label for="loginid1" class="labelid">아이디</label>
            <input name="c_Id" type="text" id="c_id"><br />
            <label for="loginpw1" class="labelpw">패스워드</label>
            <input name="c_Pw1" type="password" id="c_pw1">
            <c:if test="${result == 0 }">
            	<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            </c:if>
            <div class="chk">
                <input type="checkbox" id="idchk1">
                <label for="idchk1">아이디 저장</label>
                <input type="checkbox" id="pwchk1">
                <label for="pwchk1">비밀번호 저장</label>
            </div>
            <div class="search">
                <span class="text">아이디 또는 비밀번호를 잊으셨나요?</span>
                <a href="Find_Id">ID</a><a href="Find_Pw">PW 찾기</a>
            </div>
            <div class="btnwrap">
                <a href="selectJoin">회원가입</a>
                <input type="submit" id="loginbtn1" value="로그인">
                <label for="loginbtn">로그인버튼</label>
            </div>
        </form>
    </div>
    </div>
    </section>
   </div>
   <div id="nav">
	<%@ include file="../main/footer.jsp" %>
</div>
    <script>
        
        let normal_login=document.querySelector('.normal_login');
        let c_login=document.querySelector('.c_login');
        let company_login = document.querySelector('.company_login');
        let customer_login=document.querySelector('.customer_login');
        

        company_login.addEventListener('click', function(){
            c_login.classList.add('on');
            normal_login.classList.remove('on');

            
        });

        

        customer_login.addEventListener('click', function(){
            normal_login.classList.add('on');
            c_login.classList.remove('on');

       
        });
        
       
       /*normal.sytle.opacity:0;*/
     
    </script>
</body>
</html>