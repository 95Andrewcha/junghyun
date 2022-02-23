<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<link href="/resources/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/aos/aos.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/bootstrap/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
   <style>
   .for_block{
width:100%; height:150px; background:transparent; display:block;}
   #contact{margin-top:40px;}
      .notice_fix{position:fixed; top:20%; left:5%; width:200px; outline:1px solid skyblue;}
      .nav-item{border-bottom:1px solid red;}
      .m60{margin-top:60px;}
      .m100{margin-top:100px;}
      .m120{margin-top:120px;}
      .m140{margin-top:140px;}
      .m160{margin-top:160px;}
      .m300{padding-top:150px;}
      section{padding:0 !important;}
   </style>
 <%@ include file="../main/header.jsp" %>
 
</head>

<body>
 
 <%@ include file="../main/centerside.jsp" %>
    <!-- ======= F.A.Q Section ======= -->
    <section id="faq" class="faq">
      <div class="container faq_for_margin">

        <div class="section-title" data-aos="zoom-out">
          <h2>F A Q </h2>
          <p>자주 묻는 질문</p>
        </div>

        <ul class="faq-list">

          <li>
            <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">[상품문의] 상품 관련 궁금한 점이 있는데 상품 문의는 어디서 하나요? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq1" class="collapse" data-bs-parent=".faq-list">
              <p>
              상품 관련해서 문의사항이 있으시다면, 트립액티비티 웹에서 상품 상세 페이지에서 "예약 문의하기" 기능을 통해 메세지를 전송하고 답변을 받으실 수 있습니다. 문의하기 기능은 예약 전/후 모두 사용이 가능합니다.
    
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">[예약확정] 예약확정은 언제되나요?    <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq2" class="collapse" data-bs-parent=".faq-list">
              <p>
              예약은 대부분 영업일 기준 2일 이내 확정되나, 특정 상품군의 경우 시차/모객인원 파악 등 여러 상황으로 인해 확정이 늦어질 수 있습니다.
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">[예약확인] 예약은 어디서 확인할 수 있나요? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq3" class="collapse" data-bs-parent=".faq-list">
              <p>
               예약번호는 각 예약의 상세 페이지 에서 확인 가능합니다. 트립액티비티 로그인 후 마이페이지의 예약 내역에서 예약 번호를 확인하실 수 있습니다.
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">[예약변경] 예약 시 구매자 정보를 잘못 입력했는데, 결제를 취소하거나 정보를 변경할 수 있나요? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq4" class="collapse" data-bs-parent=".faq-list">
              <p>
              예약 상품별 결제 취소, 변경 방법, 변경 가능여부는 모두 상이합니다. 따라서 구매자 정보를 변경하거나 결제를 취소하기를 희망하시는 경우, 해당 상품의 취소/변경 규정을 참고해주시기 바랍니다. 레저 상품의 경우 상품별로 취소/변경/환불 규정이 상이합니다. 일부 레저의 경우 잘못된 정보로 예약이 되었더라도 해당 규정에 근거해 처리되며, 입력 정보와 무관하게 정상 이용 가능한 상품도 있습니다. 따라서 임의로 이용하지 마시고, 자세한 문의는 고객센터(1999-9999) 혹은 1:1 문의하기로 문의주시기 바랍니다.
               </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">[예약문의] 가이드에게 문의를 했는데 답변이 없어요. <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq5" class="collapse" data-bs-parent=".faq-list">
              <p>
               문의하기를 통해 접수된 문의는, 접수로부터 영업일 기준 1일 이내 메시지 답변을 드리게 되어 있습니다. ※ 혹시라도 1일 정도 답변이 늦어질 수 있으니 양해 부탁립니다. 만약 답변이 늦어지는 경우, 고객센터에서 가이드에게 메시지 확인 관련 안내를 드리고 있습니다. 영업일 기준 3일이 지나도 답변이 없고 예약도 확정되지 않을 시 고객센터로 연락주시길 바랍니다.
              </p>
            </div>
          </li>

          <li>
            <div data-bs-toggle="collapse" href="#faq6" class="collapsed question">[예약문의] 투어 인원 별 금액이 달라지나요? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
            <div id="faq6" class="collapse" data-bs-parent=".faq-list">
              <p>
                트립액티비티의 상품들은 모두 상품 특성(지역, 거리, 상품 성격) 등에 따라 기업마다 직접 금액을 책정하게 됩니다. 상품 목록 페이지에 나타난 금액은 인원별 평균 1인 기준의 레저 금액이므로, 자세한 가격은 예약 희망하시는 상품 페이지의 가격표를 참조해 주시기 바랍니다.
                </p>
            </div>
          </li>

        </ul>

      </div>
    </section><!-- End F.A.Q Section -->


<%@ include file="../main/footer.jsp" %>

 
<!--   <script src="resources/vendor/bootstrap/js/bootstrap.js"></script>
  <script src="resources/jquery/jquery-3.1.2.js"></script> -->
 
    <!-- Vendor JS Files -->
  <script src="${contextPath }/resources/bootstrap/vendor/aos/aos.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendor/php-email-form/validate.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="${contextPath }/resources/bootstrap/js/main.js"></script>
  
   

</body>

</html>