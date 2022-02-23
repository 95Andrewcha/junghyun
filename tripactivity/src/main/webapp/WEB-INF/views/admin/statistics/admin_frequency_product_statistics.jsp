<!-- 차정현 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최다 빈도 매출 통계</title>

 <link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/common/admin_header.css">
<link rel="stylesheet" href="/resources/css/common/admin_common.css">
<style>
 
     .canvasjs-chart-credit{display:none;}
     
     .div_container{display:flex; justify-content:space-around;}
     .div1{width:40%;}
     .div2{width:40%;}
    </style>
</head>

<body>
<%@ include file="../../main/admin_header.jsp" %>
 <section class="cjh_admin_container">
       <section class="left_sider">
        	<%@ include file="../../main/admin_accordion.jsp" %>
       </section><!--left_side 네비게이션바-->
  	 <section class="cjh_admin_container2">
  	 <!-- 내용 -->
  	 <section class="div_container">
  	 <section class="div1">
  	  <div id="chartContainer" style="height: 300px; width: 100%;"></div>
  	  </section>
  	  <section class="div2">
  	  <div id="chartContainer2" style="height: 370px; width: 100%;"></div>
  	  </section>
  	  </section><!-- div_container -->
  	 </section><!-- cjh_admin_container2 -->
  </section><!-- cjh_admin_container -->
    <%@ include file="../../main/footer.jsp" %>
   
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
   
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "예약 top 3"
	},
	axisY: {
		title: "예약 건수"
	},
	data: [{        
		type: "column",  
		showInLegend: true, 
		legendMarkerColor: "grey",
		legendText: "예약 건수",
		dataPoints: [      
			{ y: 40, label: "여거애때" },
			{ y: 30,  label: "야놀자" },
			{ y: 15,  label: "호텔스컴바인" },
			
		]
	}]
});

var chart2 = new CanvasJS.Chart("chartContainer2", {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "방문 유입 경로"
	},
	data: [{
		type: "pie",
		startAngle: 25,
		toolTipContent: "<b>{label}</b>: {y}%",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: [
			{ y: 51.08, label: "google" },
			{ y: 27.34, label: "naver" },
			{ y: 10.62, label: "daum" },
			{ y: 5.02, label: "yahoo" },
			{ y: 4.07, label: "Safari" },
			{ y: 1.66, label: "Others" }
		]
	}]
});

chart.render();



chart2.render();

}


</script>
</body>
</html>