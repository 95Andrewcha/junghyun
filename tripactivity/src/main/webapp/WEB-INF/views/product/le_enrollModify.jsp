<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/bootstrap/css/style.css">
    <link rel="stylesheet" href="/resources/css/product/le_Enroll.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>
    <%@ include file="../main/header.jsp" %>
    <style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
		display:inline-block;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;
	    margin-top:10px;
	}
	#explanation_result img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#explanation_result {
		position: relative;
		display:inline-block;
	}
	.imgDeleteBtn2{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;
	    margin-top:10px;
	}
	
</style>
</head>
<body>
<%@ include file="../main/c_acoordian.jsp" %>
    <section class="yj_productEnroll_section">
        <form action="/product/le_enrollModify" method="post" id="modifyForm">
            <div class="yj_productEnroll">
                <b class="yj_roomB">기본 정보</b>
                <ul>
                    <li style="width:30%;">
                        액티비티 종류 :
                        <select name="le_Kind" id="yj_enrollSelect">
                            <option value="">-----------------</option>
                            <option value="1"<c:if test="${le_enrollDetail.le_Kind eq 1}">selected</c:if>>수상액티비티</option>
                            <option value="2"<c:if test="${le_enrollDetail.le_Kind eq 2}">selected</c:if>>실내액티비티</option>
                            <option value="3"<c:if test="${le_enrollDetail.le_Kind eq 3}">selected</c:if>>아웃도어</option>
                        </select>
                    </li>
                    <li style="width:30%;">
                        대표자 성함 : 
                        <input type="text" name="c_Name" class="" id="" value="${le_enrollDetail.c_Name }" size="4">
                    </li>
                </ul>
                <ul>
                    <li style="width:30%;">
                        업체명 :
                        <input type="text" name="company_Name" class="" id="" value="${le_enrollDetail.company_Name }">
                    </li>
                    <li style="width:30%;">
                        사업자 번호 :
                        <input type="text" name="company_Number" class="" id="" value="${le_enrollDetail.company_Number }">
                    </li>
                    <li style="width:30%;">
                        핸드폰 번호 :
                        <input type="text" name="le_Phone" class="" id="" value="${le_enrollDetail.le_Phone }">
                    </li>
                </ul>
                <ul>
                    
                    <li style="width:30%;">
                        업체 전화번호 :
                        <input type="text" name="le_Call" class="" id="" value="${le_enrollDetail.le_Call }">
                    </li>
                    <li style="width:60%;">
                        주소 :
                        <input type="text" name="ac_Add" class="" id="" value="${le_enrollDetail.le_Add }" size="84">
                    </li>
                </ul>
                <ul>
                    
                </ul>
                <ul>
                    <li class="yj_mainImgLi">
                        메인이미지추가<span>*이미지는 최대 10개까지만 업로드 가능합니다.</span>
                        <label for="yj_mainImg">이미지 파일</label>
                        <input type="file" multiple="multiple" name="fileName" class="yj_mainImgAdd" id="yj_mainImg" value="레저 메인이미지">
                        <div class="yj_imgpreview" id="uploadResult">
                            이미지 미리보기<br>
                        </div>
                    </li>
                    
                </ul>
            </div>
            <div class="yj_productEnroll_service">
                <ul>
                    <b class="yj_roomB">선택옵션</b><br>
                    <li>
                        <label><input type="checkbox" name="le_Select" class="yj_check" value="당일사용">당일사용가능</label>
                    </li>
                    <li>
                        <label><input type="checkbox" name="le_Select" class="yj_check" value="전액환불">미사용 전액환불</label>
                    </li>
                </ul>
                <input type="hidden" id="yj_checkSelect" name="le_Select" value="${le_enrollDetail.le_Select }">
            </div>
            <div class="yj_productEnroll_image">
                상품설명 이미지 추가<span>*이미지는 최대 10개까지만 업로드 가능합니다.</span>
                <label for="yj_ticketImg">이미지 파일</label>
                <input type="file" multiple="multiple" name="fileName" class="" id="yj_ticketImg" value="객실 이미지">
                <div class="yj_ticketImgPreview" id="uploadExplanation">
                    상품설명 이미지 미리보기<br>
                    
                </div>
            </div>
            <div class="yj_productEnroll_info">
                <b class="yj_roomB" style="display: block;">티켓 이용 상세 정보</b><br>
                <textarea name="le_useInfo" id="yj_infoId2" class="yj_info1" placeholder="티켓이용에 관한 정보를 적어주세요.">${le_enrollDetail.le_useInfo}</textarea>
            </div>
            <div class="yj_productEnroll_info">
                <b class="yj_roomB" style="display: block;">업체 정보</b><br>
                <textarea name="le_companyInfo" id="yj_infoId3" class="yj_info1" placeholder="업체 정보를 적어주세요.">${le_enrollDetail.le_companyInfo}</textarea>
            </div>
            <div class="yj_productEnroll_info">
                <b class="yj_roomB" style="display: block;">취소 및 환불 규정</b><br>
                <textarea name="le_refundInfo" id="yj_infoId4" class="yj_info1" placeholder="취소 및 환불규정에 관한 정보를 적어주세요.">${le_enrollDetail.le_refundInfo}</textarea>
            </div>
            </form>
         	<button class="yj_le_productCancelButton" id="yj_allButton">취소 하기</button>
         	<button class="yj_le_productModifyButton" id="yj_allButton">수정 하기</button>
        	
        	<form id="moveForm" action="/product/le_enrollManage" method="get" >
        	</form>
        </section>
    <script src="https://cdn.tiny.cloud/1/jwxkdrerytfloa815l6tcfyb3wmpnays543jc9301lqp5r9b/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
$(document).ready(function(){
    	
    	//숙박 업체 이미지 정보 호출
    	let le_ProductNum = '${le_enrollDetail.le_ProductNum}';
    	let uploadResult = $('#uploadResult');
    	
    	
    	
    	$.getJSON("/getLe_productImageInfo",{le_ProductNum : le_ProductNum}, function(uploadResultArr){
    		
    		//이미지가 없는 경우
    		if(uploadResultArr.length == 0){

    			return;
    		}
    		
    		for(let i = 0; i<uploadResultArr.length; i++){
    			let str = "";
    			let obj = uploadResultArr[i];
    		
    			let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
    			str += "<div id='result_card'";
    			str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
    			str += ">";
    			str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x";
    			str += "</div>";
    			str += "<img src='/display?fileName=" + fileCallPath +"'>";
    			str += "</div>";
    		
    			uploadResult.append(str);
    			
    		}
    			
    	});
    	
    	let uploadExplanation = $("#uploadExplanation");
		
    	$.getJSON("/getLe_explanationImageInfo",{le_ProductNum : le_ProductNum}, function(uploadExplanationArr){
    		
    		//이미지가 없는 경우
    		if(uploadExplanationArr.length == 0){

    			return;
    		}
    		
    		for(let i = 0; i<uploadExplanationArr.length; i++){
    			let str = "";
    			let obj = uploadExplanationArr[i];
    		
    			let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
    			str += "<div id='explanation_result'";
    			str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
    			str += ">";
    			str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x";
    			str += "</div>";
    			str += "<img src='/display?fileName=" + fileCallPath +"'>";
    			str += "</div>";
    		
    			uploadExplanation.append(str);
    			
    		}
    			
    	});
    	
    });
    
    $(function(){
    	
    	var edit_toolbar = 'formatselect fontselect fontsizeselect |'
            + ' bold italic underline strikethrough |'
            + ' alignjustify alignleft aligncenter alignright |'
            + ' bullist numlist |'
            + ' table tabledelete |'
            + ' link image';
    	tinymce.init({
    		language: "ko_KR",
    	    selector: '#yj_infoId2',
    	    height: 400,
    	    plugins: [
    	        "advlist autolink lists link image charmap print preview anchor",
    	        "searchreplace visualblocks code fullscreen",
    	        "insertdatetime media table contextmenu paste"
    	      ],
    	    menubar: false,
    	    toolbar: edit_toolbar
    	  });
    	
    	tinymce.init({
    		language: "ko_KR",
    	    selector: '#yj_infoId3',
    	    height: 400,
    	    plugins: [
    	        "advlist autolink lists link image charmap print preview anchor",
    	        "searchreplace visualblocks code fullscreen",
    	        "insertdatetime media table contextmenu paste"
    	      ],
    	    menubar: false,
    	    toolbar: edit_toolbar
    	  });
    	
    	tinymce.init({
    		language: "ko_KR",
    	    selector: '#yj_infoId4',
    	    height: 400,
    	    plugins: [
    	        "advlist autolink lists link image charmap print preview anchor",
    	        "searchreplace visualblocks code fullscreen",
    	        "insertdatetime media table contextmenu paste"
    	      ],
    	    menubar: false,
    	    toolbar: edit_toolbar
    	  });

    });
        
       /* 이미지 업로드 */
    	$("#yj_mainImg").on("change", function(e){
    		
    		let formData = new FormData();
    		let fileInput = $('#yj_mainImg');
    		let fileList = fileInput[0].files;
    		let fileObj = fileList[0];
    		
    		if(!fileCheck(fileObj.name, fileObj.size)){
    			return false;
    		}
    		
    		for(let i = 0; i < fileList.length; i++){
    			formData.append("uploadFile", fileList[i]);
    		}
    		
    		$.ajax({
    			url: '/product/uploadAjaxAction',
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
    	let regex = new RegExp("(.*?)\.(jpg|png)$");
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
    	
    	//레저 메인 이미지 출력
    	function showUploadImage(uploadResultArr){
    		/* 전달받은 데이터 검증 */
    		if(!uploadResultArr || uploadResultArr.length == 0){return}
    		
    		for(let i = 0; i<uploadResultArr.length; i++){
    			let uploadResult = $("#uploadResult");
    		
    			let obj = uploadResultArr[i];
    		
    			let str = "";
    		
    			// replace 적용 => 동작 o
    			let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
    			// replace 적용 x => 동작 o
    			//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
    		
    		
    			str += "<div id='result_card'>";
    			str += "<img src='/display?fileName=" + fileCallPath +"'>";
    			str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
    			str += "<input type='hidden' name='imageList["+i+"].fileName' value='"+ obj.fileName +"'>";
    			str += "<input type='hidden' name='imageList["+i+"].uuid' value='"+ obj.uuid +"'>";
    			str += "<input type='hidden' name='imageList["+i+"].uploadPath' value='"+ obj.uploadPath +"'>";
    			str += "<input type='hidden' name='imageList["+i+"].imgFileKind' value='le_Main'>";
    			str += "</div>";
    		
       			uploadResult.append(str);
       			
    		}
    		
    	}
    	    	
    	/* 이미지 삭제 버튼 동작 */
    	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
    		
    		deleteFile();
    		
    	}); 
    	
    	/* 티켓 설명 이미지 업로드 */
    	$("#yj_ticketImg").on("change", function(e){
    		
    		let formData = new FormData();
    		let fileInput2 = $('#yj_ticketImg');
    		let fileList2 = fileInput2[0].files;
    		let fileObj2 = fileList2[0];
    		
    		
    		for(let i = 0; i < fileList2.length; i++){
    			formData.append("uploadFile2", fileList2[i]);
    		}
    		
    		$.ajax({
    			url: '/product/uploadAjaxAction2',
    	    	processData : false,
    	    	contentType : false,
    	    	data : formData,
    	    	type : 'POST',
    	    	dataType : 'json',
    	    	success : function(result){
    		    	console.log(result);
    		    	showUploadExplanationImage(result);
    		    },
    		    error : function(result){
    		    	alert("이미지 파일이 아닙니다.");
    		    }
    		});	
    	});
    	
    	//티켓 설명 이미지 출력
    	function showUploadExplanationImage(uploadExplanationArr){
    		/* 전달받은 데이터 검증 */
    		if(!uploadExplanationArr || uploadExplanationArr.length == 0){return}
    		
    		for(let i = 0; i<uploadExplanationArr.length; i++){
    			let uploadExplanation = $("#uploadExplanation");
    		
    			let obj = uploadExplanationArr[i];
    		
    			let str = "";
    		
    			// replace 적용 => 동작 o
    			let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
    			// replace 적용 x => 동작 o
    			//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
    		
    		
    			str += "<div id='explanation_result'>";
    			str += "<img src='/display?fileName=" + fileCallPath +"'>";
    			str += "<div class='imgDeleteBtn2' data-file='" + fileCallPath + "'>x</div>";
    			str += "<input type='hidden' name='explanationImageList["+i+"].fileName' value='"+ obj.fileName +"'>";
    			str += "<input type='hidden' name='explanationImageList["+i+"].uuid' value='"+ obj.uuid +"'>";
    			str += "<input type='hidden' name='explanationImageList["+i+"].uploadPath' value='"+ obj.uploadPath +"'>";
    			str += "<input type='hidden' name='explanationImageList["+i+"].imgFileKind' value='le_Explanation'>";
    			str += "</div>";
    		
    			uploadExplanation.append(str);
       			
    		}
    		
    	}
    	
    	/* 이미지 삭제 버튼 동작 */
    	$("#uploadExplanation").on("click", ".imgDeleteBtn2", function(e){
    		
    		deleteFile();
    		
    	});
    	
    	/* 파일 삭제 메서드 */
    	function deleteFile(){
    		
    		let targetFile = $(".imgDeleteBtn").data("file");
    		
    		let targetDiv = $("#result_card");
    		
    		$.ajax({
    			url: '/product/deleteFile',
    			data : {fileName : targetFile},
    			dataType : 'text',
    			type : 'POST',
    			success : function(result){
    				console.log(result);
    				
    				targetDiv.remove();
    				$("#yj_mainImg").val("");
    				
    			},
    			error : function(result){
    				console.log(result);
    				
    				alert("파일을 삭제하지 못하였습니다.")
    			}
    		});
    	}
    	
    	/* 파일 삭제 메서드 */
    	function deleteFile(){
    		
    		let targetFile = $(".imgDeleteBtn2").data("file");
    		
    		let targetDiv = $("#explanation_result");
    		
    		$.ajax({
    			url: '/product/deleteFile',
    			data : {fileName : targetFile},
    			dataType : 'text',
    			type : 'POST',
    			success : function(result){
    				console.log(result);
    				
    				targetDiv.remove();
    				$("#yj_ticketImg").val("");
    				
    			},
    			error : function(result){
    				console.log(result);
    				
    				alert("파일을 삭제하지 못하였습니다.")
    			}
    		});
    	}
    	
    	
    	var theme=$('#yj_checkSelect').val();
    	var chkbox=$('.yj_check');
    	theme=theme.split(',');

    	for(i=0; i<theme.length; i++) {
    	  for(j=0; j<chkbox.length; j++) {
    	    if(theme[i]==chkbox[j].value) {
    	      chkbox[j].checked=true;
    	    }
    	  }
    	}
    	
    	//취소 하기 버튼 클릭시 상세보기로 이동
    	$(".yj_le_productCancelButton").on("click", function(e){
    		e.preventDefault();
    		$("#moveForm").attr("action", "/product/le_enrollDetail");
    		$("#moveForm").submit();
    	});	
    	
    	//수정하기
    	$(".yj_le_productModifyButton").on("click", function(e){
    		e.preventDefault();
    		$("#modifyForm").submit();	
    	});
    	
    	
    	
    	
    </script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>