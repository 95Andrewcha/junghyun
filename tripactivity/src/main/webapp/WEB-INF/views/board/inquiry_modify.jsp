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
    
    		<form id="Check_Join" name="modifyForm" action="/board/inquiry_modify?board_seq=<c:out value="${pageInfo.board_seq}"/>" method="post" >
			<input type="hidden" id="board_kind" name="board_kind" value="B">
    		
  			
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
    				<input id="service1" type="checkbox" name="board_state" value="Y" onClick="checkOnlyOne(this)">공개
      				<input id="service2" type="checkbox" name="board_state" value="N" onClick="checkOnlyOne(this)">비공개
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
					
					<a class="write" onclick="Check_Join()" id="modify_btn">수정 완료</a>
					 <a class="write" href='/board/notice'>글 목록</a>
					 <input type="button" name="modify" value="작성하기"
                  style="padding-left: 10px; background-color: skyblue; color: white; border-radius:2px;" onclick="Check_Join()">

				</div>

			</form>
	</div>
	
</section>
    <!-- 1:1 문의하기 화면 jsp -->


	<%@ include file="../main/footer.jsp" %>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("board_state");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
	}
  
  	let form = $("#infoForm");		// 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
	let mForm = $("#modifyForm");	// 페이지 데이터 수정 from
	
	/* 목록 페이지 이동 버튼 */
	$("#list_btn").on("click", function(e){
	
		form.attr("action", "/board/notice");
		form.submit();
	});
	
	/* 수정 하기 버튼 */
	function Check_Join() {
		var form = document.getElementById("Check_Join");
		var service1 = document.getElementById("service1");
		var service2 = document.getElementById("service2");
		var board_kind1 = document.getElementById("board_kind1");
		var board_title = document.getElementById("board_title");
		
	
	
		if(form.board_title.value == ""){
			
			alert("제목을 입력해주세요");
			
			return false;
		}

		if (service1.checked !=true && service2.checked == false) {

			console.log("체크박스");
			alert("공개 또는 비공개를 선택해주세요");
			
			return false;
		}

		form.submit();
	}
	/* 기존 이미지 출력 */
	let board_seq = '<c:out value="${pageInfo.board_seq}"/>';
	let uploadResult = $("#uploadResult");
	
	$.getJSON("/admin/getAttachList", {board_seq : board_seq}, function(arr){
		
		console.log(arr);
		
		if(arr.length === 0){
			
			
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='/resources/img/imgx.jpg'>";
			str += "</div>";
			
			uploadResult.html(str);				
			return;
		}
		
		
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
		str += ">";
		str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";				
		str += "</div>";
		
		uploadResult.html(str);			
		
	});// GetJSON
	
	/* 이미지 삭제 버튼 동작 */
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		
		deleteFile();
		
	});
	
	/* 파일 삭제 메서드 */
	function deleteFile(){
		
		$("#result_card").remove();
	}
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($("#result_card").length > 0){
			deleteFile();
		}
				
		let formData = new FormData();
		let fileInput = $('input[name="fileName"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		
		formData.append("uploadFile", fileObj);
		
		$.ajax({
			url: '/admin/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){
	    		console.log(result);
	    		showUploadImage(result);
	    	},
	    	error : function(result){
	    		alert("이미지 파일이 아닙니다.");
	    	}
		});		

		
	});
		
	/* var, method related with attachFile */
	let regex = new RegExp("(.*?)\.(jpg|png|JPG|PNG)$");
	let maxSize = 1048576; //1MB	
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}
	
	/* 이미지 출력 */
	function showUploadImage(uploadResultArr){
		
		/* 전달받은 데이터 검증 */
		if(!uploadResultArr || uploadResultArr.length == 0){return}
		
		let uploadResult = $("#uploadResult");
		
		let obj = uploadResultArr[0];
		
		let str = "";
		
		//let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
		//replace 적용 하지 않아도 가능
		//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		let fileCallPath = obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName;
		str += "<div id='result_card'>";
		str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
		str += "</div>";		
		
   		uploadResult.append(str);     
        
	}
	
  </script>
</body>

</html>