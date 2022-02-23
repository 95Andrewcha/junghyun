<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 문의 관리</title>

<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="/resources/css/common/admin_common.css">
<style>

        .for_bg{background:#e3e3e3; padding:10px;}
        .for_padding{padding:10px;}
        .for_input_padding{padding:5px; width:50%; margin-left:12px;}
        .for_input_padding_title{width:80%; padding:5px; margin-left:12px;}
        .for_outline{outline:1px solid #e3e3e3;}
        .td_align_padding{text-align:center; padding:10px;}
        .container1, .container2, .title{padding:20px;}
        .table{width:100%; border:1px solid #e3e3e3 !important;}
        .table2{width:100%;}
  
    /*until here*/
    </style>
</head>

<body>
<%@ include file="../main/admin_header.jsp" %>
 <div class="cjh_admin_container">
       <div class="left_sider">
        	<%@ include file="../main/admin_accordion.jsp" %>
       </div><!--left_side 네비게이션바-->
  	 <div class="cjh_admin_container2">
  	 <div class="container">
        <div class="title">
            <h2>문의 관리</h2>
        </div>
        <div class="container1">
            <table class="table">
                <tr>
                    <th class="for_bg for_padding" style="width:20%;">회원아이디</th>
                    <td style="width:40%;"><input type="text" autocomplete="off" class="for_input_padding" ></td>
                    <th class="for_bg for_padding" style="width:20%;">답변 상태</th>
                    <td style="width:20%;">
                        <select style="padding: 5px;
                        
                        margin-left: 12px;">
                            <option>모든 상태</option>
                            <option>답변 대기중</option>
                            <option> 답변완료</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="for_bg for_padding">제목</th>
                    <td><input type="text" class="for_input_padding_title"></td>
                    <td>
                        <input type="button" value="검색" style="width:50%; padding:5px; float:right;">
                    </td>
                </tr>
            </table>
            <div class="contests">
                <p>회원에게 답변 또는 해당글 수정을 할 시 처리 항목의 <a href="#">관리</a>버트는 클릭 하시면 됩니다.</p>
            </div>
        
        </div><!--container1-->
        <div class="container2">
            <table class="table2">
                <tr>
                    <th style="width:10%;" class="for_bg for_outline">번호</th>
                    <th style="width:10%;" class="for_bg for_outline">회원ID</th>
                    <th style="width:40%;" class="for_bg for_outline">문의 제목</th>
                    <th style="width:10%;" class="for_bg for_outline">답변 상태</th>
                    <th style="width:20%;" class="for_bg for_outline">등록일</th>
                    <th style="width:10%;" class="for_bg for_outline">관리</th>
                </tr>
                <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                 <tr style="border-bottom:1px solid black;">
                    <td class="td_align_padding for_outline">{글 번호}</td>
                    <td class="td_align_padding for_outline">{n_id}</td>
                    <td class="td_align_padding for_outline">{board_title}</td>
                    <td class="td_align_padding for_outline">{답변대기}</td>
                    <td class="td_align_padding for_outline">{startDate ~ EndDate}</td>
                    <td class="td_align_padding for_outline"><input type="button" value="관리" > <input style="background:#e3e3e3;" type="button" value="삭제"></td>
                    
                </tr>
                
                
            </table>
        </div><!--container2-->
    </div><!--container-->
  	 </div><!-- cjh_admin_container2 -->
  </div><!-- cjh_admin_container -->
</body>
</html>