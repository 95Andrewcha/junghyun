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
  
  <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
 <style>
  table { width: 100%;}
  textarea { width: 100%;
  }
 	#outter {
		display: block;
		width: 30%;
		margin: auto;
		border: double 10px;
	}
	.write{
color: #ffffff;
background: #030303;
font-size: 1.2em;
padding: 0.3em 0.5em;
margin-right: 0.1em;
float:right;
}
</style>

</head>
<%@ include file="../main/admin_header.jsp" %>
<body>

<section>
<form>
<div class = "container">
	 <div class="section-title" data-aos="zoom-out">
          <h2>contact</h2> 
          <p>공지사항</p>
     </div>
     <div class ="outter">
   
     	<table class = "table table-hover">
     		
     		<tr><td>제목 : ${pageInfo.board_title} </td></tr>
     		<tr><td>작성자 : ${pageInfo.admin_id}</td></tr>
     		<tr><td>작성일 : <fmt:formatDate value="${pageInfo.board_date}" pattern="yyyy.MM.dd"/></td></tr>
     		<tr><td>첨부파일 : <p><img src="#" style="width: 600px;
    height: 703px;
    cursor: pointer;"></p></td></tr>
     		<tr>
     			
				<td><textarea class="form-control col-sm-5" rows="5" style="height: 300px; margin: 10px; display: inline-block;">${pageInfo.board_content}</textarea></td>
			
			</tr>
     	</table>
     	<div class = "col-12">
   		  <a class='write' href='/admin/admin_notice'>글 목록</a>
     	<a class='write' href='/admin/admin_modify?board_seq=<c:out value="${pageInfo.board_seq}"/>'>수정하기</a>
     	<a class='write' id="delete_btn">삭제</a>
     	
     	</div> 
     </div>
</div>
</form>
<form id="infoForm"action="/board/modify" method="get">
	<input type="hidden" id="board_seq" name="board_seq" value='<c:out value="${pageInfo.board_seq}"/>'>
</form>
</section>


 <%@ include file="../main/footer.jsp" %>
 <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
 <script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#board_seq").remove();
		form.attr("action", "/admin/admin_notice");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/admin/admin_modify");
		form.submit();
	});	
	/* 삭제 버튼 */
	$("#delete_btn").on("click", function(e){
		form.attr("action", "/board/delete");
		form.attr("method", "post");
		form.submit();
	});
	let form = $("#infoForm");

	$("#list_btn").on("click", function(e) {
		form.find("#board_seq").remove();
		form.attr("action", "/board/notice");
		form.submit();
	});

	/* 이미지 정보 호출 */
	let board_seq = '<c:out value="${pageInfo.board_seq}"/>';
	let uploadResult = $("#uploadResult");

	$
			.getJSON(
					"/admin/getAttachList",
					{
						board_seq : board_seq
					},
					function(arr) {

						if (arr.length === 0) {
							let str = "";
							str += "<div id='result_card'>";
							str += "<img src='/resources/img/imgx.jpg'>";
							str += "</div>";

							uploadResult.html(str);
							return;
						}

						let str = "";
						let obj = arr[0];

						let fileCallPath = encodeURIComponent(obj.uploadPath
								+ "/s_" + obj.uuid + "_" + obj.fileName);
						str += "<div id='result_card'";
	str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
	str += ">";
						str += "<img src='/admin/display?fileName="
								+ fileCallPath + "'>";
						str += "</div>";

						uploadResult.html(str);

					});
</script>	
</body>
</html>