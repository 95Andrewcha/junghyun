<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/product/ac_productList.css">
    
    
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script type="text/javascript" src="/resources/js/ac_productList.js"></script>
    <%@ include file="../main/header.jsp" %>
    <style>
    .pageMaker_wrap{
    	text-align:center;
    	margin-top: 30px;
    	margin-bottom:40px;
    }
    .pageMaker{
    	list-style:none;
    }
    .pageMaker_btn {
    	margin-left:10px;
    	width:40px;
    	height:40px;
    	line-height:40px;
    	display:inline-block;
    }
    .active{
    	border:2px solid #eee;
    	background-color:#eee;
    	border-radius:4px;
    }
    #yj_hide1{
    	display:none;
    }
    #yj_hide2{
    	display:none;
    }
    </style>
</head>
<body>	
    <div class="yj_product_main">
        <div class="yj_product_main1">
            <div class="yj_product_search">
                <div class="yj_product_search_choose">
                    <div class="yj_product_search_pro on">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_hotel_40_x_40_colored.svg" alt="호텔모양아이콘">
                        <span class="yj_product_span_cc">호텔</span>
                    </div>
                    <div class="yj_product_search_pro">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_pension_40_x_40_colored.svg" alt="모텔모양아이콘">
                        <span class="yj_product_span_cc">모텔</span>
                    </div>
                    <div class="yj_product_search_pro">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_jeju_40_x_40_colored.svg" alt="펜션모양아이콘">
                        <span class="yj_product_span_cc">펜션</span>
                    </div>
                </div>
                <div class="yj_product_search_box yj_onAndOff">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value="">
                        </div>
                    </div>
                    <div class="yj_product_search_calendar">
                    	<div class="yj_product_search_calendar_div1">
                        	<span>
                            	<img id="yj_bigImg" class="yj_search_cal" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_calendar_sm_filled_gray_700.svg" alt="calendaricon">
                        	</span>
                        	<input type="text" class="yj_demo" id="yj_demo" name="yj_demo" value="" />
                        </div>
                    </div>
                    <div class="yj_product_search_person">
                    	<div class="yj_product_search_person_div1">
                        	<span>
                       	     	<img id="yj_bigImg" class="yj_search_pp" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_sm_filled_gray_700.svg" alt="personicon">
                        	</span>
                        	<select name="yj_person" class="yj_person_select">
                        		<option value=""> ------</option>
                            	<option value="1">성인 1명</option>
                            	<option value="2"  selected="selected">성인 2명</option>
                            	<option value="3">성인 3명</option>
                            	<option value="4">성인 4명</option>
                            	<option value="5">성인 5명</option>
                            	<option value="6">성인 6명</option>
                            	<option value="7">성인 7명</option>
                            	<option value="8">성인 8명</option>
                            	<option value="9">성인 9명</option>
                            	<option value="10">성인 10명</option>
                        	</select>
                        	<select name="yj_person" class="yj_person_select">
                        		<option value=""> ------</option>
                            	<option value="1">아이 1명</option>
                            	<option value="2">아이 2명</option>
                            	<option value="3">아이 3명</option>
                            	<option value="4">아이 4명</option>
                            	<option value="5">아이 5명</option>
                            	<option value="6">아이 6명</option>
                            	<option value="7">아이 7명</option>
                            	<option value="8">아이 8명</option>
                            	<option value="9">아이 9명</option>
                            	<option value="10">아이 10명</option>
                        	</select>
                        </div>
                        
                    </div>
                    <span role="button" class="yj_search_button">
                        <button type="button" class="yj_button_aa yj_searchbutton">
                            <span class="yj_button_span">검색</span>
                        </button>
                    </span>
                </div>
                <div class="yj_product_search_box yj_onAndOff" style="display: none;">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value="">
                        </div>
                    </div>
                    <div class="yj_product_search_calendar">
                    	<div class="yj_product_search_calendar_div1">
                        	<span>
                            	<img id="yj_bigImg" class="yj_search_cal" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_calendar_sm_filled_gray_700.svg" alt="calendaricon">
                        	</span>
                        	<input type="text" class="yj_demo" id="yj_demo" name="yj_demo" value="" />
                        </div>
                    </div>
                    <div class="yj_product_search_person">
                    	<div class="yj_product_search_person_div1">
                        	<span>
                       	     	<img id="yj_bigImg" class="yj_search_pp" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_sm_filled_gray_700.svg" alt="personicon">
                        	</span>
                        	<select name="yj_person" class="yj_person_select">
                        		<option value=""> ------</option>
                            	<option value="1">성인 1명</option>
                            	<option value="2"  selected="selected">성인 2명</option>
                            	<option value="3">성인 3명</option>
                            	<option value="4">성인 4명</option>
                            	<option value="5">성인 5명</option>
                            	<option value="6">성인 6명</option>
                            	<option value="7">성인 7명</option>
                            	<option value="8">성인 8명</option>
                            	<option value="9">성인 9명</option>
                            	<option value="10">성인 10명</option>
                        	</select>
                        	<select name="yj_person" class="yj_person_select">
                        		<option value=""> ------</option>
                            	<option value="1">아이 1명</option>
                            	<option value="2">아이 2명</option>
                            	<option value="3">아이 3명</option>
                            	<option value="4">아이 4명</option>
                            	<option value="5">아이 5명</option>
                            	<option value="6">아이 6명</option>
                            	<option value="7">아이 7명</option>
                            	<option value="8">아이 8명</option>
                            	<option value="9">아이 9명</option>
                            	<option value="10">아이 10명</option>
                        	</select>
                        </div>
                        
                    </div>
                    <span role="button" class="yj_search_button">
                        <button type="button" class="yj_button_aa yj_searchbutton">
                            <span class="yj_button_span">검색</span>
                        </button>
                    </span>
                </div>
                <div class="yj_product_search_box yj_onAndOff" style="display: none;">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value="">
                        </div>
                    </div>
                    <div class="yj_product_search_calendar">
                    	<div class="yj_product_search_calendar_div1">
                        	<span>
                            	<img id="yj_bigImg" class="yj_search_cal" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_calendar_sm_filled_gray_700.svg" alt="calendaricon">
                        	</span>
                        	<input type="text" class="yj_demo" id="yj_demo" name="yj_demo" value="" />
                        </div>
                    </div>
                    <div class="yj_product_search_person">
                    	<div class="yj_product_search_person_div1">
                        	<span>
                       	     	<img id="yj_bigImg" class="yj_search_pp" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_person_sm_filled_gray_700.svg" alt="personicon">
                        	</span>
                        	<select name="yj_person" class="yj_person_select">
                        		<option value=""> ------</option>
                            	<option value="1">성인 1명</option>
                            	<option value="2"  selected="selected">성인 2명</option>
                            	<option value="3">성인 3명</option>
                            	<option value="4">성인 4명</option>
                            	<option value="5">성인 5명</option>
                            	<option value="6">성인 6명</option>
                            	<option value="7">성인 7명</option>
                            	<option value="8">성인 8명</option>
                            	<option value="9">성인 9명</option>
                            	<option value="10">성인 10명</option>
                        	</select>
                        	<select name="yj_person" class="yj_person_select">
                        		<option value=""> ------</option>
                            	<option value="1">아이 1명</option>
                            	<option value="2">아이 2명</option>
                            	<option value="3">아이 3명</option>
                            	<option value="4">아이 4명</option>
                            	<option value="5">아이 5명</option>
                            	<option value="6">아이 6명</option>
                            	<option value="7">아이 7명</option>
                            	<option value="8">아이 8명</option>
                            	<option value="9">아이 9명</option>
                            	<option value="10">아이 10명</option>
                        	</select>
                        </div>
                        
                    </div>
                    <span role="button" class="yj_search_button">
                        <button type="button" class="yj_button_aa yj_searchbutton">
                            <span class="yj_button_span">검색</span>
                        </button>
                    </span>
                </div>
            </div>
            <div class="yj_product_container">
                <aside class="yj_product_aside">
                    <!-- <div> class가 있엇음
                        <div class="yj_product_couponproduct">
                            <label class="yj_product_couponproduct_label">
                                <input type="checkbox" id="yj_promotion" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="yj_promotion" value="N">
                                <div class="yj_checkbox_label">
                                    <img src="/resources/img/product_all_menu.png" alt="쿠폰" id="yj_bigImg">
                                    <span>숙박대전 쿠폰 상품만 보기</span>
                                </div>
                            </label>
                        </div>
                    </div> -->
                    <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">종류</h3>
                        </div>
                        <div class="yj_product_section_height_aa yj_product_section_height_bb">
                            <ul class="yj_product_section_ui_aa">
                                <li class="yj_product_kinds kind">
                                    <button type="button" class="yj_product_button">
                                        <img src="/resources/img/product_all_menu.png" alt="#" id="yj_bigImg">
                                        전체
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_button">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        호텔
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_button">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        모텔
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_button">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        펜션
                                    </button>
                                </li>
                                
                            </ul>
                        </div>
                    
                    <div class="yj_product__section_header">
                        <h3 class="yj_product_header_h3">필터</h3>
                        <button type="button" class="yj_product_filter_button" style="padding-top:0px; padding-bottom: 0px; font-size:14px; line-height:24px;" disabled>전체 초기화</button>
                    </div>
                    <div class="yj_product__section">
                        <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">시설</h3>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="SWIMMING_POOL">
                                <input type="checkbox" id="SWIMMING_POOL" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="SWIMMING_POOL" value="SWIMMING_POOL">
                                수영장
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="ROOFTOPS">
                                <input type="checkbox" id="ROOFTOPS" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="ROOFTOPS" value="ROOFTOPS">
                                루프탑
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="FITNESS">
                                <input type="checkbox" id="FITNESS" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="FITNESS" value="FITNESS">
                                피트니스
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="RESTAURANT">
                                <input type="checkbox" id="RESTAURANT" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="RESTAURANT" value="RESTAURANT">
                                레스토랑
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="SPA">
                                <input type="checkbox" id="SPA" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="SPA" value="SPA">
                                스파
                            </label>
                        </div>
                      <div id="yj_hide1">
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="GOLF_FIELD">
                                <input type="checkbox" id="GOLF_FIELD" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="GOLF_FIELD" value="GOLF_FIELD">
                                골프장
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="PUBLIC_SHOWER">
                                <input type="checkbox" id="PUBLIC_SHOWER" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PUBLIC_SHOWER" value="PUBLIC_SHOWER">
                                공용샤워장
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="PUBLIC_SPA">
                                <input type="checkbox" id="PUBLIC_SPA" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PUBLIC_SPA" value="PUBLIC_SPA">
                                공용스파
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="PUBLIC_KITCHEN">
                                <input type="checkbox" id="PUBLIC_KITCHEN" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PUBLIC_KITCHEN" value="PUBLIC_KITCHEN">
                                공용주방
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="PUBLIC_TOILET">
                                <input type="checkbox" id="PUBLIC_TOILET" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PUBLIC_TOILET" value="PUBLIC_TOILET">
                                공용화장실
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="KARAOKE">
                                <input type="checkbox" id="KARAOKE" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="KARAOKE" value="KARAOKE">
                                노래방
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="BASDETBALL_FIELD">
                                <input type="checkbox" id="BASDETBALL_FIELD" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="BASDETBALL_FIELD" value="BASDETBALL_FIELD">
                                농구장
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="CONVENIENCE_STORE">
                                <input type="checkbox" id="CONVENIENCE_STORE" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="CONVENIENCE_STORE" value="CONVENIENCE_STORE">
                                매점/편의점
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa1">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="BARBEQUE_GRILLS">
                                <input type="checkbox" id="BARBEQUE_GRILLS" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="BARBEQUE_GRILLS" value="BARBEQUE_GRILLS">
                                바베큐장
                            </label>
                        </div>
                      </div>
                        <div>
                            <button class="yj_product_kinds_all1" id="yj_btn1" type="button">
                                모두 보기
                            </button>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">서비스</h3>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="BREAKFAST">
                                <input type="checkbox" id="BREAKFAST" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="BREAKFAST" value="BREAKFAST">
                                조식서비스
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="BAR">
                                <input type="checkbox" id="BAR" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="BAR" value="BAR">
                                바/라운지
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="ROOM_SERVICE">
                                <input type="checkbox" id="ROOM_SERVICE" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="ROOM_SERVICE" value="ROOM_SERVICE">
                                룸서비스
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="FREE_PARKING">
                                <input type="checkbox" id="FREE_PARKING" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="FREE_PARKING" value="FREE_PARKING">
                                무료주차
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="PETS_ALLOWED">
                                <input type="checkbox" id="PETS_ALLOWED" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PETS_ALLOWED" value="PETS_ALLOWED">
                                반려동물 동반가능
                            </label>
                        </div>
                       <div id="yj_hide2">
                        <div class="yj_product_checkbox_hide--aa2">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="NO_SMOKING">
                                <input type="checkbox" id="NO_SMOKING" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="NO_SMOKING" value="NO_SMOKING">
                                금연
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa2">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="VALET_PARKING">
                                <input type="checkbox" id="VALET_PARKING" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="VALET_PARKING" value="VALET_PARKING">
                                발렛파킹
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa2">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="FREE_WIFI">
                                <input type="checkbox" id="FREE_WIFI" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="FREE_WIFI" value="FREE_WIFI">
                                WIFI
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa2">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="PARKING_AVAILABLE">
                                <input type="checkbox" id="PARKING_AVAILABLE" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PARKING_AVAILABLE" value="PARKING_AVAILABLE">
                                주차가능
                            </label>
                        </div>
                        <div class="yj_product_checkbox_hide--aa2">
                            <label class="yj_product_checkboxItem_hide--ab yj_checkboxModule_hide--ac yj_checkboxModule_hide--ad" for="PRIVATE_LOCKER">
                                <input type="checkbox" id="PRIVATE_LOCKER" class="yj_checkboxModule--ae yj_checkboxModule--ad" name="PRIVATE_LOCKER" value="PRIVATE_LOCKER">
                                개인사물함
                            </label>
                        </div>
                      </div>
                        <div>
                            <button class="yj_product_kinds_all2" id="yj_btn2" type="button">
                                모두 보기
                            </button>
                        </div>
                    </div>
                    </div>
                </div>
                </aside>
                <article class="yj_product_article">
                    <div class="yj_product_searching">
                    <c:if test="${ac_productListCheck == 'empty' }">
                    	 <h2 class="yj_product_searching_header">검색된 숙소 0개</h2>
                    </c:if>
                    <c:if test="${ac_productListCheck != 'empty' }">
                         <h2 class="yj_product_searching_header">검색된 숙소 ${pageMaker.total}개</h2>
                    </c:if>
                        <ul class="yj_product_searching_goods_aa">
                            <li class="yj_product_searching_goods_li yj_product_searching_goods_bold">
                                <button type="button" class="yj_product_searching_button">
                                    ・추천순
                                </button>
                            </li>
                            <li class="yj_product_searching_goods_li">
                                <button type="button" class="yj_product_searching_button">
                                    ・가격 낮은순
                                </button>
                            </li>
                            <li class="yj_product_searching_goods_li">
                                <button type="button" class="yj_product_searching_button">
                                    ・가격 높은순
                                </button>
                            </li>
                        </ul>
                    </div>
                   <!-- 게시물이 없을 경우  -->
                  <c:if test="${ac_productListCheck == 'empty' }">
                  		<div class="yj_null">
                  			검색된 결과가 없습니다.
                  		</div>
                  </c:if>
                  <c:if test="${ac_productList != 'empty' }">
                  <c:forEach var="list" items="${ac_productList}">
                    <div class="yj_product_section_aa">
                        <a href="/product/ac_productDetail.do?ac_ProductNum=${list.ac_ProductNum }" >
                            <div class="yj_product_section_bb">
                                <div class="yj_product_div_aa">
                                    <div class="yj_product_div_bb">
                                        <div class="yj_product_div_cc" data-ac_productnum="${list.imageList[0].ac_ProductNum}" data-path="${list.imageList[0].uploadPath}" data-uuid="${list.imageList[0].uuid}" data-filename="${list.imageList[0].fileName}">
                                            <img alt="사진파일" class="yj_product_daejeon1">
                                        </div>
                                    </div>
                                </div>
                                <div class="yj_product_div_dd">
                                    <div class="yj_product_div_ee">
                                        <h2 class="yj_product_h2_aa yj_product_h2_bb">${list.ac_CompanyName }</h2>
                                        <div class="yj_product_div_ff">
                                            <c:if test="${list.ac_Stars eq '' }">
                                            	<p class="yj_product_p_aa"> ・ ${list.ac_Add }</p>
                                            </c:if>
                                            <c:if test="${list.ac_Stars ne '' }">
                                            	<p class="yj_product_p_aa">${list.ac_Stars }성급 ・ ${list.ac_Add }</p>
                                            </c:if>
                                        </div>
                                        <!-- <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">숙박대전 쿠폰</strong>
                                        </span>
                                        <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">선착순 포인트 할인</strong>
                                        </span> -->
                                    </div>
                                    <div class="yj_product_price_ee">
                                        <div class="yj_product_price_aa">
                                            <div class="yj_product_price_bb">
                                                <div class="yj_product_price_cc">
                                                    <div class="yj_product_price_dd">
                                                      <c:if test="${list.ac_stayDiscount ne 0 }">
                                                        <div class="yj_product_couponPrice_aa">
                                                            <strong class="yj_product_discountPrice_aa"><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.ac_n_sPrice * list.ac_stayDiscount}" pattern="-#,###원"/></strong>
                                                            <span class="yj_product_originalPrice_aa">
                                                                <del><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.ac_n_sPrice }" pattern="#,###원"/></del>
                                                            </span>
                                                        </div>
                                                        <h1 class="yj_product_Price_aa">
                                                            <span class="yj_product_benefitPrice_aa"><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.ac_n_sPrice - (list.ac_n_sPrice * list.ac_stayDiscount)}" pattern="#,###원"/></span>
                                                        </h1>
                                                      </c:if>
                                                      <c:if test="${list.ac_stayDiscount eq 0 }">
                                                      		<h1 class="yj_product_Price_aa">
                                                            	<span class="yj_product_benefitPrice_aa"><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.ac_n_sPrice - (list.ac_n_sPrice * list.ac_stayDiscount)}" pattern="#,###원"/></span>
                                                        	</h1>
                                                      </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                      </div>
                    </c:forEach>
                    </c:if>
                     <c:if test="${ac_productListCheck != 'empty' }">
                    <!-- 페이지 이동 인터페이스 영역 -->
                    <div class="pageMaker_wrap" >
                    
	                    <ul class="pageMaker">
	                    
	                    	<!-- 이전 버튼 -->
	                    	<c:if test="${pageMaker.prev}">
	                    		<li class="pageMaker_btn prev">
	                    			<a href="${pageMaker.startPage - 1}"><img src="https://cdn-icons-png.flaticon.com/128/54/54321.png" id="yj_bigImg"></a>
	                    		</li>
	                    	</c:if>
	                    	
	                    	<!-- 페이지 번호 -->
	                    	<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
	                    		<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
	                    			<a href="${num}">${num}</a>
	                    		</li>
	                    	</c:forEach>
	                    	
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.endPage + 1 }"><img src="https://cdn-icons-png.flaticon.com/128/54/54833.png" id="yj_bigImg"></a>
	                    		</li>
	                    	</c:if>
	                    	
	                    </ul>
	                    
                    </div>
                    </c:if>
                    <c:if test="${ac_productListCheck == 'empty' }">
                    </c:if>
                    <form action="/product/ac_productList" id="moveForm" method="get">
                    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                    	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                    </form>
                </article> 
            </div>
        </div>
    </div>
    <%@ include file="../main/right_recent_watch_product.jsp" %>
<script>
let moveForm = $('#moveForm');

//페이지 이동 버튼
$('.pageMaker_btn a').on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
})

//필터 쪽 시설 모두 보기 , 접기 토글
$('.yj_product_kinds_all1').click(function(){
    if(document.getElementById('yj_hide1').style.display === 'block') {
      document.getElementById('yj_hide1').style.display = 'none';
      document.getElementById('yj_btn1').textContent = '모두 보기';
    } else {
      document.getElementById('yj_hide1').style.display = 'block';
      document.getElementById('yj_btn1').textContent = '접기';
    }
  });

//필터 쪽 서비스 모두 보기, 접기 토글
$('.yj_product_kinds_all2').click(function(){
    if(document.getElementById('yj_hide2').style.display === 'block') {
      document.getElementById('yj_hide2').style.display = 'none';
      document.getElementById('yj_btn2').textContent = '모두 보기';
    } else {
      document.getElementById('yj_hide2').style.display = 'block';
      document.getElementById('yj_btn2').textContent = '접기';
    }
  });

$(document).ready(function(){
	
	//상품 목록에 이미지 삽입
	$('.yj_product_div_cc').each(function(i,obj){
		
		const bobj = $(obj);
		
		if(bobj.data("ac_productnum")){
			const uploadPath = bobj.data("path");
			const uuid = bobj.data("uuid");
			const fileName = bobj.data("filename");
			const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
			
			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
		} else {
			$(this).find("img").attr('src', '/resources/img/notImage.png');
		} 
	});
	
	
});

</script>
    
</body>
<%@ include file="../main/footer.jsp" %>
</html>