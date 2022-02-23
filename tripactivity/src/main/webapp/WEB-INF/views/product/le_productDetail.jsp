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
    <link rel="stylesheet" href="/bootstrap/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/product/le_productDetail.css">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <%@ include file="../main/header.jsp" %>
</head>

<body>
    <article>
        <div class="yj_product_details_main_div">
            <div class="yj_product_details_div_aa">
                <div class="yj_product_details_div_bb">
                    <article class="yj_product_details_article">
                        <!-- header 시작-->
                        <article class="yj_product_details_header_aa">
                            <div class="yj_product_details_div_cc">
                                <h2 class="yj_product_details_h2_aa yj_product_details_h2_bb yj_product_details_h2_cc">
                                    [서울 홍대] 브레이크 아웃 이스케이프 방탈출
                                </h2>
                                <div class="yj_product_details_div_dd">
                                    <p class="yj_product_details_p_aa"></p>
                                </div>
                                <div class="yj_product_details_div_ee">
                                    <address class="yj_product_details_address_aa yj_product_details_address_bb">
                                        <img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_location_sm_line_gray_700.svg"
                                            alt="맵모양 아이콘" class="yj_product_details_mapIcon_aa">
                                        서울특별시 마포구 와우산로 102(3,4층)
                                    </address>
                                    <div class="yj_product_details_div_ff">
                                        <img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_clock_sm_outline_gray_700.svg"
                                            alt="시계아이콘" class="yj_product_details_watchIcon_aa">
                                        유효기간 (~2021.12.31) 내 사용
                                    </div>
                                </div>
                            </div>
                            <div class="yj_product_details_div_gg">
                                <a href="https://www.google.com/maps/search/?api=1&query=서울 마포구 와우산로 102"
                                    target="_blank" rel="noopener noreferrer" role="button" tabindex="0"
                                    class="yj_product_link_aa">
                                    <img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_map_md_line_blue_500.svg"
                                        alt="지도책 아이콘" style="margin-right:6px; margin-bottom:2px;">
                                    위치보기
                                </a>
                            </div>
                        </article>
                        <!-- header 끝 -->
                        <article class="yj_product_details_section_cc">

                            <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
                                class="swiper mySwiper2">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                </div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                            <div thumbsSlider="" class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/resources/img/room_esecape1.jpg" />
                                    </div>
                                </div>
                            </div><!-- swiper 끝 -->

                        </article>

                    </article>
                </div>
            </div>
        </div>
    </article>
    <div class="yj_tab">
        <button class="on">
            <span>상품선택/예약</span>
        </button>
        <button class="">
            <span>액티비티정보</span>
        </button>
        <button class="">
            <span>리뷰</span>
        </button>
        <button class="">
            <span>상품문의</span>
        </button>
    </div>
    <article class="yj_room_info yj_tabMenu">
        <div class="yj_btn_date">
            <!--<span class="yj_date_view" id="yj_daterangepacker">
        <b>11.29~11.30</b>
        <em>&nbsp;ㆍ&nbsp;1박</em>
    </span>
    <strong>변경</strong>-->
            <input type="text" id="yj_demo" name="yj_demo" value="2021/12/06" />
        </div>
        <div class="yj_le_product_article">
            <div class="yj_le_product_div_aa">
                <div class="yj_le_product_div_bb">
                    <div class="yj_product_div_cc">
                        <div class="yj_product_div_left">
                            <h3 class="yj_product_div_left_h3">
                                A-1 [2인권] 주중 이용권
                            </h3>
                            <div class="yj_product_left_div">
                                <ul>
                                    <li>
                                        * 전연령 공통/인원 추가 시 추가 인원당 24,000원 현장결제
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="yj_product_div_right">
                            <div class="yj_product_right_aa">
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_noPrice">
                                        미사용 전액환불
                                    </span>
                                </div>
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_prePrice">
                                        48,000원
                                    </span>
                                </div>
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_nowPrice">
                                        40,000원
                                    </span>
                                </div>
                            </div>
                            <div>
                                <button onclick="form_btn(-1)">-</button>
                                <input type="text" id="text" class="yj_product_text" value="0" />
                                <button onclick="form_btn(1)">+</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="yj_le_product_div_aa">
                <div class="yj_le_product_div_bb">
                    <div class="yj_product_div_cc">
                        <div class="yj_product_div_left">
                            <h3 class="yj_product_div_left_h3">
                                A-1 [2인권] 주중 이용권
                            </h3>
                            <div class="yj_product_left_div">
                                <ul>
                                    <li>
                                        * 전연령 공통/인원 추가 시 추가 인원당 24,000원 현장결제
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="yj_product_div_right">
                            <div class="yj_product_right_aa">
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_noPrice">
                                        미사용 전액환불
                                    </span>
                                </div>
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_prePrice">
                                        48,000원
                                    </span>
                                </div>
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_nowPrice">
                                        40,000원
                                    </span>
                                </div>
                            </div>
                            <div>
                                <button onclick="form_btn2(-1)">-</button>
                                <input type="text" id="text2" class="yj_product_text" value="0" />
                                <button onclick="form_btn2(1)">+</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="yj_le_product_div_aa">
                <div class="yj_le_product_div_bb">
                    <div class="yj_product_div_cc">
                        <div class="yj_product_div_left">
                            <h3 class="yj_product_div_left_h3">
                                A-1 [2인권] 주중 이용권
                            </h3>
                            <div class="yj_product_left_div">
                                <ul>
                                    <li>
                                        * 전연령 공통/인원 추가 시 추가 인원당 24,000원 현장결제
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="yj_product_div_right">
                            <div class="yj_product_right_aa">
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_noPrice">
                                        미사용 전액환불
                                    </span>
                                </div>
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_prePrice">
                                        48,000원
                                    </span>
                                </div>
                                <div class="yj_product_right_priceDiv">
                                    <span class="yj_product_nowPrice">
                                        40,000원
                                    </span>
                                </div>
                            </div>
                            <div>
                                <button onclick="form_btn3(-1)">-</button>
                                <input type="text" id="text3" class="yj_product_text" value="0" />
                                <button onclick="form_btn3(1)">+</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </article>
    <article class="yj_details_info yj_tabMenu" id="wrapper" style="display:none;">
        <div class="container">
            <ul class="accordion">
                <li class="item">
                    <h2 class="accordionTitle">상품 상세 정보 <span class="accIcon"></span></h2>
                    <div class="text">
                        <img src="/resources/img/le_Detail_img.jpg">
                        <img src="/resources/img/le_Detail_img2.jpg">
                        <img src="/resources/img/le_Detail_img3.jpg">
                        <img src="/resources/img/le_Detail_img4.jpg">
                        <img src="/resources/img/le_Detail_img5.jpg">
                        <img src="/resources/img/le_Detail_img6.jpg">
                        <img src="/resources/img/le_Detail_img7.jpg">

                    </div>
                </li>
                <li class="item">
                    <h2 class="accordionTitle">이용 안내 <span class="accIcon"></span></h2>
                    <div class="text"><strong>이용 시간</strong>
                        <div>
                            사용 방법<br>
                            * 유효기간 : ~2021.12.31<br><br>

                            1. 이용 1시간 전 원하는 상품 구매 (당일구매/당일사용 가능)<br>
                            *별도의 SMS는 전송되지 않습니다.<br>
                            2. 구매 1시간 후 예약 홈페이지로 직접예약 부탁 드립니다. 별도의 결제는 진행되지 않습니다. (요청사항에 구매사이트와 결제자 성함 기입 필수)<br>
                            * 문의전화 : 02-336-3527<br>
                            * 예약홈페이지 : https://breakoutescapehongik.modoo.at/<br>
                            3. 현장방문, 고객 성함 및 휴대폰번호 뒷 4자리 확인 후 이용<br><br>

                            추가정보<br>
                            * 애완동물 반입이 금지되어 있습니다.<br>
                            * 모든 할인은 중복 적용되지 않습니다.<br>
                            * 안전상의 시설 점검으로 인한 일부 시설 이용에 제한이 있을 수 있습니다.<br>
                            * 재판매 등 불법 거래 시 문제가 될 수 있습니다.<br>
                            * 주말 및 공휴일에는 매우 혼잡할 수 있으며, 입장 대기시간이 발생할 수 있습니다.<br>
                            * 8세 이하 어린이는 부모 동반 시 입장이 가능합니다.<br>
                            * 내부 시설 파손시 손해 배상 책임이 있습니다.<br><br>

                            [업체정보]<br>
                            * 업체정보 : [홍대] 브레이크 아웃 이스케이프<br>
                            * 업체주소 : (지번주소) 서울특별시 마포구 서교동 338-48<br>
                            * (도로명주소) 서울특별시 마포구 와우산로 102, 3층, 4층<br>
                            * 업체문의 : 02-336-3527<br>
                            * 영업시간 : 11:40~24:00(주중) / 10:30~24:00(주말)<br>
                            * 매표마감 : 23:00<br>
                            * 휴 무 : 연중무휴<br>
                            * 최소이용가능나이 : 초등학생(단, 보호자 동반 입장시)<br>
                            * 주 차 : 불가<br><br>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <h2 class="accordionTitle">취소 및 환불 규정 <span class="accIcon"></span></h2>
                    <div class="text">
                        * 유효기간 내 미사용티켓 100% 환불가능<br>
                        * 유효기간 후 환불 불가<br>
                        * 사용한 티켓은 환불 불가능합니다.<br>
                        * 2인 이상 다인권의 미사용 인원수에 대한 부분 환불 불가<br>


                    </div>
                </li>

            </ul>
        </div>

    </article>
    <article class="yj_review yj_tabMenu" style="display: none;">
        <!--<div class="star-rating">
    <input type="radio" id="5-stars" name="rating" value="5" />
    <label for="5-stars" class="star">&#9733;</label>
    <input type="radio" id="4-stars" name="rating" value="4" />
    <label for="4-stars" class="star">&#9733;</label>
    <input type="radio" id="3-stars" name="rating" value="3" />
    <label for="3-stars" class="star">&#9733;</label>
    <input type="radio" id="2-stars" name="rating" value="2" />
    <label for="2-stars" class="star">&#9733;</label>
    <input type="radio" id="1-star" name="rating" value="1" />
    <label for="1-star" class="star">&#9733;</label>
  </div>-->
        <div class="yj_review_div_aa">
            <strong>추천해요</strong>
            <div class="yj_score_wrap">
                <div class="yj_score_star star_45"></div>
                <div class="yj_num">9.5</div>
            </div>
            <p>
                전체 리뷰
                <b>2</b>
                <span>|</span>
                제휴점 답변
                <b>0</b>
            </p>
        </div>
        <ul>
            <li>
                <div class="yj_review_guest">
                    <p class="yj_review_picture">
                        <img src="/resources/img/review_onestar.png" alt="재밌게놀쟈">
                    </p>
                    <strong>여기만한 곳은 어디에도 없을 거예요.</strong>
                    <div class="yj_score_wrap_sm">
                        <div class="yj_score_star star_50"></div>
                        <div class="yj_review_num">10.0</div>
                    </div>
                    <div class="yj_review_name">
                        <b>Standard(넷플릭스, 1PC, 65인치 TV) 객실 이용 · </b>
                        재밌게놀쟈
                    </div>
                    <div class="yj_review_text">
                        자주이용합니다자주이용합니다자주이용합니다자주이용합니다자주이용합니다자주이용합니다자주이용합니다자주이용합니다
                    </div>
                    <span class="yj_review_date">20시간 전</span>
                </div>
            </li>
            <li>
                <div class="yj_review_guest">
                    <p class="yj_review_picture">
                        <img src="/resources/img/review_onestar.png" alt="도곡동곡괭이">
                    </p>
                    <strong>여기만한 곳은 어디에도 없을 거예요.</strong>
                    <div class="yj_score_wrap_sm">
                        <div class="yj_score_star star_50"></div>
                        <div class="yj_review_num">10.0</div>
                    </div>
                    <div class="yj_review_name">
                        <b>Standard(넷플릭스, 1PC, 65인치 TV) 객실 이용 · </b>
                        도곡동곡괭이
                    </div>
                    <div class="yj_review_text">
                        조용하고 깨끗하고 좋아요... 주변에 먹을 곳도 많구요... 이 근처에서는 여기가 가장 괜찮습니다... 금연 객실이라 담배 냄새도 안납니다... 자주 이용합니다...
                        추천합니다...
                    </div>
                    <span class="yj_review_date">20시간 전</span>
                </div>
            </li>
        </ul>
    </article>
    <article class="yj_QnA yj_tabMenu">
        <div class="container">
            <section id="contact" class="contact">
                <div class="section-title" data-aos="zoom-out">
                    <p>상품 문의하기</p>
                </div>
                <div class="col-12">
                    <button type="button" class="btn-outline-secondary" style="float:right" value="#">글쓰기</button>
                </div>

                <table class="table table-hover">
                    <thead class="text-center">
                        <tr>
                            <th>번호</th>
                            <th>회원ID</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>공개 여부</th>
                            <th>첨부파일</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <td>5</td>
                            <td>chan0632</td>
                            <td>비밀글입니다.</td>
                            <td>2021-11-30</td>
                            <td>비공개</td>
                            <td>있음</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>thakd0632</td>
                            <td>안녕하세요!</td>
                            <td>2021-11-30</td>
                            <td>공개</td>
                            <td>없음</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>tkfkd123</td>
                            <td>비밀글입니다.</td>
                            <td>2021-11-30</td>
                            <td>비공개</td>
                            <td>있음</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>jeju000</td>
                            <td>비밀글입니다.</td>
                            <td>2021-11-30</td>
                            <td>비공개</td>
                            <td>있음</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>love0632</td>
                            <td>안녕하세요!</td>
                            <td>2021-11-30</td>
                            <td>공개</td>
                            <td>없음</td>
                        </tr>

                    </tbody>
                </table>

                <div class="text-center">
                    <ul class="pagination justify-content-center">
                        <li class="page-item"><a class="page-link" href="">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="">1</a></li>
                        <li class="page-item"><a class="page-link" href="">2</a></li>
                        <li class="page-item"><a class="page-link" href="">3</a></li>
                        <li class="page-item"><a class="page-link" href="">Next</a></li>
                    </ul>
                </div>
            </section>
        </div>
    </article>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            loop: true,
            spaceBetween: 10,
            slidesPerView: 4,
            freeMode: true,
            watchSlidesProgress: true,
        });
        var swiper2 = new Swiper(".mySwiper2", {
            loop: true,
            spaceBetween: 10,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            thumbs: {
                swiper: swiper,
            },
        });

        var swiper = new Swiper(".mySwiper3", {
            lazy: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
        // variables
        var accordionBtn = document.querySelectorAll('.accordionTitle');
        var allTexts = document.querySelectorAll('.text');
        var accIcon = document.querySelectorAll('.accIcon');

        // event listener
        accordionBtn.forEach(function (el) {
            el.addEventListener('click', toggleAccordion)
        });

        // function
        function toggleAccordion(el) {
            var targetText = el.currentTarget.nextElementSibling.classList;
            var targetAccIcon = el.currentTarget.children[0];
            var target = el.currentTarget;

            if (targetText.contains('show')) {
                targetText.remove('show');
                targetAccIcon.classList.remove('anime');
                target.classList.remove('accordionTitleActive');
            }
            else {
                accordionBtn.forEach(function (el) {
                    el.classList.remove('accordionTitleActive');

                    allTexts.forEach(function (el) {
                        el.classList.remove('show');
                    })

                    accIcon.forEach(function (el) {
                        el.classList.remove('anime');
                    })

                })

                targetText.add('show');
                target.classList.add('accordionTitleActive');
                targetAccIcon.classList.add('anime');
            }
        }

        $(document).ready(function () {
            $(".yj_tab button").click(function () {
                var idx = $(this).index();
                $(".yj_tab button").removeClass("on");
                $(".yj_tab button").eq(idx).addClass("on");
                $(".yj_tabMenu").hide();
                $(".yj_tabMenu").eq(idx).show();
            })
        });
        $(function () {
            $('#yj_demo').daterangepicker({
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
                    "firstDay": 6
                },
                "singleDatePicker": true,
                "startDate": moment().startOf("day"),
                "endDate": moment().startOf("day").add(1,"day"),
                "drops": "down"
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        });

        function form_btn(n) {

            var text = document.getElementById("text"); // 폼 선택

            text_val = parseInt(text.value); // 폼 값을 숫자열로 변환

            text_val += n; // 계산

            text.value = text_val; // 계산된 값을 바꾼다

            if (text_val < 0) {
                text.value = 0;   // 만약 값이 0 이하면 1로 되돌려준다, 1보다 작은 수는 나타나지 않게하기 위해   
            }

        }
        function form_btn2(n) {

            var text = document.getElementById("text2"); // 폼 선택

            text_val = parseInt(text.value); // 폼 값을 숫자열로 변환

            text_val += n; // 계산

            text.value = text_val; // 계산된 값을 바꾼다

            if (text_val < 0) {
                text.value = 0;   // 만약 값이 0 이하면 1로 되돌려준다, 1보다 작은 수는 나타나지 않게하기 위해   
            }

        }
        function form_btn3(n) {

            var text = document.getElementById("text3"); // 폼 선택

            text_val = parseInt(text.value); // 폼 값을 숫자열로 변환

            text_val += n; // 계산

            text.value = text_val; // 계산된 값을 바꾼다

            if (text_val < 0) {
                text.value = 0;   // 만약 값이 0 이하면 1로 되돌려준다, 1보다 작은 수는 나타나지 않게하기 위해   
            }

        }



    </script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>