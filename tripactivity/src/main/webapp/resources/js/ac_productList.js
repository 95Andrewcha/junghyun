$(function () {
            $('.yj_demo').daterangepicker({
                "locale": {
                    "format": "YYYY년M월DD일",
                    "separator": " - ",
                    "applyLabel": "적용",
                    "cancelLabel": "취소",
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    "firstDay": 0
                },
                "startDate": moment().startOf("day"),
                "endDate": moment().startOf("day").add(1,"day"),
                "drops": "down"
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });
        });
        
$(document).ready(function(){
	 $(".yj_product_search_pro").click(function() {
    var idx = $(this).index();
    $(".yj_product_search_pro").removeClass("on");
    $(".yj_product_search_pro").eq(idx).addClass("on");
    $(".yj_onAndOff").hide();
    $(".yj_onAndOff").eq(idx).show();
  });
  
  $(".yj_product_kinds").click(function() {
    var idx = $(this).index();
    $(".yj_product_kinds").removeClass("kind");
    $(".yj_product_kinds").eq(idx).addClass("kind");

  });
});