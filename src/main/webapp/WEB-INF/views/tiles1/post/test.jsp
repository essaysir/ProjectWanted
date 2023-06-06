<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="/bootstrap-4.6.0-dist/css/bootstrap.min.css" > 

  <!-- Font Awesome 5 Icons -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
  
  <!-- Optional JavaScript -->
  <script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
  <script type="text/javascript" src="/bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js" ></script> 
  <script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script> 
  
  <%--  ===== 스피너 및 datepicker 를 사용하기 위해  jquery-ui 사용하기 ===== --%>
  <link rel="stylesheet" type="text/css" href="/jquery-ui-1.13.1.custom/jquery-ui.css" />
  <script type="text/javascript" src="/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

  <%-- *** ajax로 파일을 업로드할때 가장 널리 사용하는 방법 ==> ajaxForm *** --%>
  <script type="text/javascript" src="/js/jquery.form.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.slider {
		  margin: 0 auto;
		  max-width: 1200px;
		}
		
		.swiper-container {
		  padding-bottom: 20px;
		}
		
		.swiper-scrollbar {
		  background: #d6d6d6;
		}
		
		.swiper-container-horizontal > .swiper-scrollbar {
		  border-radius: 2px;
		  height: 5px;
		  width: 200px;
		  bottom: 0;
		  left: 50%;
		  transform: translateX(-50%);
		}
		
		.swiper-wrapper img {
		  width: 100%;
		} 

</style>
<script>
var $swiperSelector = $('.swiper-container');
	$swiperSelector.each(function(index) {
		    var $this = $(this);
		    $this.addClass('swiper-slider-' + index);
		    
		    var dragSize = $this.data('drag-size') ? $this.data('drag-size') : 50;
		    var freeMode = $this.data('free-mode') ? $this.data('free-mode') : false;
		    var loop = $this.data('loop') ? $this.data('loop') : false;
		    var slidesDesktop = $this.data('slides-desktop') ? $this.data('slides-desktop') : 4;
		    var slidesTablet = $this.data('slides-tablet') ? $this.data('slides-tablet') : 3;
		    var slidesMobile = $this.data('slides-mobile') ? $this.data('slides-mobile') : 2.5;
		    var spaceBetween = $this.data('space-between') ? $this.data('space-between'): 20;

		    var swiper = new Swiper('.swiper-slider-' + index, {
		      direction: 'horizontal',
		      loop: loop,
		      freeMode: freeMode,
		      spaceBetween: spaceBetween,
		      breakpoints: {
		        1920: {
		          slidesPerView: slidesDesktop
		        },
		        992: {
		          slidesPerView: slidesTablet
		        },
		        320: {
		           slidesPerView: slidesMobile
		        }
		      },
		      navigation: {
		        nextEl: '.swiper-button-next',
		        prevEl: '.swiper-button-prev'
		      },
		      scrollbar: {
		        el: '.swiper-scrollbar',
		        draggable: true,
		        dragSize: dragSize
		      }
		   });
		});
	</script>


</head>
<body>
 				<div class="slider">
						  <div class="swiper-container">
						    <div class="swiper-wrapper">
						      <div class="swiper-slide">
						        <img src="https://images.pexels.com/photos/4060569/pexels-photo-4060569.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
						      </div>
						      <div class="swiper-slide">
						        <img src="https://images.pexels.com/photos/5601991/pexels-photo-5601991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
						      </div>
						      <div class="swiper-slide">
						        <img src="https://images.pexels.com/photos/6483585/pexels-photo-6483585.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
						      </div>
						      <div class="swiper-slide">
						        <img src="https://images.pexels.com/photos/5232929/pexels-photo-5232929.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
						      </div>
						      <div class="swiper-slide">
						        <img src="https://images.pexels.com/photos/5797913/pexels-photo-5797913.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
						      </div>
						      <div class="swiper-slide">
						        <img src="https://images.pexels.com/photos/6102229/pexels-photo-6102229.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
						      </div>
						    </div>
						
						    <!-- pagination -->
						    <div class="swiper-pagination"></div>
						
						    <!-- scrollbar -->
						    <div class="swiper-scrollbar"></div>
						
						    <!-- buttons -->
						    <div class="swiper-button-prev"></div>
						    <div class="swiper-button-next"></div>
						  </div> 
			</div>
</body>
</html>