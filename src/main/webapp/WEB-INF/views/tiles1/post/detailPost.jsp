<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <style type="text/css">
		h2.title{
		    color: #333;
		    font-size: 22px;
		    font-weight: 600;
		    margin: 0 0 10px;
		}
		

 		
 		
 			.main_top_carousel{
		height: 500px;
		width:100%;
	}
	
	.main_top_carousel > .my-1 {
    max-width:100%;
    height: 500px;
    margin:0 auto;
	}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-stage-outer > .owl-stage > .owl-item > .item {
	    margin:0 auto;
	    height:500px;
	    width:700px;
	}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-stage-outer > .owl-stage > .owl-item > .item > h4 {
	    margin:0;
	}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-prev, .main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-next {
	    position:absolute;
	    top:50%;
	    left:-50px;
	    transform:translateY(-50%);
	    margin:0;
	}
	
	.main_top_carousel > .main_top_carousel > .owl-carousel > .owl-nav > .owl-prev, .main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-next {
	    position:absolute;
	    top:50%;
	    left:-50px;
	    transform:translateY(-50%);
	    margin:0;
	}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-prev, .main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-next {
    position:absolute;
    top:50%;
    left:285px;
    transform:translateY(-50%);
    border-radius:50% !important;
    background-color:rgba(255, 255, 255, 0.5) !important;
    font-size:3rem !important;
    padding:0px 20px 0px 15px !important;
}

.main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-prev:active, .main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-next:active {
    color:#afafaf;
    transform:translateY(-45%);
}

.main_top_carousel > .my-1 > .owl-carousel > .owl-nav > .owl-next {
    left:auto;
    right:285px;
    padding:0px 15px 0px 20px !important;
}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-dots {
	    display:none;
	}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-dots {
	    display:none;
	}
 		
 </style>   
 <script src="
https://cdn.jsdelivr.net/npm/swiper@9.3.2/swiper-bundle.min.js
"></script>
<link href="
https://cdn.jsdelivr.net/npm/swiper@9.3.2/modules/scrollbar/scrollbar.min.css
" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="/OwlCarousel/js/owl.carousel.min.js" type="text/javascript"></script>
<!-- owl carousel -->
<link rel="stylesheet" href="/OwlCarousel/css/owl.carousel.min.css" type="text/css"/>
<link rel="stylesheet" href="/OwlCarousel/css/owl.theme.default.min.css" type="text/css"/>


 <script type="text/javascript">
 		$(document).ready(function(){

 			
 		}); // END OF $(DOCUMENT).READY(FUNCTION()
			
 </script>
 

 
				<!--  왼쪽 BODY  시작  -->
	<div class="main_top_carousel">
		<div class="my-1">
		    <div class="owl-carousel owl-theme">
		        <div class="item">
		        	<img src="/images/main_image/계약서.jpg">
		        </div>
		        <div class="item">
		        	<img src="/images/main_image/월급복권.jpg">
		        </div>
		        <div class="item">
		        	<img src="/images/main_image/휴대폰결제.jpg">
		        </div>
		    </div>
		</div>
	</div>
		
		<div class="container">
				<h2 class="title"> 솔루션 운영 엔지니어 국내</h2>
		</div>			









<script type="text/javascript">
				$('.owl-carousel').owlCarousel({
				    loop:true,
				    margin:10,
				    nav:true,
				    stagePadding: 400,
				    navText:['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
				    responsive:{
				        0:{
				            items:1
				        }
				      
				    },
				    autoplay:true, // 오토 플레이 켜기
				    autoplayTimeout:3000, // 오토 플레이 주기
				    autoplayHoverPause:true // 마우스 올리면 멈추게하기
				    
				    
				})
</script>