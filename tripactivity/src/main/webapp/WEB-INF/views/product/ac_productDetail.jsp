<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/product/ac_productDetail.css">
        <link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
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
                                        ${ac_enrollDetail.ac_CompanyName}
                                    </h2>
                                    <div class="yj_product_details_div_dd">
                                        <p class="yj_product_details_p_aa"></p>
                                    </div>
                                    <div class="yj_product_details_div_ee">
                                        <address class="yj_product_details_address_aa yj_product_details_address_bb">
                                            <img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_location_sm_line_gray_700.svg" alt="맵모양 아이콘" class="yj_product_details_mapIcon_aa">
                                            ${ac_enrollDetail.ac_Add}
                                        </address>
                                        <div class="yj_product_details_div_ff">
                                            <img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_clock_sm_outline_gray_700.svg" alt="시계아이콘" class="yj_product_details_watchIcon_aa">
                                            입실시간 ${roomDetail.ac_s_startTime} ~ 퇴실시간 ${roomDetail.ac_s_endTime}
                                        </div>
                                    </div>
                                </div>
                                <div class="yj_product_details_div_gg">
                                    <a href="https://www.google.com/maps/search/?api=1&query=${ac_enrollDetail.ac_Add}" target="_blank" rel="noopener noreferrer" role="button" tabindex="0" class="yj_product_link_aa">
                                        <img src="https://dffoxz5he03rp.cloudfront.net/icons/ic_map_md_line_blue_500.svg" alt="지도책 아이콘" style="vertical-align:middle;">
                                        위치보기
                                    </a>
                                </div>
                            </article>
                            <!-- header 끝 -->
    <!-- Swiper 시작 -->
<article class="yj_product_details_section_cc"> 
                             
    <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2">
        <div class="swiper-wrapper">
        <c:set var="i" value="0"/>
        <c:forEach items="${ac_enrollDetail2}" var="image" begin="0" end="10">
        	<div class="yj_detailMain swiper-slide"  data-ac_productnum="${image.imageList[i].ac_ProductNum}"
        	 data-path="${image.imageList[i].uploadPath}" data-uuid="${image.imageList[i].uuid}" data-filename="${image.imageList[i].fileName}">
          	 	<img />
       		</div>
       		<c:set var="i" value="${i+1}"/>
      </c:forEach>
         
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
        <c:set var="i" value="0"/>
        <c:forEach items="${ac_enrollDetail2}" var="image">
        	<div class="yj_detailThumbs swiper-slide"   data-ac_productnum="${image.imageList[i].ac_ProductNum}"
        	 data-path="${image.imageList[i].uploadPath}" data-uuid="${image.imageList[i].uuid}" data-filename="${image.imageList[i].fileName}">
            	<img />
        	</div>
        	<c:set var="i" value="${i+1}"/>
        </c:forEach>
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
        <span>객실예약/안내</span>
    </button>
    <button class="">
        <span>숙소정보</span>
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
			<input type="text" id="yj_demo" name="yj_demo" value="" />
		</div>
		<c:forEach items="${ac_roomList}" var="room">
			<c:if test="${ac_enrollDetail.ac_Kind eq 2}">
				<div class="yj_room">
					<p class="yj_pic_view"  data-ac_roomnum="${room.imageList[0].ac_roomNum}" data-path="${room.imageList[0].uploadPath}" data-uuid="${room.imageList[0].uuid}" data-filename="${room.imageList[0].fileName}">
						<img class="yj_lazy" alt="객실이미지" style="display: inline;">
					</p>
					<strong class="yj_title">${room.ac_roomName}</strong>

					<div class="yj_info">
						<div class="yj_info_half">
							<div class="yj_info_half_price">
								<strong>대실</strong>
								<div>
									<p>
										<b style="color: #1d1d1d"><fmt:formatNumber type="number" pattern="#,###원" value="${room.ac_n_dPrice - (room.ac_n_dPrice * room.ac_timeDiscount)}" /></b>
									</p>
								</div>
								<ul>
									<li><span>마감시간</span> ${room.ac_d_endTime}시까지&nbsp;</li>
									<li><span>이용시간</span> 최대 ${room.ac_d_maxTime}시간&nbsp;</li>
								</ul>
							</div>
							<button type="button"
								onclick="location.href='/reservation/reservationForm?ac_roomNum=${room.ac_roomNum}'" class="yj_left_res">대실 예약</button>
						</div>
						<div class="yj_info_half">
							<div class="yj_info_half_price">
								<strong>숙박</strong>
								<div>
									<p>
										<b style="color: #1d1d1d"><fmt:formatNumber type="number" pattern="#,###원" value="${room.ac_n_sPrice - (room.ac_n_sPrice * room.ac_stayDiscount)}" /></b>
									</p>
								</div>
								<ul>
									<li><span>입실시간</span> ${room.ac_s_startTime}부터&nbsp;</li>
									<li><span>퇴실시간</span> 익일 ${room.ac_s_endTime}&nbsp;</li>
								</ul>
							</div>

							<button type="button"
								onclick="location.href='/reservation/reservationForm?ac_roomNum=${room.ac_roomNum}'" class="yj_left_res">숙박 예약</button>
						</div>
					</div>

				</div>
			</c:if>
			<c:if
				test="${ac_enrollDetail.ac_Kind ne 2}">
				<div class="yj_room">
					<p class="yj_pic_view" data-ac_roomnum="${room.imageList[0].ac_roomNum}" data-path="${room.imageList[0].uploadPath}" data-uuid="${room.imageList[0].uuid}" data-filename="${room.imageList[0].fileName}">
						<img class="yj_lazy" style="display: inline;">
					</p>
					<strong class="yj_title">${room.ac_roomName}</strong>

					<div class="yj_info">
						<div class="yj_info_stay">
							<div class="yj_info_stay_price">
								<strong>숙박</strong>
								<div>
									<p>
										<b style="color: #1d1d1d"><fmt:formatNumber type="number" pattern="#,###원" value="${room.ac_n_sPrice - (room.ac_n_sPrice * room.ac_stayDiscount)}" /></b>
									</p>
								</div>
								<ul>
									<li><span>입실시간</span> ${room.ac_s_startTime}부터&nbsp;</li>
									<li><span>퇴실시간</span> 익일 ${room.ac_s_endTime}&nbsp;</li>
								</ul>
							</div>

							<button type="button" onclick="location.href='/reservation/reservationForm?ac_roomNum=${room.ac_roomNum}'" class="yj_left_res">숙박 예약</button>
						</div>
					</div>

				</div>
			</c:if>
		</c:forEach>
	</article>
	<article class="yj_details_info yj_tabMenu" id="wrapper" style="display:none;">
    <div class="container">
       <ul class="accordion">
          <li class="item">
             <h2 class="accordionTitle">기본정보 <span class="accIcon"></span></h2>
             <div class="text">
             	${ac_enrollDetail.ac_Info}
            </div>
          </li>
          <c:if test="${ac_enrollDetail.ac_Kind eq 2}">
          <li class="item">
             <h2 class="accordionTitle">요금 정보 <span class="accIcon"></span></h2>
             <div class="text">
                 <h3>대실 이용요금</h3>
                 <table class="yj_price_table">
                     <tbody>
                         <tr>
                             <th style="width:33.3333%">객실 등급</th>
                             <th style="width:33.3333%">월, 화, 수, 목, 금</th>
                             <th style="width:33.3333%">일, 토, 공휴일</th>
                         </tr>
                         <tr>
                             <td>Standard(넷플릭스, 1PC, 65인치 TV)</td>
                             <td>
                                 <span>25,000</span>
                             </td>
                             <td>
                                 <span>25,000</span>
                             </td>
                         </tr>
                         <tr>
                            <td>Standard Twin</td>
                            <td>
                                <span>25,000</span>
                            </td>
                            <td>
                                <span>25,000</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Premium Standard(넷플릭스, 1PC, 65인치 TV)</td>
                            <td>
                                <span>25,000</span>
                            </td>
                            <td>
                                <span>25,000</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Deluxe(넷플릭스, 배그 2PC, 70인치 TV, 청정기)</td>
                            <td>
                                <span>30,000</span>
                            </td>
                            <td>
                                <span>30,000</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Premium Deluxe(넷플릭스, 배그 2PC, 대형욕조, 70인치 TV, 청정기)</td>
                            <td>
                                <span>35,000</span>
                            </td>
                            <td>
                                <span>35,000</span>
                            </td>
                        </tr>
                     </tbody>
                 </table>
                 <h3>대실 이용시간</h3>
                 <table class="yj_price_table">
                     <tbody>
                        <tr>
                            <th style="width:33.3333%">구분</th>
                            <th style="width:33.3333%">월, 화, 수, 목, 금, 공휴일 전날</th>
                            <th style="width:33.3333%">일, 토, 공휴일</th>
                        </tr>
                        <tr>
                            <td>이용시간</td>
                            <td>
                                <span>4시간</span>
                            </td>
                            <td>
                                <span>4시간</span>
                            </td>
                        </tr>
                        <tr>
                            <td>마감시간</td>
                            <td>
                                <span>오후 11시</span>
                            </td>
                            <td>
                                <span>오후 11시</span>
                            </td>
                        </tr>
                     </tbody>
                 </table>
                 <h3>숙박 이용요금</h3>
                 <table class="yj_price_table">
                     <tbody>
                         <tr>
                             <th style="width:33.3333%">객실 등급</th>
                             <th style="width:33.3333%">일, 월, 화, 수, 목</th>
                             <th style="width:33.3333%">금, 토</th>
                         </tr>
                         <tr>
                             <td>Standard(넷플릭스, 1PC, 65인치 TV)</td>
                             <td>
                                 <span>50,000</span>
                             </td>
                             <td>
                                 <span>60,000</span>
                             </td>
                         </tr>
                         <tr>
                            <td>Standard Twin</td>
                            <td>
                                <span>50,000</span>
                            </td>
                            <td>
                                <span>60,000</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Premium Standard(넷플릭스, 1PC, 65인치 TV)</td>
                            <td>
                                <span>55,000</span>
                            </td>
                            <td>
                                <span>65,000</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Deluxe(넷플릭스, 배그 2PC, 70인치 TV, 청정기)</td>
                            <td>
                                <span>65,000</span>
                            </td>
                            <td>
                                <span>75,000</span>
                            </td>
                        </tr>
                        <tr>
                            <td>Premium Deluxe(넷플릭스, 배그 2PC, 대형욕조, 70인치 TV, 청정기)</td>
                            <td>
                                <span>75,000</span>
                            </td>
                            <td>
                                <span>85,000</span>
                            </td>
                        </tr>
                     </tbody>
                 </table>
                 <h3>숙박 이용시간</h3>
                 <table class="yj_price_table">
                     <tbody>
                        <tr>
                            <th style="width:33.3333%">구분</th>
                            <th style="width:33.3333%">일, 월, 화, 수, 목, 금</th>
                            <th style="width:33.3333%">금, 토</th>
                        </tr>
                        <tr>
                            <td>입실</td>
                            <td>
                                <span>19시</span>
                            </td>
                            <td>
                                <span>22시</span>
                            </td>
                        </tr>
                        <tr>
                            <td>퇴실</td>
                            <td>
                                <span>익일 12시</span>
                            </td>
                            <td>
                                <span>익일 12시</span>
                            </td>
                        </tr>
                     </tbody>
                 </table>
             </div>
          </li>
         </c:if>
       </ul>
    </div>
    
</article>
<article class="yj_review yj_tabMenu" style="display: none;">
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
                    조용하고 깨끗하고 좋아요... 주변에 먹을 곳도 많구요... 이 근처에서는 여기가 가장 괜찮습니다... 금연 객실이라 담배 냄새도 안납니다... 자주 이용합니다... 추천합니다...
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
				<div class="col-12 " id="">
					<a class="write" href="javascript:fn_articleForm('${isLogOn}','/board/product_inquiry_write','/member/login')">글쓰기</a>
				</div>

				<table class="table table-hover">
					<thead class="text-center">
						<tr>
							<th>번호</th>
							<th>회원ID</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<c:choose>
							<c:when test="${list == null }">
								<tr>
									<td colspan="7" align="center">등록된 글이 없습니다.</td>
								</tr>
							</c:when>
							<c:when test="${list != null}">
								<c:forEach var="list" items="${list}" varStatus="i">
									<tr>
										<td>${pageMaker.total - ((cri.pageNum-1)*cri.amount) - i.index}</td>
										<td>${list.n_Id}</td>
										<td><c:if test="${list.board_state eq 'N'}">
												<img src="/resources/img/rock.png" alt="비밀글" />
												<c:choose>
													<c:when
														test="${list.n_Id eq nmemberVO.n_Id || adminid eq 'youngjun'}">
														<a class='cls1'
															href='/board/product_inquiry_2?board_seq=<c:out value="${list.board_seq}"/>'>
															<c:out value="${list.board_title}" />
														</a>
													</c:when>
													<c:otherwise>비밀글은 작성자와 관리자만 볼 수 있습니다.</c:otherwise>
												</c:choose>
											</c:if> <c:if test="${list.board_state eq 'Y'}">
												<a class='cls1'
													href='/board/product_inquiry_2?board_seq=<c:out value="${list.board_seq}"/>'>
													<c:out value="${list.board_title}" />
												</a>
											</c:if></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd"
												value="${list.board_date}" /></td>
									</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>

				<div class="pageInfo_wrap">
					<div class="pageInfo_area">
						<ul id="pageInfo" class="pageInfo">

							<!-- 이전페이지 버튼 -->
							<c:if test="${pageMaker.prev}">
								<li class="page-item a1"><a class="page-link"
									href="${pageMaker.startPage-1}">Previous</a></li>
							</c:if>

							<!-- 각 번호 페이지 버튼 -->
							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<li class="page-item ${pageMaker.cri.pageNum == num ? "active":"" }"><a
									class="page-link" href="${num}">${num}</a></li>
							</c:forEach>

							<!-- 다음페이지 버튼 -->
							<c:if test="${pageMaker.next}">
								<li class="page-item"><a class="page-link"
									href="${pageMaker.endPage + 1 }">Next</a></li>
							</c:if>

						</ul>
					</div>
				</div>

				<form action="/product/ac_productDetail?ac_ProductNum=${ac_productDetail.ac_ProductNum}" id="moveForm" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
					<input type="hidden" name="type" value="${pageMaker.cri.type }">
				</form>
			</section>
		</div>
	</article>
    
    	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <!-- Swiper JS -->
    	<script type="text/javascript" src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    	<script type="text/javascript" src="/resources/js/ac_productDetail.js"></script>
    
    </body>
    <%@ include file="../main/footer.jsp" %>
</html>
 