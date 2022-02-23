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
  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
  
   <style>
   
   /* common*/
  *{margin:0; padding:0;}
  
ul, dl{padding-left:0 !important;}
      div{width:100%; background:white;
        height:inherit;}

        .cjh_admin_container{
            width:100%; display:flex;
            justify-content: center;
            height:100vh;
        }

        .left_sider{width:20%; height:100%; background:#e3e3e3;}
        
             .cjh_admin_container2{display:flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding:20px;
        background:#e3e3e3;
    }
    
    /*until here*/
    
   .for_block{
width:100%; height:150px; background:transparent; display:block;}
  
 #notice{
 	width:100%;
 	height:100%;
 }
  
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
 
	

</head>

<body>
 
	<%@ include file="../../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 
  	 <section id="notice" class="notice">

    <div class = "container notice_margin">
  
    <section> 
    <div class="section-title" data-aos="zoom-out">
          <h2>Notice</h2>
          <p>공지사항</p>
        </div>
    <div class = "col-12">
       <!-- <button type = "button" class="btn-outline-secondary" style="float:right" value="글쓰기" onclick="location.href='addNewArticle.do'">글쓰기</button> -->
       <a  class="write"  href="/admin/admin_notice_write">글쓰기</a>
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
					<c:forEach var="list" items="${list}">
						<tr>
							<td><c:out value="${list.board_seq}"/></td>
							<td>
								<a class='cls1' href='/admin/admin_notice2?board_seq=<c:out value="${list.board_seq}"/>'>
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
    </div>
 
</section>
<!-- 공지사항 게시판 finish -->

 
  	 
  	   	</div><!-- cjh_container2 -->
  </div><!-- cjh_admin_container -->

<!-- 공지사항 게시판 -->

 
  

	<%@ include file="../../main/footer.jsp" %>

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
			moveForm.attr("action", "/admin/admin_notice2");
			moveForm.submit();
		});

		$(".pageInfo a").on("click", function(e){
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/admin/admin_notice");
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
  
  
</body>

</html>