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
			font-size: 13px; 
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
		    line-height: 40px;
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
					$('.apply_checkbox').not(this).prop('checked', false);
					
 				  if ($(this).is(':checked')) {
 				    // 체크박스가 체크되었을 때 수행할 작업
 				    // console.log('체크박스가 체크되었습니다.');
 				    var parentDiv = $(this).closest('div.resume_container');
					$('div.resume_container').not(parentDiv).removeClass("selected").addClass("unselected");
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

				let lat ;
				let lng ; 


				func_geocoder('${cvo.addresss}', function() {
					lat = $("input#lat").val();
					lng = $("input#lng").val();
					// 값을 사용하는 로직을 이곳에 작성하면 됩니다
					// alert(lat) ;
					// alert(lng) ;
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = { 
							center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
							level: 3 // 지도의 확대 레벨
						};

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(lat, lng); 

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						position: markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);



			});// END OF FUNC_GEOCODER
			

 			


		  
 			
 		}); // END OF $(DOCUMENT).READY(FUNCTION()
		
 		
 		
 		function func_geocoder(address , callback) {
 		   // 주소-좌표 변환 객체를 생성합니다
 		   var geocoder = new kakao.maps.services.Geocoder();

 		   geocoder.addressSearch(address, function(result, status) {

 			   if (status === kakao.maps.services.Status.OK) {
 				    // 주소가 정상적으로 검색이 완료됐으면
 			    	$("input#lat").val(result[0].y); // result[0].y ==> 위도
					// alert( result[0].y ) ;
 			    	$("input#lng").val(result[0].x); // result[0].x ==> 경도
					// alert(result[0].x);
					callback(); // 콜백 함수 호출
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
 						html += '            <p class="resume_name" style="margin-top: 8px; ">'+rvo.subject+'<span class="resume_matchup">매치업</span> </p>';
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
				<h6 class="sub_title" style="margin-bottom:20px;">기술스택.툴</h6>
				<c:forEach var="tech" items="${techList}">
				<button class="skill_button" >${tech}</button>
				</c:forEach>
			
				<hr style="margin:30px 0px;"/>
				
				<div style="marign-bottom: 15px;">
				<span class="header-span">마감일</span> <span class="body-span">${pvo.deadline}</span>
				</div>
				<br/>
				<div style="margin-bottom:15px;">
				<span class="header-span">근무지역</span> <span class="body-span">${cvo.addresss} </span>
						<input type="hidden" id="lat"  />
						<input type="hidden" id="lng" />
				</div>
				
				 <div id="map" style="width:100%; height:277px;"></div>
				 <div id="latlngResult"></div>
				 
				 <section class="comp_section">
				 	<div class="div-logo" style="background-image: url(/images/company_profile/${cvo.image})">
				 	</div>
					<div style="margin-right: 405px;">
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