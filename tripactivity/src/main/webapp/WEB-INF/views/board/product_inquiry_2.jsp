<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">
<style>
table {
	width: 100%;
}

textarea {
	width: 100%;
}

#outter {
	display: block;
	width: 30%;
	margin: auto;
}

.write {
	color: #ffffff;
	background: #030303;
	font-size: 1.2em;
	padding: 0.3em 0.5em;
	margin-right: 0.1em;
	float: right;
}
</style>
<%@ include file="../main/header.jsp"%>
</head>
<body>
	<section>
		<form>
			<div class="container">

				<div class="section-title" data-aos="zoom-out">
					<h2>contact</h2>
					<p>1:1 문의하기</p>
				</div>
				<div class="outter">
					<table class="table table-hover">
						<tr>
							<td>문의 유형 : ${pageInfo.board_kind1}</td>
						</tr>
						<tr>
							<td>제목 : ${pageInfo.board_title}</td>
						</tr>
						<tr>
							<td>작성자 : ${pageInfo.n_Id}</td>
						</tr>
						<tr>
							<td>작성일 : <fmt:formatDate value="${pageInfo.board_date}"
									pattern="yyyy.MM.dd" /></td>
						</tr>
						<tr>
							<td><textarea class="form-control col-sm-5" rows="5"
									style="height: 300px; margin: 10px; display: inline-block;">${pageInfo.board_content}</textarea></td>
						</tr>

					</table>
					<div class="form_section">
						<div class="form_section_title">
							<label>문의	 이미지</label>
						</div>
						<div class="form_section_content">

							<div id="uploadResult"></div>
						</div>
					</div>
					<table>
						<tr>
							<td>작성자 : 트립액티비티 관리자</td>
						</tr>
						<tr>
							<td>작성일 : 2021-12-15</td>
						</tr>
						<tr>
							<td><textarea class="form-control col-sm-5" rows="5"
									style="height: 300px; margin: 10px; display: inline-block">테스트 글입니다-----------------------------------</textarea></td>
						</tr>
					</table>
					<div class="col-12">
						<a class='write' href='/board/product_inquiry'>글 목록</a> <a class='write'
							href='/board/inquiry_modify?board_seq=<c:out value="${pageInfo.board_seq}"/>'>수정하기</a>
							<input type="button" name="modify" value="작성하기"
                  style="padding-left: 10px; background-color: skyblue; color: white; border-radius:2px;" onclick="Check_Join()">
						<a class='write' id="delete_btn">삭제</a>
					</div>
				</div>
			</div>
		</form>
		<form id="infoForm" action="/board/modify" method="get">
			<input type="hidden" id="board_seq" name="board_seq"
				value='<c:out value="${pageInfo.board_seq}"/>'>
		</form>
	</section>
	

	<%@ include file="../main/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
		let form = $("#infoForm");

		$("#list_btn").on("click", function(e) {
			form.find("#board_seq").remove();
			form.attr("action", "/board/product_inquiry");
			form.submit();
		});

		$("#modify_btn").on("click", function(e) {
			form.attr("action", "/board/modify");
			form.submit();
		});
		/* 삭제 버튼 */
		$("#delete_btn").on("click", function(e) {
			form.attr("action", "/board/deleteinquiry");
			form.attr("method", "post");
			form.submit();
		});
		/* 이미지 정보 호출 */
/* 		let board_seq = '<c:out value="${pageInfo.board_seq}"/>';
		let uploadResult = $("#uploadResult");
		
		$.getJSON("/admin/getAttachList", {board_seq : board_seq}, function(arr){	
			
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
			str += "</div>";		
			
			uploadResult.html(str);						
			
		});	 */
		$(document).ready(function(){
			
			//숙박 업체 이미지 정보 호출
			let board_seq = '${pageInfo.board_seq}';
			let uploadResult = $('#uploadResult');
			
			
			
			$.getJSON("/admin/getAttachList",{board_seq : board_seq}, function(arr){
				
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
					str += "<img src='/admin/display?fileName=" + fileCallPath +"'>";
					str += "</div>";
				
					uploadResult.append(str);
					
				}
					
			});
		});
		
	
	</script>
</body>
</html>