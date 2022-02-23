<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
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
 
	<%@ include file="../main/header.jsp" %>
</head>
<body>
<section>
<div class = "container">
	 
	<div class="section-title" data-aos="zoom-out">
          <h2>contact modify</h2> 
          <p>1:1 문의 수정하기</p>
     </div>
    
    		<form id="modifyForm" name="modifyForm" action="/board/inquiry_modify?board_seq=<c:out value="${pageInfo.board_seq}"/>" method="post" >
			<input type="hidden" id="board_kind" name="board_kind" value="B">
    		
  				<div class="form-group">
    				<label>문의 유형</label>
    				<input class="form-control" name="board_kind1" value='<c:out value="${pageInfo.board_kind1}"/>'>
 	 			</div>
  				<div class="form-group">
    				<label>회원 ID</label>
    				<input type="text" class="form-control" id="n_Id" name="n_Id" value="${nmemberVO.n_Id}" readonly >
 	 			</div>
 	 			<div class="form-group">
    				<label>제목</label>
    				<input class="form-control" name="board_title" value='<c:out value="${pageInfo.board_title}"/>'>
 	 			</div>        
 	 			<div class="checkbox">
    				<label>
    				<input type="checkbox" name="board_state" value="Y">공개
      				<input type="checkbox" name="board_state" value="N">비공개
  	 	 			</label>
  				</div>
  				<div class="form_section">
						<div class="form_section_title">
							<label>상품 이미지</label>
						</div>
						<div class="form_section_content">
							<input type="file" id="fileItem" name='fileName'
								style="height: 30px;">
							<div id="uploadResult"></div>
						</div>
					</div>
  				<textarea id = "board_content" name="board_content" class="form-control" rows="10" ><c:out value="${pageInfo.board_content}"/></textarea>
    			<div class="btn_wrap">
					
					<a class="write" id="modify_btn">수정 완료</a>
					 <a class="write" href='/board/notice'>글 목록</a>
				
				</div>

			</form>
	</div>
	
</section>
    <!-- 1:1 문의하기 화면 jsp -->


	<%@ include file="../main/footer.jsp" %>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
  
  
  	let form = $("#infoForm");		// 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
	let mForm = $("#modifyForm");	// 페이지 데이터 수정 from
	
	/* 목록 페이지 이동 버튼 */
	$("#list_btn").on("click", function(e){
	
		form.attr("action", "/board/notice");
		form.submit();
	});
	
	/* 수정 하기 버튼 */
	$("#modify_btn").on("click", function(e){	
		mForm.submit();
	});
	
	
  </script>
</body>

</html>