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
      .pageInfo{
      list-style : none;
      display: inline-block;
          
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
  .pageInfo_area{text-align:center;}
.a1{
	z-index: 3;
    color: #fff;
    background-color: #0d6efd;
    border-color: #0d6efd;
}
.write{
color: #ffffff;
background: #030303;
font-size: 1.2em;
padding: 0.3em 0.5em;
margin-right: 0.1em;
float:right;
}
   </style>
 <%@ include file="../main/header.jsp" %>
 
</head>

<body>
 <%@ include file="../main/centerside.jsp" %>
  

  <main id="main">


<!-- 1:1문의 하기 게시판 -->
		<div class="container one_one_for_margin" id="aa">
			<section id="inquiry" class="contact">
				<div class="section-title" data-aos="zoom-out">
					<h2>Contact</h2>
					<p>1:1 문의하기</p>
				</div>
				<div class="col-12 " id="">
					<a class="write"
						href="javascript:fn_articleForm('${isLogOn}','/board/inquiry_write', 
                                                    '/member/login2')">글쓰기</a>
				</div>

				<table class="table table-hover">
					<thead class="text-center">
						<tr>
							<th>번호</th>
							<th>문의유형</th>
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
								<c:forEach var="list" items="${list}">
									<c:set var="i" value="${i + 1}" />
									<tr>
										<td>${i}</td>
										<td>${list.board_kind1}</td>
										<td>${list.n_Id}</td>
										<!--<td><a class='cls1' href='/board/inquiry_2?board_seq=<c:out value="${list.board_seq}"/>'>
                        			<c:out value="${list.board_title}"/>
                    			</a></td> -->
										<td><c:if test="${list.board_state eq 'N'}">
												<img src="/resources/img/rock.png" alt="비밀글" />
												<c:choose>
													<c:when
														test="${list.n_Id eq nmemberVO.n_Id || adminid eq 'youngjun'}">
														<a class='cls1'
															href='/board/inquiry_2?board_seq=<c:out value="${list.board_seq}"/>'>
															<c:out value="${list.board_title}" />
														</a>
													</c:when>
													<c:otherwise>비밀글은 작성자와 관리자만 볼 수 있습니다.</c:otherwise>
												</c:choose>
											</c:if> 
											<c:if test="${list.board_state eq 'Y'}">
												<a class='cls1'
													href='/board/inquiry_2?board_seq=<c:out value="${list.board_seq}"/>'>
													<c:out value="${list.board_title}" />
												</a>
											</c:if></td>
										<td><fmt:formatDate value="${list.board_date}"
												pattern="yyyy.MM.dd" /></td>
									</tr>
									<tr>
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

				<form id="moveForm" method="get">
					<input type="hidden" name="pageNum"
						value="${pageMaker.cri.pageNum }"> <input type="hidden"
						name="amount" value="${pageMaker.cri.amount }"> <input
						type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
					<input type="hidden" name="type" value="${pageMaker.cri.type }">
				</form>
			</section>
		</div>

		<!-- 1:1문의하기 게시판 finish -->
  
    

      
  </main><!-- End #main -->
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
 <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		let result = '<c:out value="${result}"/>';
		
		checkAlert(result);
		console.log(result);
		
		function checkAlert(result){
			
			if(result === ''){
				return;
			}
			
			if(result === "enrol success"){
				alert("등록이 완료되었습니다.");
			}
			
			if(result === "modify success"){
				alert("수정이 완료되었습니다.");
			}
			
			if(result === "delete success"){
				alert("삭제가 완료되었습니다.");
			}		
		}	
		
	});

		let moveForm = $("#moveForm");

		$(".move").on("click", function(e){
			e.preventDefault();
			
			moveForm.append("<input type='hidden' name='board_seq' value='"+ $(this).attr("href")+ "'>");
			moveForm.attr("action", "/board/inquiry_2");
			moveForm.submit();
		});

		$(".pageInfo a").on("click", function(e){
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/board/inquiry");
			moveForm.submit();
			
		});	
		
		
		function fn_articleForm(isLogOn,articleForm,loginForm){
			  if(isLogOn != '' && isLogOn != 'false'){
			    location.href=articleForm;
			  }else{
			    alert("로그인 후 글쓰기가 가능합니다.")
			    location.href=loginForm+'?action=/board/inquiry';
			  }
			}
	
		
		
		
   </script>

</body>
</html>