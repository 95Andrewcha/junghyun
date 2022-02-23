	var swiper = new Swiper(".mySwiper", {
            loop: true,
            slidesPerView: 4,
            spaceBetween: 10,
            freeMode: true,
            watchSlidesProgress: true,
          });
          var swiper2 = new Swiper(".mySwiper2", {
            loop: true,
            spaceBetween: 10,
            navigation: {
              nextEl: ".swiper-button-next",
              prevEl: ".swiper-button-prev",
            },
            thumbs: {
              swiper: swiper,
            },
          });

    // variables
    var accordionBtn = document.querySelectorAll('.accordionTitle');
    var allTexts = document.querySelectorAll('.text');
    var accIcon = document.querySelectorAll('.accIcon');

    // event listener
    accordionBtn.forEach(function (el) {
    el.addEventListener('click', toggleAccordion)
    });
    
    let moveForm = $('#moveForm');
    
    $(".pageInfo").on("click", function(e){
		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.submit();
			
	});	

    // function
    function toggleAccordion(el) {
        var targetText = el.currentTarget.nextElementSibling.classList;
        var targetAccIcon = el.currentTarget.children[0];
        var target = el.currentTarget;
   
        if (targetText.contains('show')) {
            targetText.remove('show');
            targetAccIcon.classList.remove('anime');
            target.classList.remove('accordionTitleActive');
        } 
        else {
            accordionBtn.forEach(function (el) {
                el.classList.remove('accordionTitleActive');
         
            allTexts.forEach(function (el) {
                el.classList.remove('show');
         })
         
         accIcon.forEach(function (el) {
            el.classList.remove('anime');
         }) 
         
        })
      
         targetText.add('show');
         target.classList.add('accordionTitleActive');
         targetAccIcon.classList.add('anime');
        }  
    }

$(document).ready(function() {
  $(".yj_tab button").click(function() {
    var idx = $(this).index();
    $(".yj_tab button").removeClass("on");
    $(".yj_tab button").eq(idx).addClass("on");
    $(".yj_tabMenu").hide();
    $(".yj_tabMenu").eq(idx).show();
  });
 
    		 //상품 목록에 이미지 삽입
        	$('.yj_detailMain').each(function(i,obj){
        		
        		const bobj = $(obj);
        		
        		if(bobj.data("ac_productnum")){
        			const uploadPath = bobj.data("path");
        			const uuid = bobj.data("uuid");
        			const fileName = bobj.data("filename");
        			const fileCallPath = encodeURIComponent(uploadPath + "/" + uuid + "_" + fileName);
        			
        			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
        		}
        	});
        	
        	$('.yj_detailThumbs').each(function(i,obj){
        		
        		const bobj = $(obj);
        		
        		if(bobj.data("ac_productnum")){
        			const uploadPath = bobj.data("path");
        			const uuid = bobj.data("uuid");
        			const fileName = bobj.data("filename");
        			const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
        			
        			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
        		} else {
        			$(this).find("img").attr('src', '/resources/img/notImage.png');
        		} 
        	});
        	
			$('.yj_pic_view').each(function(i,obj){
        		
        		const bobj = $(obj);
        		
        		if(bobj.data("ac_roomnum")){
        			const uploadPath = bobj.data("path");
        			const uuid = bobj.data("uuid");
        			const fileName = bobj.data("filename");
        			const fileCallPath = encodeURIComponent(uploadPath + "/s_" + uuid + "_" + fileName);
        			
        			$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
        		} else {
        			$(this).find("img").attr('src', '/resources/img/notImage.png');
        		} 
        	});
 
});

$(function () {
            $('#yj_demo').daterangepicker({
                "locale": {
                    "format": "M월 D일",
                    "separator": " ~ ",
                    "applyLabel": "확인",
                    "cancelLabel": "취소",
                    "fromLabel": "From",
                    "toLabel": "To",
                    "customRangeLabel": "Custom",
                    "weekLabel": "W",
                    "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                    "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                    "firstDay": 1
                },
                "startDate": moment().startOf("day"),
                "endDate": moment().startOf("day").add(1,"day"),
                "drops": "down"
            }, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
                $('#yj_demo').val(start.format('M월 D일')+'-'+end.format('M월 D일'));
                
            });
        });