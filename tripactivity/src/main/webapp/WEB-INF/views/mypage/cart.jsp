<!-- 김예은 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/common/common_cart.css">
    <title>Tripactivity</title>
    
    <%@ include file="../main/header.jsp" %>
</head>
<body>
	<div>
		<%@ include file="../mypage/left_aside.jsp" %>
	</div>
	<main>
		<div class="section-title" data-aos="zoom-out">
	          <h2>cart</h2>
	          <p>장바구니</p>
	    </div> 
		<div class="kye_cart">
	        <div class="kye_left">
	            <div class="kye_all_check">
	                <input type="checkbox" id="check_all"><label for="check_all">전체 선택</label>
	            </div>
	
	            <div class="cart_product">	      
	                <div class="product">
	                	<input type="checkbox" id="check_nomal">	                    
	                    <img src="/resources/img/yousung_standard.jpg">
	                    <div id="product_info">
	                        <h2><b>대전 유성 호텔</b></h2>
	                        <p>스탠다드</p>
	                        <table>
	                            <tr>
	                                <th>숙박</th>
	                                <td>50,000원</td>
	                            </tr>
	                            <tr>
	                                <th>예약자</th>
	                                <td>김예은</td>
	                            </tr>
	                            <tr>
	                                <th>번호</th>
	                                <td>010-1234-5678</td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="product_button">
		                    <button type="button">옵션변경</button>
		                    <button type="button">선택구매</button>
	                    </div>
	                </div>
	
	                <div class="product">
	                    <input type="checkbox" id="check_nomal">
	                    <img src="/resources/img/yousung_standard.jpg">
	                    <div id="product_info">
	                        <h2><b>대전 유성 호텔</b></h2>
	                        <p>스탠다드</p>
	                        <table>
	                            <tr>
	                                <th>숙박</th>
	                                <td>50,000원</td>
	                            </tr>
	                            <tr>
	                                <th>예약자</th>
	                                <td>김예은</td>
	                            </tr>
	                            <tr>
	                                <th>번호</th>
	                                <td>010-1234-5678</td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="product_button">
		                    <button type="button">옵션변경</button>
		                    <button type="button">선택구매</button>
	                    </div>
	                </div>
	                <div class="product">
	                    <input type="checkbox" id="check_nomal">
	                    <img src="/resources/img/yousung_standard.jpg">
	                    <div id="product_info">
	                        <h2><b>대전 유성 호텔</b></h2>
	                        <p>스탠다드</p>
	                        <table>
	                            <tr>
	                                <th>숙박</th>
	                                <td>50,000원</td>
	                            </tr>
	                            <tr>
	                                <th>예약자</th>
	                                <td>김예은</td>
	                            </tr>
	                            <tr>
	                                <th>번호</th>
	                                <td>010-1234-5678</td>
	                            </tr>
	                        </table>
	                    </div>
	                    <div class="product_button">
		                    <button type="button">옵션변경</button>
		                    <button type="button">선택구매</button>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="kye_right">
	            <div class="right_info">
		            <p><strong>총 결제 금액</strong> vat포함</p>
		            <strong>150,000원</strong><br>
		            <button type="button">결제하기</button>
	        	</div>
	        </div>
	    </div>	    
    </main>
	<div id="nav">
	<%@ include file="../main/footer.jsp" %>
	</div>  
    <script>
        const accordion = document.getElementsByClassName('cjh_contentBx');

        for(i=0; i<accordion.length; i++){
            accordion[i].addEventListener('click', function(){
                this.classList.toggle('active');
            })
        }

    </script>
</body>
</html>