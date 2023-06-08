<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String ctxPath = request.getContextPath(); %>   
<script type="text/javascript">
	$(document).ready(function(){

		setMenuList();
		setHeaderEvent();
		

		
		
		
	}); // END OF $(DOCUMENT).READY(FUNCTION(){
		
	/////////////////////////////////////////////////////////////////////////////////////////////////
	
	function setHeaderEvent(){
		// 헤더 카테고리 
	    // 2차 카테고리 열리게
		$(document).on('mouseover' , ".dropdown-menu li" , function(){
			$(this).find('.header-list').show();
		});
		
	    $(document).on('mouseleave' , '.dropdown-menu li' , function(){
	    	$(this).find('.header-list').hide();
	    });
	    
	
		
	} // END OF FUNCTION SETHEADEREVENT(){
	
	////////////////////////////////////////////////////////////////////////////////////////////////////

	function setMenuList() {
		$.ajax({
			url: "/wanted/company/getHeaderList",
			type: "get",
			dataType: "json",
			success: function (json) {
				<%--  === #112. 검색어 입력시 자동글 완성하기 7  === --%>
				// console.log(JSON.stringify(json));
				let html ="";
				html += " <ul style='padding: 0; list-style:none; '> "
						+ "<li>"
						+ "<a class='dropdown-item' href=''> "
						+ " 직군전체 "
						+ "</a>"
						+ "</li>";

				for (let x = 0; x < json.jobList.length; x++) {
					// console.log(json.jobList[x].job_name);
					// console.log(json.jobList[x].job_code);
					
					html += "<li>" +
							"<a class='dropdown-item' href='#'>" +
							json.jobList[x].job_name +
							"</a>" ;
					const dutyList = getDutyList(json.jobList[x].job_code);
					
					for ( let y=0 ; y< dutyList.length ; y++ ){
						 // console.log(dutyList) ;
						 if ( y == 0 ){
							 html += '<div class="header-list" style="border: solid 2px white;" id="show2">' +
						 	  '<ul  style="list-style: none; overflow-y: auto; overflow-x: hidden; position: absolute; top: 0; left: 100%; z-index: 2; width: 250px; height: 100%; background: rgb(247,259,250); border: 1px solid #ccc; border-top: 0; border-left: 0; padding-top: 5px;">' ;
						 }
							 
						html += '<li><a href="#"><span class="li-category">'+dutyList[y].duty_name+'</span></a></li>' ;
						
						if ( y == dutyList.length -1 ){
							html += '</ul></div></li>'
						}
						$("div#menu-list").html(html);
					}
					
					
					
				}


			},
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}


		});
	}
	
	function getDutyList( jobCode ){
		var duties;
		
		$.ajax({
			url: "/wanted/company/getDuty",
			type: "get",
			data: {"jobCode": jobCode},
			dataType: "json",
			async: false,
			success: function (json) {
				 //console.log(JSON.stringify(json));
				duties = json.dutyList ;
			},
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});

		return duties ;
	}
	
</script>


<style type="text/css">


	div#header-search{
		height: 120px ; 
	}
	div#my_menu{
		position: absolute ;
		top: 55px;
    	right: 0;
	}
	button.btn-search{
		background-color: #fff ;
		border: 0px ;
		top: 22%;
    	right: 10px;
	}
	div.header-search {
		top: 60px;
		left : 370px ;
	}
	.header-link{
		color:#666;
	}
	a.header-a{
		display: inline-block;
		width: 100px ;
		margin-right : 80px ;
	}
	a.header-category{
		display:inline-block;
		width: 141px;
	}
	span.li-category{
		color: #666;
		margin-top:10px;
		margin-bottom:10px;
	}

	/* ----------------------------------------------------------------------- */
	/* 메인 페이지 CSS */
	
	img.card-size{
		height: 256px;
	
	}
	
	
	
		.profile {
			  background-image: url('프로필-배경.jpg');
			  background-size: cover;
			  background-position: center;
			  background-repeat: no-repeat;
			  position: relative;
			  display: inline-block;
		 }
	
		
		.menu {
		  position: absolute;
		  top: 100%;
		  left: 0;
		  width: 192px ;
		  background-color: #fff;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  display: none;
		  text-align: center ;
		}
		
		.menu ul {
		  list-style-type: none;
		  padding: 0;
		  margin: 0;
		}
		
		.menu li {
		  padding: 8px 12px;
		}
		
		.profile:hover #menu {
		  display: block;
		} 
	
	
</style>
	
	<!-- 로고, 검색창, 로그인, 회원가입 -->
	<div class="container-fluid border-bottom" style="height: 50px;" id="header-search">
			
	
	<!-- nav bar ( 메뉴 바 ) -->

	<div class="container-fluid sticky-top" style="background-color : #fff;">
		<div class="container">
		<nav>        <!-- style="border: solid 1px blue; margin: 0 100px; max-width: 1300px; min-width: 120px; -->		  
			  <!-- Links -->
				  <ul style="border-bottom: solid 1px #f2f2f2; display:flex; list-style: none; padding-left:0;">
				
				    <!-- Dropdown -->
				   <!-- margin 상 우 좌 하 -->
				    <li style="margin: 10px 50px 10px 10px; ">
				      	<a class="header-category border-right" href="#" data-toggle="dropdown" style="color: black;">
				        	<i class="fa-solid fa-bars"></i>
				       		 <img  src="/resources/images/원티드로고.png" class="position-relative" style="width: 80px; margin-left:10px; top:-3px;"/>
				      	</a>
				      
				      <div id="menu-list"class="dropdown-menu" aria-labelledby="navbardrop">
				     
				 		</div>
				 		
				    <li style="margin: 10px 0px 10px 10px;">
				      <a class="header-category" href="#" style="color: black;">채용</a>
				    </li>
				    <li style="margin: 10px 0px 10px 10px;">
				      <a class="header-category" href="#" style="color: black;">이력서</a>
				    </li>
				    <li style="margin: 10px 0px 10px 10px;">
				      <a class="header-category" href="#" style="color: black;">커뮤니티</a>
				    </li>
				    <li style="margin: 10px 0px 10px 10px;">
				      <a class="header-category" href="#" style="color: black;">통계</a>
				    </li>
				    <li  style="margin: 10px 0px 10px 10px;">
				    	<button class="btn-search"><i class="fa-solid fa-magnifying-glass"></i></button>
				    </li>
				    <li  style="margin: 10px 0px 10px 10px;">
				    	<button class="btn-search"><i class="fa-regular fa-bell"></i></button>
				    </li>
				    
				    <li  style="margin: 10px 0px 10px 10px;">
				    	
				    	<div class="profile">
						  <img src="<%= ctxPath%>/resources/images/원티드로고.png" style="width: 28px; height: 28px; border-radius:50%;"/>
						  <div class="menu" id="menu">
						    <ul>
						      <li><a>MY 원티드</a></li>
						      <li><a>지원 현황</a></li>
						      <li class="border-top"><a>로그아웃</a></li>
						    </ul>
						  </div>
						</div>
						
				    </li>
				    
				    <li class="border-left text-center" style="margin: 10px 30px 10px 30px; padding-left:10px;">
				      <a class="header-category" href="<%= ctxPath%>/" style="color: #666;  border-radius: 15px; border: 1px solid">기업서비스</a>
				    </li>
			  </ul>
		</nav>
	</div>
	</div>
</div>
