<!-- 김찬영 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<style>
.form_container{padding:20px; border:1px solid #e3e3e3;}
.input_width{width:90%;}
.form_div{margin-bottom:20px; display:flex;}
.form_label{margin-right:10px;}
</style>
</head>
<body>
	<%@ include file="../../main/admin_header.jsp" %>
	<div class="top_container">
		<form>
			<input type="text">제목
			<textarea>내용</textarea>
		</form>
	</div>
	<div class="container">
		<form:form action="admin_board_write_pro" class="form_container" method="post" modelAttribute="writeContentBean" enctype="multipart/form-data">
		
			<div class="form_div">
				<form:label path="board_title" class="form_label">제목</form:label>
				<form:input path="board_title" class="input_width"></form:input>
				<form:errors path="board_title"/>
			</div>
			<div class="form_div">
				<form:label path="board_content" class="form_label">내용</form:label>
				<form:textarea path="board_content" class="input_width"  rows="10" style="resize:none"/>
				<form:errors path="board_content"/>
			</div>
			<div class="form_div">
				<form:label path="upload_file" class="form_label">첨부 파일</form:label>
				<form:input type="file" path="upload_file" accept="image/*"/><!-- nedd accept  -->
			</div>
			<div>
				<form:button>작성하기</form:button>
			</div>
	</form:form>
	</div>
	
	  <%@ include file="../../main/footer.jsp" %>
</body>
</html>