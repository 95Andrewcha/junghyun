<!-- 장영준 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../main/header.jsp" %>
   <link rel="stylesheet" type="css" href="/resources/css/reset.css">
    <link rel="stylesheet" type="css" href="/resources/bootstrap/css/style.css">
    <style>
        .yj_section1{
            width:1100px;
            margin:0px auto;
            height: 1000px;
        }
        .yj_div1{
            font-size:24px;
            font-weight:bold;
            text-align:center;
            border:1px solid #eee;
            background-color: #eee;
            padding:10px 0;
            margin:20px auto;
        }
        .yj_div2{
            width:100%;
        }
        .yj_table1{
            width:100%;
        }
        #yj_tableId1{
            text-align: center;
            background-color:#eee;
        }
        tr td{
           border:1px solid #1d1d1d;
           vertical-align:middle;
           text-align:center;
           padding:10px;
        }
        #yj_allButton{
            border:1px solid #1d1d1d;
            background-color: #1d1d1d;
            color:#fff;
            padding:7px;
            border-radius:8px;
            cursor:pointer;
            font-weight:bold;
            float:right;
            margin-top:15px;
        }
        #yj_allButton:hover{
            color:#1d1d1d;
            background-color: #fff;
        }
    </style>
</head>
<body>
<%@ include file="../main/c_acoordian.jsp" %>
<section class="yj_section1">
    <div class="yj_div1">
        레저 업체 등록 정보
    </div>
    <div class="yj_div2">
        <table border="1" class="yj_table1">
            <tr id="yj_tableId1">
                <td style="width:13%;">업체명</td>
                <td style="width:11%;">사업자 번호</td>
                <td style="width:10%;">대표자</td>
                <td style="width:15%;">대표자 전화번호</td>
                <td style="width:15%;">업체 전화번호</td>
                <td>주소</td>
            </tr>
            <c:forEach items="${list}" var="list">
               <c:if test="${list.company_Name == cmemberVO.company_Name}">
                     <tr>
                      <td><a href="/product/le_enrollDetail?le_ProductNum=${list.le_ProductNum}">${list.company_Name}</a></td>
                      <td>${list.company_Number}</td>
                        <td>${list.c_Name}</td>
                        <td>${list.le_Phone}</td>
                     <td>${list.le_Call}</td>
                      <td>${list.le_Add}</td> 
                  </tr>
               </c:if>
            </c:forEach>
        </table>
        <button type="button" onclick="location.href='/product/le_Enroll'" id="yj_allButton">등록 하기</button>
    </div>
</section>


<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
   
   let eResult = '<c:out value="${enroll_result}"/>';
   
   checkResult(eResult);
   
   function checkResult(result){
      
      if(result === ''){
         return;
      }
      
      alert("상품'"+ eResult +"'을 등록하였습니다.");
      
   }
   
   //수정 성공 이벤트 
   let modify_result = '${modify_result}';

   if(modify_result == 1){
      alert("수정 완료");
   }
   
   //삭제 성공 이벤트
   let delete_result = '${delete_result}';
   
   if(delete_result == 1){
      alert("삭제 완료");
   }

});
</script>
</body>
<%@ include file="../main/footer.jsp" %>
</html>