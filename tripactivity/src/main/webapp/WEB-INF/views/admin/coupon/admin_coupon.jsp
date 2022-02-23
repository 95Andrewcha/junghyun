<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 페이지</title>

  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
  /* common*/
  *{margin:0; padding:0;}
  
ul, dl{padding-left:0 !important;}
      div{width:100%; background:white;
        height:inherit;}

        .cjh_admin_container{
            width:100%; display:flex;
            justify-content: center;
            height:auto;
        }

        .left_sider{width:20%; height:100%; background:#e3e3e3;}
        
             .cjh_admin_container2{display:flex;
        flex-direction: column;
        padding:20px;
        background:#e3e3e3;
    }
    
    /*until here*/
    
    .cjh_title{height:auto;}
     .choose_value >h3{display:flex; font-size:16px; background:#e3e3e3; width:100%; padding-left:10px; line-height:35px;}
	.choose_value{height:auto;}   
	
	  .choose_value >h3{display:flex; font-size:16px; background:#e3e3e3; width:100%; padding-left:10px; line-height:35px;}
        .cjh_container2{margin-top:50px;}
        .cjh_contents>thead, tbody, tfoot, tr, td, th {border-width:1px !important;}
        .cjh_contaerin2_content{width:1000px;}
        .cjh_contents>table{width:100%; text-align:center;}
        .cjh_bu_container{display:flex; justify-content:space-evenly; padding:30px;}
        	.cjh_bu_container .cjh_bu_container_img{width:50%; height:100px;}
  				.cjh_bu_container .cjh_bu_container_img>img{width:100%; height: 100%;}
  				
	.top{height:auto;}
	/*체크박스 크기*/
input[type=checkbox] {

transform : scale(1.3);

}

/*버튼 */
.buttons{margin-top:50px;}
.buttons ul{float:right;}
.buttons ul li{display:inline-block; margin-left:20px;}
.btns{width:100px; height:45px;}

/*popup*/
td{vertical-align:middle !important;}
.td{display:flex; align-items:center; border:none; padding:10px;}
.table2{width:80%; margin:0 auto;}
.issue{margin-bottom:0; width: 100%;
    display: flex;
    justify-content: space-between;}
.issue>li{display:inline-block; width:100%;}
.issue_select_all, .issue_select{margin-right:5px;}
.ul_datepicker>li{display:inline-block; }
.ul_datepicker{margin-bottom:0;}
.issue{ margin-right:5px;}
.overlap{margin-bottom:0;}

.overlap>li{display:inline-block;}
.dis_price{margin-bottom:0;}
.dis_price>li{display:inline-block;}
.coupon_kind{margin-bottom:0;}
.coupon_kind>li{display:inline-block;}
.textarea{resize:none; width: 100%; height:100px;}
.top>h2{width: 80%;
    text-align: left;
    margin: 0 auto;
    padding: 30px 0 30px 0;}



#popup{
    display:none;
    position: fixed;
    top:0;
    left:0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.5);
    z-index:100000000;
}

#popmenu {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 80%;
    height: 90%;
    text-align: center;
    background: #fff;
}

.exit {
    position: absolute;
    left: 55%;
    bottom: 25px;
    transform: translate(-60%,0);
    width: 60px;
    height: 30px;
    text-align: center;
    line-height: 30px;
    background: #f3f3f3;
    cursor: pointer;
}

.submit {
    position: absolute;
    left: 45%;
    bottom: 25px;
    transform: translate(-50%,0);
    width: 60px;
    height: 30px;
    text-align: center;
    line-height: 30px;
    background: #f3f3f3;
    cursor: pointer;
}

/*
datepicker
*/

.datePicker {
        text-align:center;
        width:100%;
    }
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
  		<h2>쿠폰 조회 및 등록</h2>
  	</div><!-- cjh_title -->

  		<div class="cjh_contents">
  			<input type="checkbox" style="margin-left:20px"; class="selectAll"> 전체선택
  			<table>
  			<tr>
  				<th style="width:5%";>선택</th>
  				<th style="width:12%">쿠폰 번호</th>
  				
  				<th style="width:25%";>쿠폰 이름</th>
  				<th style="width:25%">내용</th>
  				<th style="width:33%">기간</th>
  				

  			</tr>
  			
  			<c:forEach var="vo" items="${list}">
  			<tr>
  				<td><input type="checkbox" style="margin-left:10px;" class="onecheck"></td>
  				<td>${vo.coupon_Number}</td>
  				
  				
  				<td>
  				${vo.coupon_name}
  				
  				</td>
  				<td>${vo.couponContents}</td>
  				<td><fmt:formatDate value="${vo.startDate}" pattern="yyyy-MM-dd"/>
  				~
  				<fmt:formatDate value="${vo.endDate}" pattern="yyyy-MM-dd"/></td>
  				

  				</tr>
  				</c:forEach>
  			
  			</table>
  			
  			<div class="buttons">
  				<ul>
  					<li><input type="button" value="적용하기" class="btns" action="adopt.do"></li>
  					<li><input type="button" value="등록하기" class="btns enrollbtn"></li>
  					<li><input type="button" value="수정하기" class="btns" action="modify.do"></li>
  					<li><input type="button" value="모두 삭제" class="btns" action="deleteAll.do"></li>
  					<li><input type="button" value="선택 삭제" class="btns selectDelete_btn"></li>
  					
  					
  					
  				</ul>
  			</div>
  		</div><!-- cjh_content -->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
  <form action="/admin/admin_coupon_Enroll" method="post">
   <div id="popup">
        <div id="popmenu">
            <div class="top">
            	<h2>쿠폰 등록하기 </h2>
            	
            </div>
            <table class="table2">
            	<tr>
            		<td>쿠폰 명</td>
            		<td><input type="text" name="coupon_name" style="width:100%; border:none; padding:10px;" placeholder="쿠폰 명을 입력해주세요" name=></td>
            		
            	</tr>
            	<tr>
            		<td>발급 구분</td>
            		<td class="td">
            			<ul class="issue">
		            		<li><input type="checkbox" class="issue_select_all" name="issued">전체회원</li>
		            		<li><input type="checkbox" class="issue_select" name="issued" >1성 회원</li>
		            		<li><input type="checkbox" class="issue_select" name="issued">2성 회원</li>
		            		<li><input type="checkbox" class="issue_select" name="issued">3성 회원</li>
		            		<li><input type="checkbox" class="issue_select" name="issued">4성 회원</li>
	            		</ul>
            		</td>
            	</tr>
            
            	<tr>
            		<td>유효기간</td>
            		<td class="td">
            		<ul class="ul_datepicker">
						<li><input type="text" class="datePicker" name="startDate" onChange="inputDateComparison(this);" value=""/></li>
						<li>&nbsp;~&nbsp;</li>
						<li><input type="text" class="datePicker" name="endDate" onChange="inputDateComparison(this);" value=""/></li>

					</ul>
            		</td>
            	</tr>
            	<tr>
            		<td>쿠폰 내용</td>
            		<td class="td"><textarea class="textarea" placeholder="내용 입력해주세요" name="couponContents"></textarea>
            	</tr>
            	<tr>
            		<td>사용 가능 기준 금액</td>
            		<td class="td"><input type="text" name="cri_price">원이상 사용 가능.</td>
            	</tr>
            	<tr>
            		<td>중복 사용 가능 여부</td>
            		<td class="td">
            			<ul class="overlap">
            				<li><input type="radio" name="overlap_chk overlap">사용 가능</li>
            				<li><input type="radio" name="overlap_chk overlap">사용 불가</li>
            			</ul>
            		</td>
            	</tr>
            	<tr>
            		<td>할인 금액</td>
            		<td class="td">
            			<ul class="dis_price">
            				<li><input type="radio" name="pirce_chk discount_price" id="dis_chk">선택</li>
            				<li>
            					<select id="select">
            						<option>5%</option>
            						<option>10%</option>
            						<option>15%</option>
            						<option>20%</option>
            					</select>
            				</li>
            				<li><input type="radio" name="pirce_chk discount_price" id="dis_chk2">직접입력</li>
            				<li><input type="text" id="input"></li>
            			</ul>
            		</td>
            	</tr>
            </table>
            
            <input type="submit" class="submit" value="확인">
            <input type="reset" class="exit" value="닫기" class="exit">
            
      
        </div>
    </div>
    </form>
  <%@ include file="../../main/footer.jsp" %>
  <script>
  						$(".selectDelete_btn").click(function(){
  							var confirm_val = confirm("정말 삭제 하시겠습니까?");
  							
  							if(confirm_val){
  								var checkArr = new Array();
  								
  								$("input[class='onecheck]':checked).each(function(){
  									checkArr.push($(this).attr("data-couponNum"));
  								});
  								
  								$.ajax({
  									url: "/admin/deleteCoupon",
  									type:"post",
  									data: {onecheck : checkArr},
  									success: function(){
  										location.href = "/admin/admin_coupon";
  									}
  								});
  								
  							}
  						});
  						
  					</script>
    <script>
  
  /*팝업 */
  $(document).ready(function(){
      $(".enrollbtn").click(function(){
          $("#popup").fadeIn();
      });
      $(".exit").click(function(){
          $("#popup").fadeOut();
      });
});
  

  /*전체 선택*/
  $(".selectAll").on("click", function(){

		/* 체크박스 체크/해제 */
		if($(".selectAll").prop("checked")){
			$(".onecheck").prop("checked", true);
		} else{
			$(".onecheck").prop("checked", false);
		}
		
	});
  
  $(".issue_select_all").on("click", function(){

		/* 체크박스 체크/해제 */
		if($(".issue_select_all").prop("checked")){
			$(".issue_select").prop("checked", true);
		} else{
			$(".issue_select").prop("checked", false);
		}
		
	});
  
  /* 클릭 한거에 따라서 disabled 효과 주기*/
  $("#dis_chk").on("click", function(){

		
		if($("#dis_chk").prop("checked")){
			$("#input").attr("disabled", true);
			$("#select").removeAttr("disabled", false);
		} else{
			console.log("아몰라 힘들어")
		}
		
	});
  
  $("#dis_chk2").on("click", function(){

		
		if($("#dis_chk2").prop("checked")){
			$("#select").attr("disabled", true);
			$("#input").removeAttr("disabled", false);
		} else{
			console.log("아몰라")
		}
		
	});
  /*
  
  */
  
  
  /*
  dis_chk.addEventListener("click", function(){
	  
	  var dis_chk = document.getElementById("dis_chk");
	  var dis_chk2 = document.getElementById("dis_chk2");
	  var select = document.getElementById("select");
	  var input  = document.getElementById("input");
	  
	  
	  if(dis_chk.checked==true){
		  select.removeAttribute("disabled");
		  input.Attr("disabled");
	  }
  });
  */
  /*$(".dis_chk").on("click", function(){

		
		if($(".dis_chk").prop("checked")){
			$(".select").removeAttr("disabled");
			$(".input").Attr("disabled");
		} 
		
	});
  
  $(".dis_chk2").on("click", function(){

		
		if($(".dis_chk2").prop("checked")){
			$(".input").removeAttr("disabled");
			$(".select").Attr("disabled");
		} 
		
	});
  */
  
  
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