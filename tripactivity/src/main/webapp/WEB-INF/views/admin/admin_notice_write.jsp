<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<!DOCTYPE html>
<html>



<body>
<%@ include file="../main/admin_header.jsp" %>
<main id="main">
<!-- 공지사항 글쓰기 jsp -->

<section>
<div class = "container">
	 
	<div class="section-title" data-aos="zoom-out">
          <h2>notice</h2> 
          <p>공지사항 글쓰기</p>
     </div>
    	<form name="write" action="/admin/admin_notice_write" method="post" >
			<input type="hidden" id="board_kind" name="board_kind" value="A">
			
  				<div class="form-group">
    				<label>제목</label>
    				<input type="text" class="form-control" id="board_title" name="board_title" placeholder="제목을 입력하세요.">
 	 			</div>
 	 			<div class="form-group">
    				<label>작성자</label>
    				<input type="text" class="form-control" id="admin_id" name="admin_id" value="tripactivity관리자" readonly>
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
</html>