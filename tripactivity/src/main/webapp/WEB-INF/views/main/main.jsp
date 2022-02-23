<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Tripactivity</title>

<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="/resources/css/common/header.css">

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<%@ include file="../main/header.jsp" %>
      

</head>
<body>

    <div class="margin-top"></div>
<%--    <content>
        <div class="cjh_bg"></div>
        <h2 class="cjh_h2">Welcome</h2>
        <h3 class="cjh_h3">TripActivity</h3>
    </content> --%>

    <main>

        <div class="swiper mySwiper">
            <div class="swiper-wrapper ">
              <div class="swiper-slide"><img src="/resources/img/main_slide(01).png" alt="main slide1"></div>
              <div class="swiper-slide"><img src="/resources/img/main_slide(02).jpg" alt="main slide2"></div>
              <div class="swiper-slide"><img src="/resources/img/main_slide(03).jpg" alt="main slide"></div>
              <div class="swiper-slide"><img src="/resources/img/main_slide(04).jpg" alt="main slide2"></div>
              <div class="swiper-slide"><img src="/resources/img/main_slide(05).jpg" alt="main slide"></div>

            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
          </div>
         <!-- 메인 슬라이드 --><!-- 확인용 
         <div class="cjh_slide" id="cjh_slide2">
            <ul>
                <li><a href="#"><img src="main_banner.png" alt="메인 슬라이드"></a></li>
            </ul>
        </div>-->
        <!-- 베스트 상품 틀 -->
        <div class="cjh_bar_name ">
            <h1>베스트 상품</h1>
        </div>
        <!-- 상품 작은 이미지 -->
        <div class="cjh_best_container">
            <a href="ac_Product.do" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            
        </div>

        <!--두번쨰-->
         <!-- 베스트 상품 틀 -->
         <div class="cjh_bar_name ">
            <h1>베스트 상품</h1>
        </div>
        <!-- 상품 작은 이미지 -->
        <div class="cjh_best_container">
            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            
        </div>

         <!-- 베스트 상품 틀 -->
         <div class="cjh_bar_name ">
            <h1>베스트 상품</h1>
        </div>
        <!-- 상품 작은 이미지 -->
        <div class="cjh_best_container">
            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            
        </div>

         <!-- 베스트 상품 틀 -->
         <div class="cjh_bar_name ">
            <h1>베스트 상품</h1>
        </div>
        <!-- 상품 작은 이미지 -->
        <div class="cjh_best_container">
            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            <a href="#" class="cjh_first_best_a cjh_best_box">
                <div class="cjh_first_best_img">
                    <img src="/resources/img/recent_image01.jpg">
                </div><!--cjh_first_best_img-->
                    <div class="cjh_text_box">
                        <div class="cjh_best_cate">
                            <p>숙박/호텔 대전</p>
                        </div>
                        <div class="cjh_best_title">
                            <p>[당일사용 가능]대전광역시 그린아트 호텔</p>
                        </div>
                        <div class="cjh_best_price">
                           <div class="cjh_start_score">★★★★★</div>
                           <div class="cjh_price">
                               <div class="before_price"><span class="price_line">30000</span><span>원</span></div>
                               <div class="after_price">17900원</div>
                           </div>
                        </div>
                    </div>
            </a>

            
        </div>


      
      
    </main>
    
    <div id="nav">
	<%@ include file="../main/footer.jsp" %>
	</div>
    <div id="nav">
	<%@ include file="../main/left_banner.jsp" %>
</div>
<div id="nav">
	<%@ include file="../main/right_recent_watch_product.jsp" %>
</div>   
   
</body>

 
<!-- Swiper JS -->
      <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
        const header_cate =document.getElementsByClassName('cjh_header_cate');
        const inner_bottom = document.getElementsByClassName('cjh_inner_bottom');
        const depth2=document.getElementsByClassName('cjh_depth2');
        const map=document.getElementsByClassName('cjh_map');
        
       
        
        for(i=0; i<header_cate.length; i++){
            header_cate[i].addEventListener('click', function(){
                inner_bottom[0].style.height ="400px";
                map[0].style.display="block";
               
                for(i=0; i<depth2.length; i++){
                    depth2[i].style.display="block";
                    
                }
              
            })
        }
       

        
    
        /*swiper script*/

        var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 400000,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
</html>
