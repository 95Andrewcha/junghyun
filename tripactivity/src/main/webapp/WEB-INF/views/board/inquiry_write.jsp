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
	<%@ include file="../main/header.jsp" %>
</head>
<body>
<form id="Check_Join" name="Inquiry_1" method="post" action="/board/inquiry_write">
<section>
<div class = "container">
	 
	<div class="section-title" data-aos="zoom-out">
          <h2>contact</h2> 
          <p>1:1 문의하기</p>
     </div>
    
    		
			<input type="hidden" id="board_kind" name="board_kind" value="B">
    		
    			<div class="form-group">
    				<label for="exampleInputEmail1">문의 유형</label>
    				<select class="form-control" id="board_kind1" name="board_kind1">
 						 <option value="">문의 유형을 선택하세요.</option>
 						 <option value="레저">레저관련</option>
 						 <option value="숙박">숙박관련</option>
 						 <option value="교통">교통관련</option>
 					</select>
  				</div>
  				<div class="form-group">
    				<label>회원 ID</label>
    				<input type="text" class="form-control" id="n_Id" name="n_Id" value="${nmemberVO.n_Id}" readonly >
 	 			</div>
 	 			<div class="form-group">
    				<label>제목</label>
    				<input type="text" id="board_title" name="board_title" class="form-control"  placeholder="제목를 입력하세요.">
 	 			</div>        
 	 			<div class="checkbox">
    				<label>
    				<input id="service1" type="checkbox" name="board_state" value="Y" onClick="checkOnlyOne(this)">공개
      				<input id="service2" type="checkbox" name="board_state" value="N" onClick="checkOnlyOne(this)">비공개
  	 	 			</label>
  				</div>
  				<div class="form_section">
						<div class="form_section_title">
							<label>사진 업로드</label>
						</div>
						<div class="form_section_content">
							<input type="file" id="fileItem" name='fileName' multiple="multiple"
								style="height: 30px;">
							<div id="uploadResult">
								<div id="result_card">
									<!-- <div class="imgDeleteBtn">x</div>q
								<img src="/display?fileName=TEST.png"> -->
								</div>
							</div>
						</div>
					</div>
  				<textarea class="form-control" id = "board_content" name="board_content" rows="10"></textarea>
    			<button type = "button" class="btn-outline-secondary" onClick="location.href='/board/inquiry'">목록</button>
    			
    			<input type="button" name="modify" value="작성하기"
                  style="padding-left: 10px; background-color: skyblue; color: white; border-radius:2px;" onclick="Check_Join()">

			
	</div>
	
</section>
    <!-- 1:1 문의하기 화면 jsp -->
</form>

	<%@ include file="../main/footer.jsp" %>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>	
<script type="text/javascript">
	/* const example1 = document.querySelector('#service1');
	const example2 = document.querySelector('#service2');

	function example_1() {
		if (example1.checked == true) {
			example2.checked = false;
		}
	}
	function example_2() {
		if (example2.checked == true) {
			example1.checked = false;
		}
	} */
	
	
	function checkOnlyOne(element) {
		  
		  const checkboxes 
		      = document.getElementsByName("board_state");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}

	function Check_Join() {
		var form = document.getElementById("Check_Join");
		var service1 = document.getElementById("service1");
		var service2 = document.getElementById("service2");
		var board_kind1 = document.getElementById("board_kind1");
		var board_title = document.getElementById("board_title");
		
	
		if(form.board_kind1.value == ""){
			alert("문의 유형을 선택 해주세요");
			
			return false;
		}
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

		
	    /* 이미지 업로드 */
		$("input[type='file']").on("change", function(e){
			
			let formData = new FormData();
			let fileInput = $('input[name="fileName"]');
			let fileList = fileInput[0].files;
			let fileObj = fileList[0];
			
			if(!fileCheck(fileObj.name, fileObj.size)){
				return false;
			}
			
			for(let i = 0; i < fileList.length; i++){
				formData.append("uploadFile", fileList[i]);
			}
			
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
	    
		/* 파일 유효성 검사 */
		let regex = new RegExp("(.*?)\.(jpg|png|PNG|JPG)$");
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
		
		//이미지 출력
		function showUploadImage(uploadResultArr){
			let uploadResult = $("#uploadResult");
			
			/* 전달받은 데이터 검증 */
			if(!uploadResultArr || uploadResultArr.length == 0){return}
			
			for(let i = 0; i<uploadResultArr.length; i++){
				
			
				let obj = uploadResultArr[i];
			
				let str = "";
			
				// replace 적용 => 동작 o
				let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
				// replace 적용 x => 동작 o
				//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
			
			
				str += "<div id='result_card'>";
				str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
				str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
				str += "<input type='hidden' name='imageList["+i+"].fileName' value='"+ obj.fileName +"'>";
				str += "<input type='hidden' name='imageList["+i+"].uuid' value='"+ obj.uuid +"'>";
				str += "<input type='hidden' name='imageList["+i+"].uploadPath' value='"+ obj.uploadPath +"'>";
			
				str += "</div>";
			
	   			uploadResult.append(str);
	   			
			}

		}
		
		/* 이미지 삭제 버튼 동작 */
		$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
			
			deleteFile();
			
		});
		
		/* 파일 삭제 메서드 */
		function deleteFile(){
			
			let targetFile = $(".imgDeleteBtn").data("file");
			
			let targetDiv = $("#result_card");
			
			$.ajax({
				url: '/admin/deleteFile',
				data : {fileName : targetFile},
				dataType : 'text',
				type : 'POST',
				success : function(result){
					console.log(result);
					
					targetDiv.remove();
					$("input[type='file']").val("");
					
				},
				error : function(result){
					console.log(result);
					
					alert("파일을 삭제하지 못하였습니다.")
				}
			});
		}
				
</script>
</body>

</html>