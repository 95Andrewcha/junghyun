<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/reset.css">
  <!--   <link rel="stylesheet" href="/resources/bootstrap/css/style.css"> -->
    <link rel="stylesheet" href="/resources/css/product/ac_Enroll.css">
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
	
</style>

</head>

<body>
<%@ include file="../main/c_acoordian.jsp" %>
    <section class="yj_productEnroll_section">
        <div class="yj_productEnroll">
            <b class="yj_roomB">기본 정보</b>
            <ul>
                <li style="width:32%;">
                    숙소 종류 :
                    <select name="ac_Kind" id="yj_enrollSelect1" disabled>
                        <option value="">-------</option>
                        <option value="1" <c:if test="${ac_enrollDetail.ac_Kind eq 1}">selected</c:if>>호텔</option>
                        <option value="2" <c:if test="${ac_enrollDetail.ac_Kind eq 2}">selected</c:if>>모텔</option>
                        <option value="3" <c:if test="${ac_enrollDetail.ac_Kind eq 3}">selected</c:if>>펜션</option>
                    </select>
                </li>
                <li style="width:32%;">
                    호텔 등급 :
                    <select name="ac_Stars" id="yj_enrollSelect2" disabled>
                        <option value="">-------</option>
                        <option value="1" <c:if test="${ac_enrollDetail.ac_Stars eq 1}">selected</c:if>>1성급</option>
                        <option value="2" <c:if test="${ac_enrollDetail.ac_Stars eq 2}">selected</c:if>>2성급</option>
                        <option value="3" <c:if test="${ac_enrollDetail.ac_Stars eq 3}">selected</c:if>>3성급</option>
                        <option value="4" <c:if test="${ac_enrollDetail.ac_Stars eq 4}">selected</c:if>>4성급</option>
                        <option value="5" <c:if test="${ac_enrollDetail.ac_Stars eq 5}">selected</c:if>>5성급</option>
                    </select>
                </li>
                <li style="width:32%;">
                    대표자 성함 : 
                    <input type="text" name="c_Name" class="" id="" value="${ac_enrollDetail.c_Name}" size="6" disabled>
                </li>
            </ul>
            <ul>
                <li style="width:32%;">
                    업체명 :
                    <input type="text" name="ac_CompanyName" class="" id="" value="${ac_enrollDetail.ac_CompanyName }" disabled>
                </li>
                <li style="width:32%;">
                    사업자 번호 :
                    <input type="text" name="ac_CompanyNumber" class="" id="" value="${ac_enrollDetail.ac_CompanyNumber}" disabled>
                </li>
                <li style="width:32%;">
                    핸드폰 번호 :
                    <input type="text" name="ac_Phone" class="" id="" value="${ac_enrollDetail.ac_Phone}" disabled>
                </li>
            </ul>
            <ul>
                
                <li style="width:32%;">
                    업체 전화번호 :
                    <input type="text" name="ac_Call" class="" id="" value="${ac_enrollDetail.ac_Call}" disabled>
                </li>
                <li style="width:64%;">
                    주소 :
                    <input type="text" name="ac_Add" class="" id="address_kakao" value="${ac_enrollDetail.ac_Add}" size="67" disabled>
                </li>
            </ul>
            <ul>
                
            </ul>
            <ul>
                <li class="yj_mainImgLi">
                    메인이미지추가<span>*이미지는 최대 10개까지만 업로드 가능합니다.</span>
                    <label for="yj_mainImg">이미지 파일</label>
                    <input type="file" multiple="multiple" name="fileName" class="yj_mainImgAdd" id="yj_mainImg" value="숙소 메인이미지" disabled>
                    <div class="yj_imgpreview" id="uploadResult">
                        이미지 미리보기<br>
                        
                    </div>
                </li>
                
            </ul>
            <table border="1" class="yj_dayTable" style="width: 90%; margin: 30px auto;">
                    <tr>
                        <td colspan="4" class="yj_title1">기간</td>
                    </tr>
                    <tr id="yj_tr1">
                        <td></td>
                        <th>준성수기</th>
                        <th>성수기</th>
                    </tr>
                    <tr>
                        <th>기간시작</th>
                        <td><input type="text" name="ac_junStartDate" class="" id="yj_junDateStart" value="${ac_enrollDetail.ac_junStartDate}" disabled></td>
                        <td><input type="text" name="ac_maxStartDate" class="" id="yj_maxDateStart" value="${ac_enrollDetail.ac_maxStartDate}" disabled></td>
                    </tr>
                    <tr>
                        <th>기간종료</th>
                        <td><input type="text" name="ac_junEndDate" class="" id="yj_junDateEnd" value="${ac_enrollDetail.ac_junEndDate}" disabled></td>
                        <td><input type="text" name="ac_maxEndDate" class="" id="yj_maxDateEnd" value="${ac_enrollDetail.ac_maxEndDate}" disabled></td>
                    </tr>
                </table>
        </div>
        <div class="yj_productEnroll_service">
            <ul>
                <b class="yj_roomB">부대시설 및 부가서비스<br></b>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="수영장" class="yj_check" disabled>수영장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="바베큐장" class="yj_check" disabled>바베큐장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="놀이방" class="yj_check" disabled>놀이방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="흡연실" class="yj_check" disabled>흡연실</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="WIFI" class="yj_check" disabled>WIFI</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="루프탑" class="yj_check" disabled>루프탑</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="레스토랑" class="yj_check" disabled>레스토랑</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="스파" class="yj_check" disabled>스파</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="골프장" class="yj_check" disabled>골프장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공용샤워장" class="yj_check" disabled>공용샤워장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공용주방" class="yj_check" disabled>공용주방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공용화장실" class="yj_check" disabled>공용화장실</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="노래방" class="yj_check" disabled>노래방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="농구장" class="yj_check" disabled>농구장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="매점/편의점" class="yj_check" disabled>매점/편의점</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="조식서비스" class="yj_check" disabled>조식서비스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="바/라운지" class="yj_check" disabled>바/라운지</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="룸서비스" class="yj_check" disabled>룸서비스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="무료주차" class="yj_check" disabled>무료주차</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="반려동물 동반가능" class="yj_check" disabled>반려동물 동반가능</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="발렛파킹" class="yj_check" disabled>발렛파킹</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="개인사물함" class="yj_check" disabled>개인사물함</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="사우나" class="yj_check" disabled>사우나</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="온천" class="yj_check" disabled>온천</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="연회장" class="yj_check" disabled>연회장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="워터슬라이드" class="yj_check" disabled>워터슬라이드</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="족구장" class="yj_check" disabled>족구장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="찜질방" class="yj_check" disabled>찜질방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="축구/풋살장" class="yj_check" disabled>축구/풋살장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="카페" class="yj_check" disabled>카페</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="탁구장" class="yj_check" disabled>탁구장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="세미나실" class="yj_check" disabled>세미나실</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="마사지" class="yj_check" disabled>마사지</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="상비약" class="yj_check" disabled>상비약</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="취사가능" class="yj_check" disabled>취사가능</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="셔틀버스" class="yj_check" disabled>셔틀버스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="픽업" class="yj_check" disabled>픽업</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공항 셔틀" class="yj_check" disabled>공항 셔틀</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="스타일러" class="yj_check" disabled>스타일러</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="넷플릭스" class="yj_check" disabled>넷플릭스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="디즈니 플러스" class="yj_check" disabled>디즈니 플러스</label>
                </li>
            </ul>
            <input type="hidden" id="yj_checkSelect" name="ac_Service" value="${ac_enrollDetail.ac_Service }" disabled>
        </div>
        <div class="yj_productEnroll_info">
            <b class="yj_roomB" style="display: block;">숙소 정보</b><br>
            <textarea name="ac_Info" id="yj_productInfo" class="yj_info1" placeholder="객실 소개를 적어주세요." readonly>${ac_enrollDetail.ac_Info}</textarea>
        </div>
         	<button class="yj_ac_productModifyButton" id="yj_allButton">수정 하기</button>
         	<button class="yj_ac_productDeleteButton" id="yj_allButton">삭제 하기</button>
        	<button class="yj_ac_productListButton" id="yj_allButton" onclick="">목록 보기</button>
        
        <form id="moveForm" action="/product/ac_productManage" method="get" >
        </form>
    </section>
<script src="https://cdn.tiny.cloud/1/jwxkdrerytfloa815l6tcfyb3wmpnays543jc9301lqp5r9b/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	//숙박 업체 이미지 정보 호출
	let ac_ProductNum = '${ac_enrollDetail.ac_ProductNum}';
	let uploadResult = $('#uploadResult');
	
	
	
	$.getJSON("/getAc_productImageList",{ac_ProductNum : ac_ProductNum}, function(arr){
		
		//이미지가 없는 경우
		if(arr.length == 0){

			return;
		}
		
		for(let i = 0; i<arr.length; i++){
			let str = "";
			let obj = arr[i];
		
			let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
			str += "<div id='result_card'";
			str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
			str += ">";
			str += "<img src='/display?fileName=" + fileCallPath +"'>";
			str += "</div>";
		
			uploadResult.append(str);
			
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
	    selector: '#yj_productInfo',
	    height: 400,
	    plugins: [
	        "advlist autolink lists link image charmap print preview anchor",
	        "searchreplace visualblocks code fullscreen",
	        "insertdatetime media table contextmenu paste"
	      ],
	    menubar: false,
	    toolbar: edit_toolbar
	  });
	tinymce.activeEditor.setMode('readonly');

});

	
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
	
	//이미지 출력
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
			str += "<input type='hidden' name='imageList["+i+"].imgFileKind' value='ac_Main'>";
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
			url: '/product/deleteFile',
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
	
	/* 수정 페이지 이동 */
	$(".yj_ac_productModifyButton").on("click", function(e){
		e.preventDefault();
		let addInput = '<input type="hidden" name="ac_ProductNum" value="${ac_enrollDetail.ac_ProductNum}">';
		$("#moveForm").append(addInput);
		$("#moveForm").attr("action", "/product/ac_enrollModify");
		$("#moveForm").submit();
	});	
	
	/* 목록 이동 버튼 */
	$(".yj_ac_productListButton").on("click", function(e){
		e.preventDefault();
		$("#moveForm").submit();	
	});
	
	/* 삭제 버튼 */
	$(".yj_ac_productDeleteButton").on("click", function(e){
		e.preventDefault();
		let moveForm = $("#moveForm");
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="ac_ProductNum" value="${ac_enrollDetail.ac_ProductNum}">');
		moveForm.attr("action", "/product/ac_enrollDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	});
	
	
	
</script>

</body>



<%@ include file="../main/footer.jsp" %>
</html>