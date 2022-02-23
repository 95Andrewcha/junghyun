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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
 

	<%@ include file="../main/header.jsp" %>

 
</head>
<body>
<main id="main">
<!-- 공지사항 글쓰기 jsp -->

<section>
<div class = "container">
	 
	<div class="section-title" data-aos="zoom-out">
          <h2>notice</h2> 
          <p>공지사항 글쓰기</p>
     </div>
    	<form name="write" action="/board/notice_write" method="post" >
			<input type="hidden" id="board_kind" name="board_kind" value="A">
			
  				<div class="form-group">
    				<label>제목</label>
    				<input type="text" class="form-control" id="board_title" name="board_title" placeholder="제목을 입력하세요.">
 	 			</div>
 	 			<div class="form-group">
    				<label>작성자</label>
    				<input type="text" class="form-control" id="n_Id" name="n_Id" value="${nmemberVO.n_Id}" readonly>
 	 			</div>
  				<div class="form-group">
    				<label for="exampleInputFile">사진 업로드</label>
   	 				<input type="file" id="exampleInputFile">
  				</div>
  				<textarea id = "board_content" name="board_content" class="form-control" rows="10"></textarea>
    			<button type = "button" class="btn-outline-secondary" onClick="location.href='/board/notice'">목록</button>
    			<button type = "submit" class="btn-outline-secondary">글 작성하기</button>
    			

			</form>
	</div>
	
</section>
    <!-- 공지사항 화면 jsp -->
    
</main>

	<%@ include file="../main/footer.jsp" %>


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   
</body>
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
    obj.action="${contextPath}/board/notice";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  
  </script>
</html>