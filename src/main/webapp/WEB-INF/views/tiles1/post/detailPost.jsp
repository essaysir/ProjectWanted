<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		h5.warning_h5 , span.warning_h5{
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
		div.wanted-ai{
			margin-top: 10px;
			background-color: #f3f5f8;
    		padding: 8px 12px 7px;
		}
		h2.apply_h2{
		text-align: center;
	    font-size: 16px;
	    font-weight: 600;
	    color: #333;
	    line-height: 22px;
		}
		button#back{
		    font-size: 16px;
		    font-weight: 600;
		    color: #999;
			border: 0;
	  		  background: none;
		    cursor: pointer;
		}
		div#violet{
		    background: #eff1fb;
		    text-align: center;
		    padding: 17px 20px;
		    font-size: 13px;
		    line-height: 1.25;
		    letter-spacing: -.7px;
		}
		div#violet p:first-child {
			    font-weight: 700;
    			margin-bottom: 4px
		}
		div#violet p:last-child {
			    font-weight: 500;
    			margin-bottom: 4px
		}
		h3.apply_title{
		    border-left: 2px solid #258bf7;
		    padding-left: 20px;
		    margin: 0 -20px;
		    font-size: 16px;
		    font-weight: 600;
		    line-height: 22px;
		}
		h4.apply_menu{
		    line-height: 50px;
		    font-size: 16px;
		    font-weight: 600;
		    width: 80px;
  			color: #333;
		    float: left;
		}
		div#apply_resume input[type="text"]{
		    background-color: #fff;
 		   color: #333;
		    width: calc(100% - 80px);
		    height: 50px;
		    padding: 0;
		    border: none;
		    border-bottom: 1px solid #e1e2e3;
		    line-height: 50px;
		    font-size: 16px;
		    font-weight: 600;
		}
		input.apply_checkbox{
			width:24px; 
			height: 24px ; 
			margin : 17px ; 
		
		}
		div.resume_container{
		width: 100%;
	    height: 60px;
	    border: 1px solid #ececec;
	    border-radius: 5px;
	    margin-bottom: 10px;
		}
		p.resume_name{
		    font-weight: 600;
		    text-align: left;
			color: rgb(51, 51, 51) ;
			font-size: 14px; 
			margin-bottom : 0px ;
		}
		span.resume_matchup{
		    height: 22.5px;
		    padding: 1px 5px;
		    border-radius: 2px;
		    word-break: keep-all;
				color: #8958fa;
		    margin-left: 6px;
		    background: #f8f5ff;
		    font-size:  11px ;
		    font-weight: 700;
		}
		p.resume_lang{
		    font-size: 11px;
		    font-weight: 500;
		    line-height: 20px;
		    letter-spacing: normal;
		    text-align: left;
		    color: #333;
		}
		div.selected{
		    border: 1px solid #36f !important;
		}
		button.write_resume{
		    width: 100%;
		    height: 50px;
		    text-align: center;
		    border-radius: 25px;
		    border: 1px solid #e1e2e3;
		    background-color: #fff;
		    font-size: 14px;
		    font-weight: 600;
		    line-height: 50px;
		    letter-spacing: normal;
		    color: #666;
		}
		button.apply_resume{
			width: 100%;
		    height: 50px;
		    background: #36f;
		    color: #fff;
		    font-size: 16px;
		    font-weight: 600;
		    border-radius: 25px;
		    border : none ;
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
 			$("button#btn_apply").on("click", apply) ; // 지원하기 클릭시 
 			$("button#back").on("click" , back );
 			$(document).on("click" , '#real_apply' , applyPost );
 			$(document).on('change', '.apply_checkbox', function() {
 				  if ($(this).is(':checked')) {
 				    // 체크박스가 체크되었을 때 수행할 작업
 				    // console.log('체크박스가 체크되었습니다.');
 				    var parentDiv = $(this).closest('div.resume_container');
					parentDiv.addClass("selected"); // 선택된 DIV 의 CSS 를 변경해주려는 경우
					parentDiv.removeClass("unselected");
					//console.log(parentDiv);
					//console.log(parentDiv.html());
					var resume_code = parentDiv.find("input#resume_code").val();
					$("input#selected_resume_code").val(resume_code);
 				  } 
 				  else {
 				    // 체크박스가 해제되었을 때 수행할 작업
 				    // console.log('체크박스가 해제되었습니다.');
 				   var parentDiv = $(this).closest('div.resume_container');
					parentDiv.addClass("unselected");
					parentDiv.removeClass("selected");
					$("input#selected_resume_code").val(-999);
 				  }
 				});

 			func_geocoder('${cvo.addresss}');
 			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 			// 카카오맵 시작 
 			
 			// 지도를 담을 영역의 DOM 레퍼런스
		     var mapContainer = document.getElementById('map');
		     
		     // 지도를 생성할때 필요한 기본 옵션
		     var options = {
		           center: new kakao.maps.LatLng($("input#lat").val(), $("input#lng").val()), // 지도의 중심좌표. 반드시 존재해야함.
		           <%--
		           우리동네:37.54132509455122	126.86307478730826
		           학원:37.556513150417395	126.91951995383943
		               center 에 할당할 값은 kakao.maps.LatLng 클래스를 사용하여 생성한다.
		               kakao.maps.LatLng 클래스의 2개 인자값은 첫번째 파라미터는 위도(latitude)이고, 두번째 파라미터는 경도(longitude)이다.
		           --%>
		           level: 4  // 지도의 레벨(확대, 축소 정도). 숫자가 클수록 축소된다. 4가 적당함.
		     
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
		           // var imageSrc = 'http://localhost:9090/MyMVC/images/pointerGreen.png'; 
				
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
		
 		
 		
 		function func_geocoder(address) {
 		   // 주소-좌표 변환 객체를 생성합니다
 		   var geocoder = new kakao.maps.services.Geocoder();

 		   geocoder.addressSearch(address, function(result, status) {

 			   if (status === kakao.maps.services.Status.OK) {
 				    // 주소가 정상적으로 검색이 완료됐으면
 			    	$("input#lat").val(result[0].y); // result[0].y ==> 위도
 			    	$("input#lng").val(result[0].x); // result[0].x ==> 경도
 			    } 
 			}); 
 		}// function func_geocoder(address) {
 		function back(){
 			$("div#div_apply_adjust").hide();
 			$("div#apply_resume").html("");
			 
 		} // END OF FUNCTION BACK()
 		
 		function apply(){
 			$.ajax({
 				url: "/wanted/member/apply",
 				type: "get",
 				dataType: "json",
 				async: false,
 				success: function (json) {
					  // alert("하하하");  					
 					   // console.log(json);
 					 if ( json.userid == "anonymousUser"){
 						location.href = "/wanted/login" ;
 					 }
 					 else{
 						var html = '';
						
 						html += '<h3 class="apply_title">지원 정보</h3>';
 						html += '<br/>';
 						html += '<label>';
 						html += '   <h4 class="apply_menu">이름</h4>';
 						html += '<input disabled type="text" name="name" value="' + json.name + '"/>';
 						html += '</label>';
 						html += '<label style="both:clear;">';
 						html += '   <h4 class="apply_menu">이메일</h4>';
 						html += '   <input disabled type="text" name="email" value="'+json.email+'"/>';
 						html += '</label>';
 						html += '<label style="both:clear;">';
 						html += '   <h4 class="apply_menu">휴대폰</h4>';
 						html += '   <input disabled type="text" name="mobile" value="'+json.mobile+'"/>';
 						html += '</label>';
 						html += '<h3 class="apply_title" style="both:clear;">첨부 파일</h3>';
 						html += '<ul style="list-style : none ; padding: 0 ; margin-top: 20px; ">';
 						for (let rvo of json.resumeList){
 							
 						html += '   <li>';
 						html += '      <div class="unselected resume_container" style="display: flex;">';
 						html += '         <input type="checkbox" class="apply_checkbox"/>';
 						html += '         <div style="display: flex; flex-direction: column ; ">';
 						html += '            <p class="resume_name" style="margin-top: 6px; ">'+rvo.subject+'<span class="resume_matchup">매치업</span> </p>';
 						html += '            <p class="resume_lang">'+rvo.complete_date+	' <span class="resume_status">작성완료</span></p>';
 						html += '           <input type="hidden"  id="resume_code" name="resume_code" value="'+rvo.resume_code+'"    />              '
 					 	html += '         </div>';
 						html += '         <a style="margin-left : 85px;  margin-top: 13px; href="/wanted/member/myresume/'+rvo.resume_code+'" ">';
 						html += '            <svg width="10" height="10" viewBox="0 0 12 12"><path fill="currentColor" d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path></svg>';
 						html += '         </a>';
 						html += '      </div>';
 						html += '   </li>';

 						}
 						html += '</ul>';
 						html += '<div style="margin-bottom: 20px;">';
 						html += '   <button type="button" class="write_resume" onclick="window.location.href=\'/wanted/member/myresume\'">새 이력서 작성</button>';
 						html += '   <p style="font-size:14px; margin-top : 30px; ">원티드 이력서로 지원하면 최종 합격률이 40% 높아집니다.</p>';
 						html += '   <button type="button" class="apply_resume" id="real_apply">제출하기</button>';
 						html +='    <input type="hidden" id="selected_resume_code" />    '
 						html += '</div>';

 						 // console.log(html);


 						$("div#apply_resume").html(html);
 					 
 					 	$("div#div_apply_adjust").show();
 					 }
 					 
 				},
 				error: function (request, status, error) {
 					 // alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
 				}	
 			}); // END OF $.AJAX 
 		}// END OF FUNCTION APPLY 
 		
 		function applyPost(){
			let post_code = '${pvo.post_code}';
			let company_id = '${pvo.fk_company_id}'
			// console.log(post_code);
 		  	let jsonData = { resume_code : $("input#selected_resume_code").val() , 
					fk_company_id : company_id ,
					fk_post_code : post_code } ; 
 			$.ajax({
 				url: "/wanted/member/apply",
 				type: "post",
				contentType: "application/json",			
 				data : JSON.stringify(jsonData) ,
 				dataType: "json",
 				async: false,
 				success: function (json) {
					  // alert("하하하");  					
 					  // console.log(json);
					  if ( json.result == "fail"){
						alert("이력서 지원이 실패했습니다.");
					  }
					  else{
						location.href="/wanted";	
					  }
 				
 					 
 				},
 				error: function (request, status, error) {
 					 // alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
 				}	
 			}); // END OF $.AJAX   */
 		
 			
 		}
 </script>
 

 
			<!--  왼쪽 BODY  시작  -->
			<div class="main_top_carousel container" style="margin-top:20px; ">
			    <div class="my-1">
			        <div class="owl-carousel owl-theme">
			        	<c:forEach var="item" items="${imageList}">
						    <!-- 반복할 내용 -->
						    <div class="item" style="text-align: left;">
			                <img style="height: 100%;" src="/images/company_detail_image/${item}">
			            	</div>
						</c:forEach>
			            
			            </div>
			    </div>
			</div>


		
		<div class="container-custom">
				<h2 class="title" style="margin-bottom:10px;">${pvo.subject}</h2>
				
				<span class="bold-span"><a>${cvo.name}</a></span>
				<span class="green-span border">응답률 매우 높음</span>
				<span class="gray-span border-left">${cvo.region_name }.${cvo.region_detail_name}</span>
				<br>
				<button class="tag_button" style="margin-top:20px;">#유연근무</button>
				<button class="tag_button">#스타트업</button>
				<button class="tag_button">#교육비</button>
				<button class="tag_button">#IT, 컨텐츠</button>
				
				<h6 class="sub_title">회사소개</h6>
				<p>${pvo.info}</p>
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
				<span class="header-span">근무지역</span> <span class="body-span">${cvo.addresss} </span>
						<input type="hidden" id="lat"  value=""/>
						<input type="hidden" id="lng" value="" />
				</div>
				
				 <div id="map" style="width:100%; height:277px;"></div>
				 <div id="latlngResult"></div>
				 
				 <section class="comp_section">
				 	<div class="div-logo" style="background-image: url(/images/profile_default.png)">
				 	</div>
					<div style="margin-right: 294px;">
						<h5>${cvo.name}</h5>
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

	<div class="border fixed-top" style="background-color: #fff;  width: 330px; height: 340px; top:70px ; left: 1330px;padding: 24px 20px; z-index: 1; border-radius: 3px;">
			
			<div class="" style="text-align:center; margin: 15px;   ">	
				
				<button type="button" class="btn-blue save-temporary" style="width:90%;">북마크하기</button>
				<br/>
				<button type="button" id="btn_apply" class="btn-blue save" style="width:90%;"  >지원 하기</button>
			</div>
			
			<div class="wanted-ai" >
			<img aria-label="wantedai-logo" src="https://static.wanted.co.kr/images/ai/logo-wantedai.png" width="70" alt="logo-wantedai" height="13" style="margin-bottom: 3px;">
			<span class="warning_h5" style="margin-left : 5px;">합격예측</span><br/>
			<span class="warning_h5">서류 합격률이 궁금하다면?</span>
			
			</div>
	</div>

			
	<div class="border fixed-top" id="div_apply_adjust"style="background-color: #fff;  width: 330px; min-height: 390px;
    max-height: 540px; top:70px ; left: 1330px; z-index: 2; border-radius: 3px; overflow-y: auto; display:none;">
			
		<div class="border-bottom" style="text-align:center; display: flex; height: 50px;  padding : 14px 15px; justify-content: space-between;">	
			<h2 class="apply_h2" style="margin-left: 115px; ">지원하기</h2>	
			<button type="button" id="back">뒤로</button>
		</div>
		
		<div class="container-fluid border-bottom" id="violet">
				<p>주요 업무 내용을 한 번 더 확인해 주세요.</p>
				<p>직무와 맞는 포지션일수록 서류합격률이 높아져요!</p>
		</div>
		
		<div class="container-fluid" id="apply_resume" style="padding: 20px 20px 0; ">
		
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