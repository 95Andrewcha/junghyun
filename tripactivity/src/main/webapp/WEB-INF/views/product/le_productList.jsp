<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/product/le_productList.css">
    
    
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script>
      $(function () {
            $('.yj_demo').daterangepicker({
                "locale": {
                    "format": "YYYY-MM-DD",
                    "separator": " ~ ",
                    "applyLabel": "확인",
                    "cancelLabel": "취소",
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    "firstDay": 0
                },
                "startDate": moment().startOf("day"),
                "endDate": moment().startOf("day").add(1,"day"),
                "drops": "down"
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        });

        $(document).ready(function(){
       	 $(".yj_product_search_pro").click(function() {
           var idx = $(this).index();
           $(".yj_product_search_pro").removeClass("on");
           $(".yj_product_search_pro").eq(idx).addClass("on");
           $(".yj_onAndOff").hide();
           $(".yj_onAndOff").eq(idx).show();
         });
         
         $(".yj_product_kinds").click(function() {
           var idx = $(this).index();
           $(".yj_product_kinds").removeClass("kind");
           $(".yj_product_kinds").eq(idx).addClass("kind");

         });
       });
    </script>
    <%@ include file="../main/header.jsp" %>
</head>
<body>

    <div class="yj_product_main">
        <div class="yj_product_main1">
            <div class="yj_product_search">
                <div class="yj_product_search_choose">
                    <div class="yj_product_search_pro on">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_hotel_40_x_40_colored.svg" alt="호텔모양아이콘">
                        <span class="yj_product_span_cc">수상액티비티</span>
                    </div>
                    <div class="yj_product_search_pro">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_pension_40_x_40_colored.svg" alt="모텔모양아이콘">
                        <span class="yj_product_span_cc">실내액티비티</span>
                    </div>
                    <div class="yj_product_search_pro">
                        <img class="yj_icon" src="https://dffoxz5he03rp.cloudfront.net/icons/ic_accommodation_jeju_40_x_40_colored.svg" alt="펜션모양아이콘">
                        <span class="yj_product_span_cc">아웃도어</span>
                    </div>
                </div>
                <div class="yj_product_search_box yj_onAndOff">
                    <div class="yj_product_search_text">
                        <div class="yj_product_search_text_aa">
                            <span>
                                <img id="yj_bigImg" class="yj_search_img" src="https://cdn-icons-png.flaticon.com/128/17/17589.png" alt="mapicon">
                            </span>
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value>
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
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value>
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
                            <input type="text" placeholder="지역명을 입력해주세요." class="yj_input_text" value>
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
                    <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">종류</h3>
                        </div>
                        <div class="yj_product_section_height_aa yj_product_section_height_bb">
                            <ul class="yj_product_section_ui_aa">
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="/resources/img/leisure_all_menu.png" alt="#" id="yj_bigImg">
                                        전체
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        수상액티비티
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        실내액티비티
                                    </button>
                                </li>
                                <li class="yj_product_kinds">
                                    <button type="button" class="yj_product_botton">
                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDx0ZXh0IGZpbGw9IiM2NjZENzUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1mYW1pbHk9IlNGUHJvVGV4dC1Cb2xkLCBTRiBQcm8gVGV4dCIgZm9udC1zaXplPSIxNiIgZm9udC13ZWlnaHQ9ImJvbGQiIGxldHRlci1zcGFjaW5nPSItLjQ1NyI+CiAgICAgICAgPHRzcGFuIHg9IjIuNSIgeT0iMTUuNSI+IzwvdHNwYW4+CiAgICA8L3RleHQ+Cjwvc3ZnPgo=" alt="#">
                                        아웃도어
                                    </button>
                                </li>
                                
                            </ul>
                            <hr>
                        </div>
                    </div>
                    <div class="yj_product__section_header">
                        <h3 class="yj_product_header_h3">필터</h3>
                        <button type="button" class="yj_product_filter_button" style="padding-top:0px; padding-bottom: 0px; font-size:14px; line-height:24px;" disabled>전체 초기화</button>
                    </div>
                    <div class="yj_product__section">
                        <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">소요 시간</h3>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_time_all">
                                <input type="radio" name="yj_radio" id="yj_time_all" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_time_all" checked>
                                전체
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_twohour_in">
                                <input type="radio" name="yj_radio" id="yj_twohour_in" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                2시간 이내
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_twohour_fourhour">
                                <input type="radio" name="yj_radio" id="yj_twohour_fourhour" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                2시간~4시간
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_fourhour_sixhour">
                                <input type="radio" name="yj_radio" id="yj_fourhour_sixhour" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                4시간~6시간
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_sixhour_over">
                                <input type="radio" name="yj_radio" id="yj_sixhour_over" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_radio">
                                6시간 이상
                            </label>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <div class="yj_product__section_header">
                            <h3 class="yj_product_header_h3">만나는 시간</h3>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for=yj_meettime_all>
                                <input type="radio" name="yj_radio2" id="yj_meettime_all" class="yj_checkboxModule--ae yj_checkboxModule--ad" value=yj_meettime_all checked>
                                전체
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_meettime_twelve">
                                <input type="radio" name="yj_radio2" id="yj_meettime_twelve" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_meettime_twelve">
                                오전 (낮 12시 이전)
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_meettime_twelve_six">
                                <input type="radio" name="yj_radio2" id="yj_meettime_twelve_six" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_meettime_twelve_six">
                                오후 (낮 12시 ~ 오후 6시)
                            </label>
                        </div>
                        <div class="yj_product_checkbox--aa">
                            <label class="yj_product_checkboxItem--ab yj_checkboxModule--ac yj_checkboxModule--ad" for="yj_meettime_six_over">
                                <input type="radio" name="yj_radio2" id="yj_meettime_six_over" class="yj_checkboxModule--ae yj_checkboxModule--ad" value="yj_meettime_six_over">
                                저녁 (오후 6시 이후)
                            </label>
                        </div>
                    </div>
                </div>
                </aside>
                <article class="yj_product_article">
                    <div class="yj_product_searching">
                    <c:if test="${le_productListCheck == 'empty' and le_productList.le_Kind == 1 }">
                    	 <h2 class="yj_product_searching_header">0개의 액티비티</h2>
                    </c:if>
                    <c:if test="${le_productListCheck != 'empty' }">
                        <h2 class="yj_product_searching_header">${pageMaker.total}개의 액티비티</h2>
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
                  	<c:if test="${le_productListCheck == 'empty' }">
                  		<div class="yj_null">
                  			검색된 결과가 없습니다.
                  		</div>
                  	</c:if>
                  	<c:if test="${le_productList != 'empty' }">
                  	<c:forEach var="list" items="${le_productList}">
                    <div class="yj_product_section_aa">
                        <a href="/product/le_productDetail.do?le_ProductNum=${list.le_ProductNum }">
                            <div class="yj_product_section_bb">
                                <div class="yj_product_div_aa">
                                    <div class="yj_product_div_bb">
                                        <div class="yj_product_div_cc" data-le_productnum="${list.imageList[0].le_ProductNum}" data-path="${list.imageList[0].uploadPath}" data-uuid="${list.imageList[0].uuid}" data-filename="${list.imageList[0].fileName}">
                                            <img alt="레저업체메인이미지" class="yj_product_daejeon1">
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="yj_product_div_dd">
                                    <div class="yj_product_div_ee">
                                        <h2 class="yj_product_h2_aa yj_product_h2_bb">${list.company_Name }</h2>
                                        <c:if test="${list.le_Kind == 1 }">
                                        	<div class="yj_product_div_ff">
                                            	<p class="yj_product_p_aa">수상액티비티 ・ ${list.le_Area }</p>
                                        	</div>
                                       	</c:if>
                                       	<c:if test="${list.le_Kind == 2 }">
                                        	<div class="yj_product_div_ff">
                                            	<p class="yj_product_p_aa">실내액티비티 ・ ${list.le_Area }</p>
                                        	</div>
                                       	</c:if>
                                       	<c:if test="${list.le_Kind == 3 }">
                                        	<div class="yj_product_div_ff">
                                            	<p class="yj_product_p_aa">아웃도어 ・ ${list.le_Area }</p>
                                        	</div>
                                       	</c:if>
                                        <!-- <span class="yj_product_span_aa yj_product_span_bb">
                                            <strong class="yj_product_strong_aa yj_product_strong_bb">쿠폰 사용가능</strong>
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
                                                    <c:if test="${list.le_ticketDiscount ne 0 }">
                                                        <div class="yj_product_couponPrice_aa">
                                                        	<strong class="yj_product_discountPrice_aa"><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.le_n_Price * list.le_ticketDiscount}" pattern="-#,###원"/></strong>
                                                            <span class="yj_product_originalPrice_aa">
                                                                <del><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.le_n_Price }" pattern="#,###원"/></del>
                                                            </span>
                                                        </div>
                                                        <h1 class="yj_product_Price_aa">
                                                            <span class="yj_product_benefitPrice_aa"><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.le_n_Price - (list.le_n_Price * list.le_ticketDiscount) }" pattern="#,###원"/></span>
                                                        </h1>
                                                    </c:if>
                                                    <c:if test="${list.le_ticketDiscount eq 0 }">
                                                    	<h1 class="yj_product_Price_aa">
                                                            <span class="yj_product_benefitPrice_aa"><fmt:formatNumber type="number" maxFractionDigits="0" value="${list.le_n_Price - (list.le_n_Price * list.le_ticketDiscount) }" pattern="#,###원"/></span>
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
                     <c:if test="${le_productListCheck != 'empty' }">
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
                    <c:if test="${le_productListCheck == 'empty' }">
                    </c:if>
                    <form action="/product/le_productList" id="moveForm" method="get">
                    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
                    	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
                        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
                    </form>
                </article> 

            </div>

        </div>
    </div>
    
    
</body>
<%@ include file="../main/footer.jsp" %>
<script>
let moveForm = $('#moveForm');

//페이지 이동 버튼
$('.pageMaker_btn a').on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
})

$(document).ready(function(){
	
	//상품 목록에 이미지 삽입
	$('.yj_product_div_cc').each(function(i,obj){
		
		const bobj = $(obj);
		
		if(bobj.data("le_productnum")){
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
</html>