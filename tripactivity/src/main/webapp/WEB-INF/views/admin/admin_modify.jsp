<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
 <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<style>
.write{
color: #ffffff;
background: #030303;
font-size: 1.2em;
padding: 0.3em 0.5em;
margin-right: 0.1em;
float:right;
}
</style>
 
</head>
<body>
<%@ include file="../main/admin_header.jsp" %>
<main id="main">
<!-- 공지사항 글쓰기 수정 jsp -->

<section>
<div class = "container">
	 
	<div class="section-title" data-aos="zoom-out">
          <h2>notice modify</h2> 
          <p>공지사항 수정하기</p>
     </div>
    	<form id="modifyForm" name="modifyForm" action="/admin/admin_modify?board_seq=<c:out value="${pageInfo.board_seq}"/>" method="post" >
			<input type="hidden" id="board_kind" name="board_kind" value="A">
			
  				<div class="form-group">
    				<label>제목</label>
    				<input class="form-control" name="board_title" value='<c:out value="${pageInfo.board_title}"/>'>
 	 			</div>
 	 			<div class="form-group">
    				<label>작성자</label>
    				<input type="text" class="form-control" value="${nmemberVO.n_Id}" readonly>
 	 			</div>
  				<div class="form-group">
    				<label for="exampleInputFile">사진 업로드</label>
   	 				<input type="file" id="exampleInputFile">
  				</div>
  				<textarea id = "board_content" name="board_content" class="form-control" rows="10" ><c:out value="${pageInfo.board_content}"/></textarea>
    			<!-- <button type = "button" id="list_btn" class="btn-outline-secondary">목록 페이지</button>
    			<button type = "submit"  id="modify_btn" class="btn-outline-secondary">수정 완료</button>
    			<button type = "button"  id="cancel_btn" class="btn-outline-secondary">수정 취소</button> -->
    			<!-- <input type="submit" name="modify" value="수정하기" style="padding-left: 10px; background-color: skyblue; color: white; border-radius:2px;" >
    			<input type="submit" id="delete_btn" name="delete" value="삭제하기" style="padding-left: 10px; background-color: skyblue; color: white; border-radius:2px;" >  -->
    			<div class="btn_wrap">
					
					<a class="write" id="modify_btn">수정 완료</a>
					 <a class='write' href='/admin/admin_notice'>글 목록</a>
				
				</div>
   

			</form>
				
	</div>

</section>
    <!-- 공지사항 화면 jsp -->
    
</main>
<div id="nav">
	<%@ include file="../main/footer.jsp" %>
</div>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/admin/admin_notice";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  } 
  
  
  	let form = $("#infoForm");		// 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
	let mForm = $("#modifyForm");	// 페이지 데이터 수정 from
	
	/* 목록 페이지 이동 버튼 */
	$("#list_btn").on("click", function(e){
	
		form.attr("action", "/admin/admin_notice");
		form.submit();
	});
	
	/* 수정 하기 버튼 */
	$("#modify_btn").on("click", function(e){	
		mForm.submit();
	});
	
	
  </script>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
  /* 취소 버튼 */
	$("#cancel_btn").on("click", function(e){
		form.attr("action", "/admin/admin_notice");
		form.submit();
	});	
	
	/* 삭제 버튼 */
	$("#delete_btn").on("click", function(e){
		form.attr("action", "/board/delete");
		form.attr("method", "post");
		form.submit();
	});	
  </script>
</body>

</html>