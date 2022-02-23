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
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/resources/css/common/header.css">
	<link rel="stylesheet" href="/resources/css/reset.css">
	<link href="/resources/img/logo1.png" rel="icon">
  	<link href="/resources/img/logo1.png" rel="apple-touch-icon">
    <title>Tripactivity</title>
<script type="text/javascript">
	var loopSearch=true;
	function keywordSearch(){
		if(loopSearch==false)
			return;
	 var value=document.frmSearch.searchWord.value;
		$.ajax({
			type : "get",
			async : true, //false인 경우 동기식으로 처리한다.
			url : "/product/keywordSearch.do",
			data : {keyword:value},
			success : function(data, textStatus) {
			    var jsonInfo = JSON.parse(data);
				displayResult(jsonInfo);
			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다."+data);
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");
				
			}
		}); //end ajax	
	}
	
	function displayResult(jsonInfo){
		var count = jsonInfo.keyword.length;
		if(count > 0) {
		    var html = '';
		    for(var i in jsonInfo.keyword){
			   html += "<a href=\"javascript:select('"+jsonInfo.keyword[i]+"')\">"+jsonInfo.keyword[i]+"</a><br/>";
		    }
		    var listView = document.getElementById("suggestList");
		    listView.innerHTML = html;
		    show('suggest');
		}else{
		    hide('suggest');
		} 
	}
	
	function select(selectedKeyword) {
		 document.frmSearch.searchWord.value=selectedKeyword;
		 loopSearch = false;
		 hide('suggest');
	}
		
	function show(elementId) {
		 var element = document.getElementById(elementId);
		 if(element) {
		  element.style.display = 'block';
		 }
		}
	
	function hide(elementId){
	   var element = document.getElementById(elementId);
	   if(element){
		  element.style.display = 'none';
	   }
	}
</script>
    
</head>
<body>
    <header>
        
        <div class="cjh_inner">
            <h1 class="cjh_logo">
                <a href="/main/main"><img src="/resources/img/LOGO.png" alt="trip&activity logo"></a>    
            </h1>
            <div class="cjh_search">
            <form action="/product/ac_productList" method="get" name="frmSearch">
                <input type="text" name="keyword" class="cjh_input_search_text" placeholder="도시나 상품을 검색하세요." >
                <input type="submit" class="searchBtn" value="검색">
            </form>
            </div>
            <div class="cjh_nav2">
                <ul>
                	<c:choose>
                		<c:when test="${isLogOn != null }">
                    		<li><a href="/member/logout.do">로그아웃</a></li>
                    		<li><a href="cart.do">장바구니</a></li>
                    		<li><a href="/mypage/MypageMain">마이페이지</a></li>
                    	</c:when>
                    		<c:when test="${cisLogOn != null }">
                    		<li><a href="/member/logout.do">로그아웃</a></li>
                    		<li><a href="cart.do">장바구니</a></li>
                    		<li><a href="/mypage/c_MypageMain">마이페이지</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li><a href="/member/login">로그인</a></li>
                    		<li><a href="/member/selectJoin">회원가입</a></li>
                		</c:otherwise>
                	</c:choose>
                			<li><a href="/board/notice">고객센터</a></li>
                </ul>
            </div>
        </div><!--class = inner-->
        <div class="cjh_inner_bottom">
            <div class="inb">
                <nav id="cjh_gnb">
                    
                    <ul>
                        <li><a href="#" class="cjh_header_cate opacity_0">aa</a>
                            <ul class="cjh_depth2 opacity_0">
                                <li><a href="#" class="opacity_0">aa</a></li>
                                <li><a href="#" class="opacity_0">aa</a></li>
                                <li><a href="#" class="opacity_0">aa</a></li>
                            </ul>
                        </li>
                        <li><a href="/product/ac_productList" class="cjh_header_cate">숙박</a>
                            <ul class="cjh_depth2">
                                <li><a href="/product/ac_productList?ac_Kind=1">호텔</a></li>
                                <li><a href="/product/ac_productList?ac_Kind=2">모텔</a></li>
                                <li><a href="/product/ac_productList?ac_Kind=3">펜션</a></li>
                            </ul>
                        </li>
                        <li><a href="#" class="cjh_header_cate">교통</a>
                            <ul class="cjh_depth2">
                                <li><a href="#">기차</a></li>
                                <li><a href="#">버스</a></li>
                            </ul>
                        </li>
                        <li><a href="/product/le_productList" class="cjh_header_cate">레저</a>
                            <ul class="cjh_depth2">
                                <li><a href="/product/le_productList.do">수상액티비티</a></li>
                                <li><a href="/product/le_productList.do">실내액티비티</a></li>
                                <li><a href="/product/le_productList.do">아웃도어</a></li>
                            </ul>
                        </li><!--레저-->
                        <li><a href="#" class="cjh_header_cate">이벤트</a>
                            <ul class="cjh_depth2">
                                <li><a href="#">쿠폰 받기</a></li>
                                <li><a href="#">금일의 핫 딜</a></li>
                            </ul>
                        </li>
                        <li class="for_bottom_border">
                            <a href="#" class="cjh_header_cate">
                                <div class="cjh_whether">
                                    <div class="cjh_icon">쨍긋(icon)</div>
                                    <div class="cjh_location">대전</div>
                                    <div class="cjh_temp">-2도</div>
                                </div>
                            </a>
                            <ul class="cjh_depth2">
                                <li class="depth2_img"><a href="#"><img src="/resources/img/weather_img.png"></a></li>
                            </ul>
                        </li>
                        <div class="slow_down"></div>
                    </ul><!--nav 첫번쨰 ul-->
                </nav>  
            </div><!--cjh_gnb-->          
        </div><!--inner_bottom-->
        
    </header>
    <div class="for_margin"></div>
</body>
</html>