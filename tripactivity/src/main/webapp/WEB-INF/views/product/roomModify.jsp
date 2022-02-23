<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/bootstrap/css/style.css">
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
<form action="/product/roomModify" method="post" id="modifyForm">
	<div class="yj_productEnroll_option"id="yj_room">
            <ul>
                <li>
                    <b class="yj_roomB">객실 정보</b>
                </li>
            </ul>
            <div class="yj_productEnroll_room">
                <ul>
                    <li style="width:64%">
                        객실이름 :
                        <input type="text" name="ac_roomName" class="" id="" value="${roomDetail.ac_roomName}" size="55">
                    </li>
                    <li style="width:32%">
                        업체명 :
                        <input type="text" name="company_Name" class="" id="" value="${roomDetail.company_Name }">
                    </li>
                </ul>
                <ul>
                	<li style="width:32%;">
                        숙박 할인율 : 
                        <input type="text" maxlength="2" value="${roomDetail.ac_stayDiscount }" id="stay_Discount">
                        <input type="hidden" name="ac_stayDiscount" value="${roomDetail.ac_stayDiscount}">
                    </li>
                    <li style="width:32%;">
                        대실 할인율 : 
                        <input type="text" maxlength="2" value="${roomDetail.ac_timeDiscount }" id="time_Discount">
                        <input type="hidden" name="ac_timeDiscount" value="${roomDetail.ac_timeDiscount}">
                    </li>
                    <li style="width:32%;">
                        객실 수 : 
                        <input type="text" name="ac_roomCount" class="" id="" value="${roomDetail.ac_roomCount }">
                    </li>
                </ul>
                <div class="yj_div1">
                    <ul>
                        <li style="width:32%;">
                            기준인원 :
                            <input type="text" name="ac_standardPeople" class="" id="" value="${roomDetail.ac_standardPeople }">
                        </li>
                        <li style="width:32%;">
                            최대인원 :
                            <input type="text" name="ac_maxPeople" class="" id="" value="${roomDetail.ac_maxPeople }">
                        </li>
                        <li style="width:32%;">
                            인원당 추가요금 : 
                            <input type="text" name="ac_addPrice" class="" id=""size="16" value="${roomDetail.ac_addPrice }">
                        </li>
                    </ul>
                </div>
                <table border="1" class="yj_dayTable">
                    <tr>
                        <td colspan="4" class="yj_title1">숙박</td>
                    </tr>
                    <tr id="yj_tr1">
                        <td></td>
                        <th>준성수기</th>
                        <th>성수기</th>
                        <th>비성수기</th>
                    </tr>
                    <tr>
                        <th>평일요금</th>
                        <td><input type="text" name="ac_n_sjunPrice" class="" id="" value="${roomDetail.ac_n_sjunPrice }"></td>
                        <td><input type="text" name="ac_n_smaxPrice" class="" id="" value="${roomDetail.ac_n_smaxPrice }"></td>
                        <td><input type="text" name="ac_n_sPrice" class="" id="" value="${roomDetail.ac_n_sPrice }"></td>
                    </tr>
                    <tr>
                        <th>주말요금</th>
                        <td><input type="text" name="ac_h_sjunPrice" class="" id="" value="${roomDetail.ac_h_sjunPrice }"></td>
                        <td><input type="text" name="ac_h_smaxPrice" class="" id="" value="${roomDetail.ac_h_smaxPrice }"></td>
                        <td><input type="text" name="ac_h_sPrice" class="" id="" value="${roomDetail.ac_h_sPrice }"></td>
                    </tr>
                    <tr>
                        <th>입실시간</th>
                        <td colspan="3"><input type="text" name="ac_s_startTime" class="" id="" value="${roomDetail.ac_s_startTime }"></td>
                        <!-- <td><input type="text" name="" class="" id="" value=""></td>
                        <td><input type="text" name="" class="" id="" value=""></td> -->
                    </tr>
                    <tr>
                        <th>퇴실시간</th>
                        <td colspan="3"><input type="text" name="ac_s_endTime" class="" id="" value="${roomDetail.ac_s_endTime }"></td>
                        <!-- <td><input type="text" name="" class="" id="" value=""></td>
                        <td><input type="text" name="" class="" id="" value=""></td> -->
                    </tr>
                </table>
                <table border="1" class="yj_daesilTable">
                    <tr>
                        <td colspan="4" class="yj_title2">대실<span>*호텔,펜션의 경우 해당(X)</span></td>
                    </tr>
                    <tr>
                        <td></td>
                        <th>준성수기</th>
                        <th>성수기</th>
                        <th>비성수기</th>
                    </tr>
                    <tr>
                        <th>평일요금</th>
                        <td><input type="text" name="ac_n_djunPrice" class="" id="" value="${roomDetail.ac_n_djunPrice }"></td>
                        <td><input type="text" name="ac_n_dmaxPrice" class="" id="" value="${roomDetail.ac_n_dmaxPrice }"></td>
                        <td><input type="text" name="ac_n_dPrice" class="" id="" value="${roomDetail.ac_n_dPrice }"></td>
                    </tr>
                    <tr>
                        <th>주말요금</th>
                        <td><input type="text" name="ac_h_djunPrice" class="" id="" value="${roomDetail.ac_h_djunPrice }"></td>
                        <td><input type="text" name="ac_h_dmaxPrice" class="" id="" value="${roomDetail.ac_h_dmaxPrice }"></td>
                        <td><input type="text" name="ac_h_dPrice" class="" id="" value="${roomDetail.ac_h_dPrice }"></td>
                    </tr>
                    <tr>
                        <th>마감시간</th>
                        <td colspan="3"><input type="text" name="ac_d_endTime" class="" id="" value="${roomDetail.ac_d_endTime }"></td>
                        <!-- <td><input type="text" name="" class="" id="" value=""></td>
                        <td><input type="text" name="" class="" id="" value=""></td> -->
                    </tr>
                    <tr>
                        <th>이용시간</th>
                        <td colspan="3"><input type="text" name="ac_d_maxTime" class="" id="" value="${roomDetail.ac_d_maxTime }"></td>
                        <!-- <td><input type="text" name="" class="" id="" value=""></td>
                        <td><input type="text" name="" class="" id="" value=""></td> -->
                    </tr>
                </table>
                <div class="yj_productEnroll_image">
                    객실이미지 추가<span>*객실 이미지는 최대 10개까지만 등록 가능합니다.</span>
                    <label for="yj_roomImg">이미지 파일</label>
                    <input type="file" multiple="multiple" name="fileName" class="yj_roomImgAdd" id="yj_roomImg" value="">
                    <div class="yj_roomImgPreview" id="uploadResult">
                        객실이미지 미리보기<br>
                        
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" name='ac_roomNum' value="${roomDetail.ac_roomNum}">
</form>
        <button class="yj_roomSubmitButton1" id="yj_allButton">수정 하기</button>
        <button class="yj_roomSubmitButton2" id="yj_allButton">돌아 가기</button>
        
        <form action="/product/roomDetail" method="get" id="moveForm">
        	<input type="hidden" name='ac_roomNum' value="${roomDetail.ac_roomNum}">
        </form>
        
        
    </section>
    
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

$(document).ready(function(){
	
	/* 숙박 할인율 값 삽입 */
	let ac_stayDiscount = '${roomDetail.ac_stayDiscount}'*100;
	$("#stay_Discount").attr("value", ac_stayDiscount);
	
	/* 대실 할인율 값 삽입 */
	let ac_timeDiscount = '${roomDetail.ac_timeDiscount}'*100;
	$("#time_Discount").attr("value", ac_timeDiscount);
	
	//객실 이미지 정보 호출
	let ac_roomNum = '${roomDetail.ac_roomNum}';
	let uploadResult = $('#uploadResult');
	
	$.getJSON("/getRoomImageList",{ac_roomNum : ac_roomNum}, function(arr){
		
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
			str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
			str += "<input type='hidden' name='imageList["+i+"].fileName' value='"+ obj.fileName +"'>";
			str += "<input type='hidden' name='imageList["+i+"].uuid' value='"+ obj.uuid +"'>";
			str += "<input type='hidden' name='imageList["+i+"].uploadPath' value='"+ obj.uploadPath +"'>";
			str += "<input type='hidden' name='imageList["+i+"].imgFileKind' value='roomImg'>";
			str += "</div>";
		
			uploadResult.append(str);
			
		}
			
	});
});

/* 숙박 할인율 Input 설정 */
$("#stay_Discount").on("propertychange change keyup paste input", function(){
	
	let userInput = $("#stay_Discount");
	let discountInput = $("input[name='ac_stayDiscount']");
	
	let discountRate = userInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	
	discountInput.val(sendDiscountRate);	
	
});
/* 대실 할인율 Input 설정 */
$("#time_Discount").on("propertychange change keyup paste input", function(){
	
	let userInput = $("#time_Discount");
	let discountInput = $("input[name='ac_timeDiscount']");
	
	let discountRate = userInput.val();					// 사용자가 입력할 할인값
	let sendDiscountRate = discountRate / 100;					// 서버에 전송할 할인값
	
	discountInput.val(sendDiscountRate);	
	
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
		str += "<input type='hidden' name='imageList["+i+"].imgFileKind' value='roomImg'>";
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

	$("#result_card").remove();
}

/* 수정 하기 */
$(".yj_roomSubmitButton1").on("click", function(e){
	e.preventDefault();
	let addInput = '<input type="hidden" name="ac_roomNum" value="${roomDetail.ac_roomNum}">';
	$("#modifyForm").append(addInput);
	$("#modifyForm").submit();
});	
/* 취소하기 시 상세페이지 이동 버튼 */
$(".yj_roomSubmitButton2").on("click", function(e){
	e.preventDefault();
	$("#moveForm").attr("action", "/product/roomDetail");
	$("#moveForm").submit();	
});


</script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>