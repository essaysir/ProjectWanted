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
	    height:430px;
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
	
	div.container-custom{
		width : 700px ;
		margin : auto ; 
	}

	span.bold-span{
	    color: #333;
    	width: 49px;
    	text-overflow: ellipsis;
    	white-space: nowrap;
    	overflow: hidden;
    	width: auto;
    	line-height: 1.4;
		font-size :14px; 
		font-weight: 600 ;
	
	}
	span.green-span{
		border : 1px solid rgb(0, 174, 173)  !important; 
		font-size:  10px ;
		color: rgb(0, 174, 173) ;  
		padding : 4px ; 
		
	
	
	}
	span.gray-span{
	    padding: 0 10px;
	    position: relative;
	    white-space: nowrap;
	    margin-left: 10px;
	    color: #999;
	}
		@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
		
		body, talbe, th, td, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6,
		   pre, form, fieldset, textarea, blockquote, span, * {
		   font-family: 'Noto Sans KR', sans-serif;
		}
	
		button.tag_button{
		    margin-right: 6px;
		    margin-bottom: 10px;
		    padding: 9px 14px;
		    font-size: 12px;
		    font-weight: 500;
		    line-height: 1;
		    color: #333;
		    background-color: #f3f5f8;
		    border-radius: 25px;
			border: 1px solid #f3f5f8 ; 		
		
		}
		button.skill_button{
		    background-color: #e4f4ec;
		    border-radius: 20px;
		    padding: 9px 14px;
		    font-size: 12px;
		    line-height: 14.4px;
		    font-weight: 600;
		    border : none; 
		}
		h6.sub_title{
			margin: 20px 0 0;
	    	font-weight: 600;
			color: #333;
	  		font-size: 16px;
	    	line-height: 1.75;
		}
		span.header-span{
			display: inline-block; 
			width: 70px;
			color: #999;
		    font-size: 15px;
		    font-weight: 600;
		}
		span.body-span{
			font-size: 15px;
			display: inline-block;
		    font-weight: 600;
		}
		section.comp_section{
		    margin: 80px 0 0;
		    display: flex;
		    flex-direction: row;
		    align-items: center;
   			background: #fff;
   			border-radius: 3px;
		    border: 1px solid #e1e2e3;
		    padding: 20px;
   			 
		}
		div.div-logo{
		background-position: 50%;
	    background-size: contain;
	    width: 50px;
	    height: 50px;
		margin-right :15px ;
		}
		button.follow-button{
		    padding: 0 20px;
		    min-width: 64px;
		    height: 40px;
		    font-size: 15px;
		    font-weight: 700;
		    border : 1px solid rgb(51, 102, 255); 
		    border-radius:  50px;
		    color:rgb(51, 102, 255);
		    background-color: #fff ; 
		}
		section.warning_section{
			    margin-top: 10px;
			    border-radius: 5px;
			    background-color: #f3f5f8;		
		}
		h5.warning_h5{
			margin: 0 20px;
		    font-size: 12px;
		    font-weight: 700;
		    line-height: 22px;
		    color: #333;
		
		}			 	
		button.save-temporary{
		color: #36f;
	    background-color: #fff;
	    border: 1px solid #36f;
		  	
		}
		button.btn-blue{
 		height: 50px;
	    font-size: 16px;
	    font-weight: 700;
	    width: 173px ; 
	    margin-right: 9px; 
	    padding: 0 27px;
	    border-radius: 25px;
	    margin-top : 7px; 
		}
		button.save{
		color: #fff;
	    background-color: #36f;
	    border: none;
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=db58f833f2809ccc7bd15095fff1df92&libraries=services"></script> 


 <script type="text/javascript">
 		$(document).ready(function(){
 		// 지도를 담을 영역의 DOM 레퍼런스
		     var mapContainer = document.getElementById('map');
		     
		     // 지도를 생성할때 필요한 기본 옵션
		     var options = {
		           center: new kakao.maps.LatLng(37.556513150417395, 126.91951995383943), // 지도의 중심좌표. 반드시 존재해야함.
		           <%--
		           우리동네:37.54132509455122	126.86307478730826
		           학원:37.556513150417395	126.91951995383943
		               center 에 할당할 값은 kakao.maps.LatLng 클래스를 사용하여 생성한다.
		               kakao.maps.LatLng 클래스의 2개 인자값은 첫번째 파라미터는 위도(latitude)이고, 두번째 파라미터는 경도(longitude)이다.
		           --%>
		           level: 7  // 지도의 레벨(확대, 축소 정도). 숫자가 클수록 축소된다. 4가 적당함.
		     
		     };
		     
		   // 지도 생성 및 생성된 지도객체 리턴
		   var mapobj = new kakao.maps.Map(mapContainer, options);
		     
		   // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성함.    
		   var mapTypeControl = new kakao.maps.MapTypeControl();
		 
		   // 지도 타입 컨트롤을 지도에 표시함.
		   // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미함.   
		   mapobj.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		   
		   // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성함.   
		   var zoomControl = new kakao.maps.ZoomControl();

		   // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 지도에 표시함.
		   // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 RIGHT는 오른쪽을 의미함.    
		   mapobj.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


		   if (navigator.geolocation) {
		      // HTML5의 geolocation으로 사용할 수 있는지 확인한다 
		         
		      // GeoLocation을 이용해서 웹페이지에 접속한 사용자의 현재 위치를 확인하여 그 위치(위도,경도)를 지도의 중앙에 오도록 한다. 
		      navigator.geolocation.getCurrentPosition(function(position) {
		         var latitude = position.coords.latitude;   // 현위치의 위도
		         var longitude = position.coords.longitude; // 현위치의 경도
		      //   console.log("현위치의 위도: "+latitude+", 현위치의 경도: "+longitude);
		         
		         // 마커가 표시될 위치를 geolocation으로 얻어온 현위치의 위.경도 좌표로 한다   
		         var locPosition = new kakao.maps.LatLng(latitude, longitude);

		         // 마커이미지를 기본이미지를 사용하지 않고 다른 이미지로 사용할 경우의 이미지 주소 
		           var imageSrc = 'http://localhost:9090/MyMVC/images/pointerGreen.png'; 

		           // 마커이미지의 크기 
		          var imageSize = new kakao.maps.Size(34, 39);
		           
		          // 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정한다. 
		          var imageOption = {offset: new kakao.maps.Point(15, 39)};

		          // 마커의 이미지정보를 가지고 있는 마커이미지를 생성한다. 
		          var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

		          // == 마커 생성하기 == //
		         var marker = new kakao.maps.Marker({ 
		            map: mapobj, 
		              position: locPosition, // locPosition 좌표에 마커를 생성 
		              image: markerImage     // 마커이미지 설정 ==> 해당 줄 삭제시 => 기본 마커가 나오게 된다.
		         }); 
		          
		         marker.setMap(mapobj); // 지도에 마커를 표시한다
		         
		         
		         // === 인포윈도우(텍스트를 올릴 수 있는 말풍선 모양의 이미지) 생성하기 === //
		         
		         // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능함.
		         var iwContent = "<div style='padding:5px; font-size:9pt;'>여기에 계신가요?<br/><a href='https://map.kakao.com/link/map/현위치(약간틀림),"+latitude+","+longitude+"' style='color:blue;' target='_blank'>큰지도</a> <a href='https://map.kakao.com/link/to/현위치(약간틀림),"+latitude+","+longitude+"' style='color:blue' target='_blank'>길찾기</a></div>";

		         // 인포윈도우 표시 위치
		          var iwPosition = locPosition;
		         
		          // removeable 속성을 true 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됨
		          var iwRemoveable = true; 

		          // == 인포윈도우를 생성하기 == 
		         var infowindow = new kakao.maps.InfoWindow({
		             position : iwPosition, 
		             content : iwContent,
		             removable : iwRemoveable
		         });

		         // == 마커 위에 인포윈도우를 표시하기 == //
		         infowindow.open(mapobj, marker);

		         // == 지도의 센터위치를 locPosition로 변경한다.(사이트에 접속한 클라이언트 컴퓨터의 현재의 위.경도로 변경한다.)
		         mapobj.setCenter(locPosition);  
		         // 클릭한 위치의 위도는 37.54132509455122 이고, 경도는 126.86307478730826 입니다
		         
		         
		      });
		   }   
		   else {
		      // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정한다.
		      var locPosition = new kakao.maps.LatLng(37.556513150417395, 126.91951995383943);     
		        
		      // 위의 
		      // 마커이미지를 기본이미지를 사용하지 않고 다른 이미지로 사용할 경우의 이미지 주소 
		      // 부터
		      // 마커 위에 인포윈도우를 표시하기 
		      // 까지 동일함.
		      
		     // 지도의 센터위치를 위에서 정적으로 입력한 위.경도로 변경한다.
		       mapobj.setCenter(locPosition);
		      
		   }// end of if~else------------------------------------------
		   
		   
		   // ================== 지도에 클릭 이벤트를 등록하기 시작======================= //
		   // 지도를 클릭하면 클릭한 위치에 마커를 표시하면서 위,경도를 보여주도록 한다.
		   
		   // == 마커 생성하기 == //
		   // 1. 마커이미지 변경
		   var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png';       
		           
		   // 2. 마커이미지의 크기 
		    var imageSize = new kakao.maps.Size(34, 39);   
		            
		    // 3. 마커이미지의 옵션. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정한다. 
		    var imageOption = {offset: new kakao.maps.Point(15, 39)};   
		      
		    // 4. 이미지정보를 가지고 있는 마커이미지를 생성한다. 
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		          
		    var movingMarker = new kakao.maps.Marker({ 
		      map: mapobj, 
		        image: markerImage  // 마커이미지 설정
		   });
		    
		    // === 인포윈도우(텍스트를 올릴 수 있는 말풍선 모양의 이미지) 생성하기 === //
		   var movingInfowindow = new kakao.maps.InfoWindow({
		       removable : false
		     //removable : true   // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됨
		   });
		   
		    
		   kakao.maps.event.addListener(mapobj, 'click', function(mouseEvent) {         
		          
		       // 클릭한 위도, 경도 정보를 가져옵니다 
		       var latlng = mouseEvent.latLng;
		       
		       // 마커 위치를 클릭한 위치로 옮긴다.
		       movingMarker.setPosition(latlng);
		       
		       // 인포윈도우의 내용물 변경하기 
		       movingInfowindow.setContent("<div style='padding:5px; font-size:9pt;'>여기가 어디에요?<br/><a href='https://map.kakao.com/link/map/여기,"+latlng.getLat()+","+latlng.getLng()+"' style='color:blue;' target='_blank'>큰지도</a> <a href='https://map.kakao.com/link/to/여기,"+latlng.getLat()+","+latlng.getLng()+"' style='color:blue' target='_blank'>길찾기</a></div>");  
		       
		       // == 마커 위에 인포윈도우를 표시하기 == //
		       movingInfowindow.open(mapobj, movingMarker);
		       
		       var htmlMessage = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, '; 
		           htmlMessage += '경도는 ' + latlng.getLng() + ' 입니다';
		          
		       var resultDiv = document.getElementById("latlngResult"); 
		       resultDiv.innerHTML = htmlMessage;
		   });
		   // ================== 지도에 클릭 이벤트를 등록하기 끝======================= //
 			
 		}); // END OF $(DOCUMENT).READY(FUNCTION()
			
 </script>
 

 
				<!--  왼쪽 BODY  시작  -->
			<div class="main_top_carousel container" style="margin-top:20px; ">
			    <div class="my-1">
			        <div class="owl-carousel owl-theme">
			            <div class="item" style="text-align: left;">
			                <img style="height: 100%;" src="/images/main_image/계약서.jpg">
			            </div>
			            <div class="item" style="text-align: left;">
			                <img style="height: 100%;" src="/images/main_image/월급복권.jpg">
			            </div>
			            <div class="item" style="text-align: left;">
			                <img style="height: 100%;" src="/images/main_image/휴대폰결제.jpg">
			            </div>
			        </div>
			    </div>
			</div>


		
		<div class="container-custom">
				<h2 class="title" style="margin-bottom:10px;">${pvo.subject}</h2>
				
				<span class="bold-span"><a>올이브이</a></span>
				<span class="green-span border">응답률 매우 높음</span>
				<span class="gray-span border-left">서울.강남</span>
				<br>
				<button class="tag_button" style="margin-top:20px;">#유연근무</button>
				<button class="tag_button">#스타트업</button>
				<button class="tag_button">#교육비</button>
				<button class="tag_button">#IT, 컨텐츠</button>
				
				<h6 class="sub_title">회사소개</h6>
				<p></p>
				<h6 class="sub_title">주요 업무</h6>
				<p>${pvo.mainduty }</p>
				<h6 class="sub_title">자격요건</h6>
				<p>${pvo.quality }</p>
				<h6 class="sub_title">기술스택.툴</h6>
				<button class="skill_button" style="margin-top:20px;">React</button>
				<button class="skill_button">Node.js</button>
				<button class="skill_button">PHP</button>
				<button class="skill_button">React Native</button>
				
				<hr style="margin:30px 0px;"/>
				
				<div style="marign-bottom: 15px;">
				<span class="header-span">마감일</span> <span class="body-span">${pvo.deadline}</span>
				</div>
				<br/>
				<div style="margin-bottom:15px;">
				<span class="header-span">근무지역</span> <span class="body-span">서울 금천로 가산디지털2로 98</span>
				</div>
				
				 <div id="map" style="width:100%; height:277px;"></div>
				 <div id="latlngResult"></div>
				 
				 <section class="comp_section">
				 	<div class="div-logo" style="background-image: url(/images/profile_default.png)">
				 	</div>
					<div style="margin-right: 294px;">
						<h5>이지스엔터프라이즈</h5>
						<h6>IT, 컨텐츠</h6>
					</div>
					
					<button class="follow-button"><span>팔로우</span></button>
				 </section>	
				 
				 <section class="warning_section" style="margin-bottom: 80px; ">
				 <div style="padding: 18px 30px; display: flex; align-items: center;">
				 		<svg width="24" height="24" viewBox="0 0 24 24"><g fill="currentColor" fill-rule="evenodd"><path fill-rule="nonzero" d="M15.266 20.658A9.249 9.249 0 0112 21.25a9.25 9.25 0 010-18.5 9.21 9.21 0 016.54 2.71A9.217 9.217 0 0121.25 12a9.213 9.213 0 01-2.71 6.54.75.75 0 101.061 1.062A10.713 10.713 0 0022.75 12c0-2.89-1.146-5.599-3.149-7.601A10.717 10.717 0 0012 1.25C6.063 1.25 1.25 6.063 1.25 12S6.063 22.75 12 22.75c1.31 0 2.591-.235 3.794-.688a.75.75 0 10-.528-1.404z"></path><path d="M13 16a1 1 0 11-2 0 1 1 0 012 0"></path><path fill-rule="nonzero" d="M11.25 7v5a.75.75 0 101.5 0V7a.75.75 0 10-1.5 0z"></path></g></svg>
				 		<h5 class="warning_h5">본 채용정보는 원티드랩의 동의없이 무단전재, 재배포, 재가공할 수 <br/>
				 				  없으며, 구직활동 이외의 용도로 사용할 수 없습니다.</h5>
				 </div>
				 </section>			 
		
		
		
		
		
		</div>			

	<div class="border fixed-top" style="background-color: #fff;  width: 330px; height: 340px; top:70px ; left: 1330px;">
			
			<div class="" style="display:flex; margin: 15px;   ">	
				
				<button type="button" class="btn-blue save-temporary">북마크하기</button>
				<button type="button" id="btn_resumeOk" class="btn-blue save"  >지원 하기</button>
			</div>
	</div>








<script type="text/javascript">
				$('.owl-carousel').owlCarousel({
				    loop:true,
				    margin:10,
				    nav:true,
				    stagePadding: 0,
				    navText:['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
				    responsive:{
				        0:{
				            items:1
				        }
				      
				    },
				    autoplay:true, // 오토 플레이 켜기
				    autoplayTimeout:3000, // 오토 플레이 주기
				    autoplayHoverPause:true // 마우스 올리면 멈추게하기
				    
				    
				});
				
</script>