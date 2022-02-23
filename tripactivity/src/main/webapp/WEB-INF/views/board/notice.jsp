<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
    <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#foo-table").DataTable();
           
        });
    </script>
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
  
.write{
color: #ffffff;
background: #030303;
font-size: 1.2em;
padding: 0.3em 0.5em;
margin-right: 0.1em;
float:right;
}
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
</style>
	 <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
	 </script>      
 
	<%@ include file="../main/header.jsp" %>

</head>

<body>
 
	<%@ include file="../main/centerside.jsp" %>
  <main id="main">


<!-- 공지사항 게시판 -->

 <section id="notice" class="notice">
    <div class = "container notice_margin">
 
    <div class="section-title" data-aos="zoom-out">
          <h2>Notice</h2>
          <p>공지사항</p>
        </div>
    <div class = "col-12">
       <!-- <button type = "button" class="btn-outline-secondary" style="float:right" value="글쓰기" onclick="location.href='addNewArticle.do'">글쓰기</button> -->
      </div>
      
       <table class = "table table-hover">
          <thead  class="text-center">
             <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
             </tr>
          </thead>
          <tbody  class="text-center">
          	<c:choose>
				<c:when test="${list == null }" >
					<tr>
						<td colspan="4" align="center">등록된 글이 없습니다.
						</td>
					</tr>
				</c:when> 
				<c:when test="${list != null }" >
					<c:forEach var="list" items="${list}" >
						<tr>
							<td><c:out value="${list.board_seq}"/></td>
							<td>
								<a class='cls1' href='/board/notice2?board_seq=<c:out value="${list.board_seq}"/>'>
                        			<c:out value="${list.board_title}"/>
                    			</a>
    						</td>
							<td>${list.n_Id}</td>
							<td><fmt:formatDate value="${list.board_date}" pattern="yyyy.MM.dd"/></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
          </tbody>      
       </table>
      <div class="pageInfo_wrap" >
		<div class="pageInfo_area">
			<ul id="pageInfo" class="pageInfo">
			
				<!-- 이전페이지 버튼 -->
				<c:if test="${pageMaker.prev}">
					<li class="page-item a1"><a class="page-link" href="${pageMaker.startPage-1}">Previous</a></li>
				</c:if>
				
				<!-- 각 번호 페이지 버튼 -->
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="page-item ${pageMaker.cri.pageNum == num ? "active":"" }"><a class="page-link" href="${num}">${num}</a></li>
				</c:forEach>
				
				<!-- 다음페이지 버튼 -->
				<c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link" href="${pageMaker.endPage + 1 }">Next</a></li>
				</c:if>	
				
			</ul>
		</div>
	</div>
	
	<form id="moveForm" method="get">	
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">	
		<input type="hidden" name="type" value="${pageMaker.cri.type }">	
	</form>
</div> 
	


   </section>
   
<!-- 공지사항 게시판 finish -->
 
  </main><!-- End #main -->
  <div id="nav">
	<%@ include file="../main/footer.jsp" %>
</div>
 <script>
	function fn_articleForm(isLogOn,addNewArticle,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=addNewArticle;
	  }else{
	    alert("로그인 후 글쓰기가 가능합니다.")
	    location.href=loginForm+'?action=/board/addNewArticle.do';
	  }
	}

	
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
			moveForm.attr("action", "/board/notice2");
			moveForm.submit();
		});

		$(".pageInfo a").on("click", function(e){
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/board/notice");
			moveForm.submit();
			
		});	
		
		
		$(".search_area button").on("click", function(e){
			e.preventDefault();
			
			let type = $(".search_area select").val();
			let keyword = $(".search_area input[name='keyword']").val();
			
			if(!type){
				alert("검색 종류를 선택하세요.");
				return false;
			}
			
			if(!keyword){
				alert("키워드를 입력하세요.");
				return false;
			}		
			
			moveForm.find("input[name='type']").val(type);
			moveForm.find("input[name='keyword']").val(keyword);
			moveForm.find("input[name='pageNum']").val(1);
			moveForm.submit();
		});
		
	
	
</script>

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
  <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
   
</body>

</html>