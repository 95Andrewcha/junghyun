<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="/resources/css/common/admin_common.css">
<link rel="stylesheet" href="/resources/css/common/admin_popup.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
 
    
 


        .choose_value >h3{display:flex; font-size:16px; background:#e3e3e3; width:100%; padding-left:10px; line-height:35px;}
        .cjh_container2{margin-top:50px;}
        .cjh_contents>thead, tbody, tfoot, tr, td, th {border:1px solid !important; padding:15px!important;}
      
        .cjh_contents>table{width:100%; text-align:center;}
        .cjh_bu_container{display:flex; justify-content:space-evenly; padding:20px; width:100%;}
        	.cjh_bu_container .cjh_bu_container_img{width:50%; height:auto;}
  				.cjh_bu_container .cjh_bu_container_img>img{width:100%; height: 100%;}
  				
  		.for_center{padding-left:10px;}
  		table{margin:0 auto; width:90%;}
  		
  		
.datePicker {
        text-align:center;
        width:100%;
    }  		
.ul_datepicker>li{display:inline-block; }
.ul_datepicker{margin-bottom:0; margin-left:5px !important}
.ui-datepicker-calendar>thead>tr>th{padding:0.7em 0.3em !important;}
.ui-datepicker-calendar>tbody>tr>td{padding:0 !important;}
    </style>
</head>

<body>
<%@ include file="../../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 <!-- 내용 -->
  	 	<div class="cjh_title">
  		<h2>상품 예약 관리</h2>
  	</div><!-- cjh_title -->
  	<div class="cjh_contaerin2_content">
  		<div class="admin_product_reserv">
  			<table style="width:100%;">
  				<tr>
  					<th class="for_center">검색어</th>
  					<th>
	  					<select style="width:100px;">
	  						<option>예약번호</option>
	  						<option>예약자</option>
	  						<option>결제수단</option>	
	  					</select>
	  					<input type="textarea" style="width:345px;">
	  				</th>
  				</tr>
  				<tr>
  					<th class="for_center">기간</th>
  					<th style="display:flex; border:0px solid #e3e3e3 !important">
  						<select style="width:100px;">
  							<option>예약일</option>
  							<option>결제일</option>
  						</select>
  					
  						<ul class="ul_datepicker">
						<li><input type="text" autocomplete='off' class="datePicker" name="startDate" onChange="inputDateComparison(this);" value=""/></li>
						<li>&nbsp;~&nbsp;</li>
						<li><input type="text" autocomplete='off' class="datePicker" name="endDate" onChange="inputDateComparison(this);" value=""/></li>

					</ul>
  					</th>
  				</tr>
  				
  				<tr>
  					<th class="for_center">상품명</th>
  					<th>
  						<select style="width:100px;">
  							<option>숙박</option>
  							<option>레저</option>
  						</select>
  						<input type="textarea" style="width:345px;">
  					</th>
  				</tr>
  				<tr>
  					<th class="for_center">상태</th>
  					<th>
  					<select style="width:100px;">
  						<option>사용완료</option>
  						<option>예약취소</option>
  						<option>예약완료</option>
  						<option>환불완료</option>
  					</select>
  					<input type="button" value="상품 찾기">
  					</th>
  				
  						
  					
  				</tr>
  			</table>
  		</div>
  		
  		<div class="cjh_contents" style="margin-top:20px;">
  			<table>
  			<tr>
  				<th>결제일</th>
  				<th>예약번호</th>
  				<th>예약일</th>
  				<th>예약자</th>
  				
  				<th>상품명/옵션</th>
  				<th>결제 수단</th>
  				<th>결제 금액</th>
  				<th>상태</th>
  				<th>상세보기</th>

  			</tr>
  			<tr>
  				<td>{껼제일}</td>
  				<td>{예약번호}</td>
  				<td>{예약일}</td>
  				<td>{예약자}</td>
  				
  				
  				<td style="width:250px;">
  			
  				<div class="cjh_bu_container">
  					<div class="cjh_bu_container_img">
  						<img src="${contextPath}/resources/img/main_slide(01).png" alt="등록 업체 사진">
  					</div>
  					<div class="cjh_bu_container_title">
  						<p>{파라다이스 호텔(디럭스)}
  					</div>
  				</div>
  				</td>
  				<td>{결제 수단}</td>
  				<td>{결제 금액}</td>
  				<td>{상태}</td>
  				<td><input type="button" value="상세보기" id="contents"></td>

  				
  			
  			</table>
  		</div>
  	</div><!-- cjh_container2_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
  <div id="popup">
        <div id="popmenu">
            <table style="margin-top:15px;">
            	<tr>
            		<th colspan="8">주문자 정보</th>
            	</tr>
            	<tr>
            		<th colspan="2">주문자</th>
            		<td colspan="2">{n.name}</td>
            		<th colspan="2">예약 번호</th>
            		<td colspan="2">{예약 번호}</td>
            	</tr>
            	<tr>
            		<th colspan="2">아이디</th>
            		<td colspan="2">{n.id}</td>
            		<th colspan="2">전화번호</th>
            		<td colspan="2">{n.phone}</td>
            	</tr>
            	<tr>
            		<th>결제일</th>
            		<td>{결제일}</td>
            		<th>결제수단</th>
            		<td>{결제수단}</td>
            		<th>결제금액</th>
            		<td>{결제금액}</td>
            		<th>상태</th>
            		<td>{상태}</td>
            	</tr>
            	<tr>
            		<th>사유</th>
            		<td>{사유}</td>
            		<th>사유</th>
            		<td colspan="6">{구체적 이유}</td>
            	</tr>
            	
            </table>   
            <table style="margin-top:15px;">
            	<tr>
            		<th colspan="8">주문자 정보</th>
            	</tr>
            	<tr>
            		<th colspan="2">주문자</th>
            		<td colspan="2">{n.name}</td>
            		<th colspan="2">예약 번호</th>
            		<td colspan="2">{예약 번호}</td>
            	</tr>
            	<tr>
            		<th colspan="2">아이디</th>
            		<td colspan="2">{n.id}</td>
            		<th colspan="2">전화번호</th>
            		<td colspan="2">{n.phone}</td>
            	</tr>
            </table>
            <table style="margin-top:15px;">
            	<tr>
            		<th colspan="4">상품정보</th>
            		
            	</tr>
            	<tr>
            		<th colspan="1" style="width:20%;">상품명</th>
            		<td colspan="3">
            			<div class="cjh_bu_container">
  							<div class="cjh_bu_container_img">
  								<img src="${contextPath}/resources/img/main_slide(01).png" alt="등록 업체 사진">
  							</div>
	  						<div class="cjh_bu_container_title">
	  							<p>{파라다이스 호텔(디럭스)}</p>
	  						</div>
  						</div>
            		</td>
            		
            	</tr>
            	<tr>
            		<th>업체 대표 명</th>
            		<td>{업체 대표 명}</td>
            		<th>업체 전화번호</th>
            		<td>{td.}</td>
            	</tr>
            	
            </table>
            
            <input type="button" class="submit" value="확인">
            <input type="button" class="exit" value="닫기" class="exit">
            
      
        </div>
    </div>
    <%@ include file="../../main/footer.jsp" %>
    <script>
    
    $(document).ready(function(){
        $("#contents").click(function(){
            $("#popup").fadeIn();
        });
        $(".exit").click(function(){
            $("#popup").fadeOut();
        });
  });

    $(document).ready(function() {



        $(".datePicker").datepicker();
        
        // jQuery UI Datepicker 한글 변환
        jQuery.datepicker.regional['ko'] = {
              closeText : "닫기"
            , prevText : ""
            , nextText : ""
            , currentText : "오늘"
            , monthNames : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
            , monthNamesShort : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
            , dayNames : ["일", "월", "화", "수", "목", "금", "토"]
            , dayNamesShort : ["일", "월", "화", "수", "목", "금", "토"]
            , dayNamesMin : ["일", "월", "화", "수", "목", "금", "토"]
            , weekHeader : "Wk"
            , dateFormat : "yy-mm-dd"
            , firstDay : 0
            , isRTL : false
            , yearSuffix : "&nbsp;년"
            , showMonthAfterYear : true
            , changeMonth : true
            // , changeYear : true
            // , autoSize : true

            , beforeShow:function(input) {
                var position = jQuery(input).position();
                setTimeout(function() {
                    jQuery("#ui-datepicker-div").css({"left":position.left});
               })
            }
        };
        jQuery.datepicker.setDefaults(jQuery.datepicker.regional['ko']);
    });
    function inputDateComparison(obj) {

  //현재 엘리먼트의 부모(li) > 부모(ul) > 첫번째자식(li) > 첫번째자식(input)
  let startDate = inputDateSplit(obj.parentNode.parentNode.firstElementChild.firstChild.value);    // 시작일



  //현재 엘리먼트의 부모(li) > 부모(ul) > 마지막자식(li) > 첫번째자식(input)

  let endDate = inputDateSplit(obj.parentNode.parentNode.lastElementChild.firstChild.value);        // 종료일

  let objDate = inputDateSplit(obj.value);    // 입력한 엘리먼트의 일자
  //입력일을 확인하는 이유는 현재 작성한 일자가 시작일인지 종료일인지 확인하기 위해서이다.

  if(startDate == objDate && startDate > endDate) {
    alert("시작일이 종료일보다 이 후 일수는 없습니다.\n다시 선택하여 주시기 바랍니다.");
    obj.parentNode.parentNode.firstElementChild.firstChild.value = "";
    // obj.parentNode.parentNode.firstElementChild.firstChild.focus();
  }
  else if(endDate == objDate && endDate < startDate) {

  if(obj.parentNode.parentNode.firstElementChild.firstChild.value == "") {
    alert("시작일이 입력되지 않았습니다.\n시작일을 먼저 입력해주세요");
    obj.parentNode.parentNode.lastElementChild.firstChild.value = "";
    // obj.parentNode.parentNode.firstElementChild.firstChild.focus();
  }



  else {
    alert("종료일이 시작일보다 이 전 일수는 없습니다.\n다시 선택하여 주시기 바랍니다.");
    obj.parentNode.parentNode.lastElementChild.firstChild.value = "";
    // obj.parentNode.parentNode.lastElementChild.lastChild.focus();
  }
  }



  else {
  return false;
  }
  }


  //날짜형식에 "-"이 사용된 경우에 한하여 날짜값에서 "-" 기호를 제거한다.
  function inputDateSplit(obj) {



  let dateArray = obj.split("-");
  return dateArray[0] + dateArray[1] + dateArray[2];
  }
    </script>
</body>
</html>