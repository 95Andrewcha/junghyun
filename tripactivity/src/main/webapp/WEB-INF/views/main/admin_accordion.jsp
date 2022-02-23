<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

 <style>
 *{margin:0; padding:0; list-style:none; text-decoration:none;
        box-sizing:border-box;}
        .left_sider{position:sticky; top:0;}
  /*accordion*/
  .cjh_body_accordion{
           width:100%;
           height:100%;
        }
        .cjh_accordion{
            width:100%;
            height:100%;
            background:#2694af;

        }
        .cjh_accordion .cjh_contentBx{
            position:relative;
            height:auto;
           
        }

        .cjh_accordion .cjh_contentBx .cjh_label{
            position:relative;
            padding:30px;
            background:#2694af;
            color:#fff;
            cursor:pointer;
            height:auto;

        }
        
        .cjh_accordion .cjh_contentBx .cjh_label>a{
        color:#fff;}
        .cjh_accordion .cjh_contentBx .cjh_plus::before{
            content:"+";
            position:absolute;
            top:50%;
            right:30px;
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
            <div class="cjh_label"><a href="admin_main">Admin</a></div>
        </div>
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">회원 관리</div>
            <div class="cjh_content">
                <ul>
                 	<li><a href="admin_join">관리자 회원 가입</a></li>
                 	<li><a href="admin_inf_modify">관리자 정보 수정</a>
                    <li><a href="manage/admin_see_member_info">회원관리</a></li>
                    <li><a href="manage/admin_member_see_grade.do">회원등급관리</a></li>
                    <li><a href="manage/admin_withdraw_manage.do">회원탈퇴관리</a></li>
                    <li><a href="manage/admin_c_member_manage01.do">기업회원관리</a></li>
                </ul>
            </div><!--content-->
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">숙박 레저 관리</div>
            <div class="cjh_content">
                <ul>
                    <li><a href="#">숙박 관리</a></li>
                    <li><a href="product/admin_lei_manage.do">레저 관리</a></li>
                    
                </ul>
            </div><!--content-->
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">주문 상품 관리</div>
            <div class="cjh_content">
            	<ul>
            		<li><a href="#">상품 예약 관리</a></li>
            		<li><a href="#">취소/환불 관리</a></li>
            	</ul>
            </div>
        </div><!--content bx-->

        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">프로모션</div>
            <div class="cjh_content">
            	<ul>
            		<li><a href="coupon/admin_coupon.do">쿠폰 관리</a>

            		
            	</ul>
            </div>
            
           
            
        </div><!--content bx-->
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">고객 센터 관리</div>
            <div class="cjh_content">
                <ul>
                    <li><a href="/admin/notice/admin_busi_inquiry_manage">기업 문의 관리</a></li>
                    <li><a href="/admin/admin_cus_inquiry_mange.do">고객 문의 관리</a></li>
                    <li><a href="/admin/admin_notice.do">공지사항 관리</a>
                    
                </ul>
            </div><!--content-->
        </div><!--content bx-->
        <div class="cjh_contentBx">
        	<div class="cjh_label cjh_plus">팝업 관리</div>
        	<div class="cjh_content">
        		<ul>
        			<li><a href="#">팝업 관리</a>
        		</ul>
        	</div><!-- cjh_content -->
        </div><!-- content_bx -->
        
      <!-- 
        <div class="cjh_contentBx">
            <div class="cjh_label cjh_plus">정산 및 통계</div>
            <div class="cjh_content">
            	<ul>
            		<li><a href="#">간편 매출 통계</a>
            		<li><a href="#">최다 빈도 상품 통계</a>
            		<li><a href="#">입접 업체 정산 등록</a>
					<li><a href="#">입접업체 정산 환불</a>
					<li><a href="#">입점 업체 정산 관리</a>
					
            		
            	</ul>
       		</div><!--ccjh_content 
       </div>-->
       <div class="cjh_contentBx">  
       		<div class="cjh_label"></div>
       </div>
		  
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