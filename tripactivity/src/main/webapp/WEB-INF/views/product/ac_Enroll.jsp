<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/reset.css">
  <!--   <link rel="stylesheet" href="/resources/bootstrap/css/style.css"> -->
    <link rel="stylesheet" href="/resources/css/product/ac_Enroll.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
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
    <form action="/product/ac_Enroll" method="post" class="yj_roomForm">
    <section class="yj_productEnroll_section">
        <div class="yj_productEnroll">
            <b class="yj_roomB">기본 정보</b>
            <ul>
                <li style="width:32%;">
                    숙소 종류 :
                    <select name="ac_Kind" id="yj_enrollSelect">
                        <option value="">-------</option>
                        <option value=1 id="yj_hotel">호텔</option>
                        <option value=2 id="yj_motel">모텔</option>
                        <option value=3 id="yj_pension">펜션</option>
                    </select>
                </li>
                <li style="width:32%;">
                    호텔 등급 :
                    <select name="ac_Stars" id="yj_enrollSelect">
                        <option value="">-------</option>
                        <option value="1">1성급</option>
                        <option value="2">2성급</option>
                        <option value="3">3성급</option>
                        <option value="4">4성급</option>
                        <option value="5">5성급</option>
                    </select>
                </li>
                <li style="width:32%;">
                    대표자 성함 : 
                    <input type="text" name="c_Name" class="" id="" value="${cmemberVO.c_Name }" size="6">
                </li>
            </ul>
            <ul>
                <li style="width:32%;">
                    업체명 :
                    <input type="text" name="ac_CompanyName" class="" id="" value="${cmemberVO.company_Name }">
                </li>
                <li style="width:32%;">
                    사업자 번호 :
                    <input type="text" name="ac_CompanyNumber" class="" id="" value="${cmemberVO.company_Number }">
                </li>
                <li style="width:32%;">
                    핸드폰 번호 :
                    <input type="text" name="ac_Phone" class="" id="" value="${cmemberVO.phone1 }-${cmemberVO.phone2 }-${cmemberVO.phone3 }">
                </li>
            </ul>
            <ul>
                
                <li style="width:32%;">
                    업체 전화번호 :
                    <input type="text" name="ac_Call" class="" id="" value="">
                </li>
                <li style="width:64%;">
                    주소 :
                    <input type="text" name="ac_Add" class="" id="address_kakao" value="" size="67">
                    <input type="hidden" name="ac_Area" id="yj_acArea" value="">
                </li>
            </ul>
            <ul>
                
            </ul>
            <ul>
                <li class="yj_mainImgLi">
                    메인이미지추가<span>*이미지는 최대 10개까지만 업로드 가능합니다.</span>
                    <label for="yj_mainImg">이미지 파일</label>
                    <input type="file" multiple="multiple" name="fileName" class="yj_mainImgAdd" id="yj_mainImg" value="숙소 메인이미지">
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
                        <td><input type="text" name="ac_junStartDate" class="" id="yj_junDateStart" value="" autocomplete="off" readonly="readonly"></td>
                        <td><input type="text" name="ac_maxStartDate" class="" id="yj_maxDateStart" value="" autocomplete="off" readonly="readonly"></td>
                    </tr>
                    <tr>
                        <th>기간종료</th>
                        <td><input type="text" name="ac_junEndDate" class="" id="yj_junDateEnd" value="" autocomplete="off" readonly="readonly"></td>
                        <td><input type="text" name="ac_maxEndDate" class="" id="yj_maxDateEnd" value="" autocomplete="off" readonly="readonly"></td>
                    </tr>
                </table>
        </div>
        <div class="yj_productEnroll_service">
            <ul>
                <b class="yj_roomB">부대시설 및 부가서비스<br></b>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="수영장">수영장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="바베큐장">바베큐장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="놀이방">놀이방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="흡연실">흡연실</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="WIFI">WIFI</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="루프탑">루프탑</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="레스토랑">레스토랑</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="스파">스파</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="골프장">골프장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공용샤워장">공용샤워장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공용주방">공용주방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공용화장실">공용화장실</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="노래방">노래방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="농구장">농구장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="매점/편의점">매점/편의점</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="조식서비스">조식서비스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="바/라운지">바/라운지</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="룸서비스">룸서비스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="무료주차">무료주차</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="반려동물 동반가능">반려동물 동반가능</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="발렛파킹">발렛파킹</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="개인사물함">개인사물함</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="사우나">사우나</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="온천">온천</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="연회장">연회장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="워터슬라이드">워터슬라이드</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="족구장">족구장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="찜질방">찜질방</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="축구/풋살장">축구/풋살장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="카페">카페</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="탁구장">탁구장</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="세미나실">세미나실</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="마사지">마사지</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="상비약">상비약</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="취사가능">취사가능</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="셔틀버스">셔틀버스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="픽업">픽업</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="공항 셔틀">공항 셔틀</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="스타일러">스타일러</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="넷플릭스">넷플릭스</label>
                </li>
                <li>
                    <label><input type="checkbox" name="ac_Service" value="디즈니 플러스">디즈니 플러스</label>
                </li>
            </ul>
        </div>
        <div class="yj_productEnroll_info">
            <b class="yj_roomB" style="display: block;">숙소 정보</b><br>
            <textarea name="ac_Info" id="yj_productInfo" class="yj_info1" placeholder="객실 소개를 적어주세요."></textarea>
        </div>
        <input type="submit" class="yj_roomSubmitButton1" id="yj_allButton" onclick="" value="등록 하기">
        <button type="reset" class="yj_roomSubmitButton2" id="yj_allButton" onclick="">취소 하기</button>
    </section>
</form>
<script src="https://cdn.tiny.cloud/1/jwxkdrerytfloa815l6tcfyb3wmpnays543jc9301lqp5r9b/tinymce/5/tinymce.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">

//textarea 에디터
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

});

	
    /* 이미지 업로드 */
	$(".yj_mainImgAdd").on("change", function(e){
		
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
	
	window.onload = function(){
	    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                document.getElementById("address_kakao").value = data.address; // 주소 넣기
	            }
	        }).open();
	    });
	}
	
	//캘린더 적용
	$(document).ready(function(){
		/* 설정 */	
		const config = {
				dateFormat: 'yy-mm-dd',	//날짜 포맷이다. 보통 yy-mm-dd 를 많이 사용하는것 같다.
		        prevText: '이전 달',	// 마우스 오버시 이전달 텍스트
		        nextText: '다음 달',	// 마우스 오버시 다음달 텍스트
		        closeText: '닫기', // 닫기 버튼 텍스트 변경
		        currentText: '오늘', // 오늘 텍스트 변경
		        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	//한글 캘린더중 월 표시를 위한 부분
		        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],	//한글 캘린더 중 월 표시를 위한 부분
		        dayNames: ['일', '월', '화', '수', '목', '금', '토'],	//한글 캘린더 요일 표시 부분
		        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],	//한글 요일 표시 부분
		        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],	// 한글 요일 표시 부분
		        showMonthAfterYear: true,	// true : 년 월  false : 월 년 순으로 보여줌
		        yearSuffix: '년',	//
		        showButtonPanel: true,	// 오늘로 가는 버튼과 달력 닫기 버튼 보기 옵션
		        changeMonth: true,
			    changeYear: true
		}
		
		//준성수기 시작 달력
		$(function() {
	  		let publeYear = '${ac_enrollDetail.ac_junStartDate}';
			$( "#yj_junDateStart" ).datepicker(config);
			$( "#yj_junDateStart" ).datepicker('setDate', publeYear);
		});
		
		//성수기 시작 달력
		$(function() {
	  		let publeYear = '${ac_enrollDetail.ac_junStartDate}';
			$( "#yj_maxDateStart" ).datepicker(config);
			$( "#yj_maxDateStart" ).datepicker('setDate', publeYear);
		});
		
		//준성수기 끝 달력
		$(function() {
	  		let publeYear = '${ac_enrollDetail.ac_junStartDate}';
			$( "#yj_junDateEnd" ).datepicker(config);
			$( "#yj_junDateEnd" ).datepicker('setDate', publeYear);
		});
		
		//성수기 끝 달력
		$(function() {
	  		let publeYear = '${ac_enrollDetail.ac_junStartDate}';
			$( "#yj_maxDateEnd" ).datepicker(config);
			$( "#yj_maxDateEnd" ).datepicker('setDate', publeYear);
		});
	});
	
	var add = $('#address_kakao').value;
	var result = add.slice(0,2);
	
</script>

</body>



<%@ include file="../main/footer.jsp" %>
</html>