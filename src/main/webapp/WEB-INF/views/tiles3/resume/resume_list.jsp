<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
<style type="text/css">

	body {
		background-color: #F2F4F7;
	}

	div#resumeTop {
		height: 103px;
		width: 1060px;
		margin: 30px auto;
	}
	
	div#resumeListHeader {
		width: 1060px;
		height: 55px;
		padding: 0;
		display: flex; 
		justify-content: space-between;
	}
	
	div.title {
		display: flex; 
		-ms-flex-direction: row; 
		flex-direction: row; 
		-ms-flex-pack: start; 
		justify-content: flex-start; 
		-ms-flex-wrap: wrap; 
		flex-wrap: wrap; 
		justify-content: space-between;
	}
	
	div#resumeAdd {
		width: 1060px;
		margin: 10px auto;
	}
	
	div#resumeBox {
		border: solid 1px #ddd;
		background-color: #FFF;
		width: 250px;
		height: 190px;
		display: inline-block;
		margin-bottom: 0 !important;
		padding: auto 0;
	}
	
	#resumeBox:hover {
		cursor: pointer;
	}
	
	div#resumeListHeader {
		height: 50px;
	}
	
	div#circle {
		width: 77px; 
		height: 77px; 
		border-radius: 50px; 
		margin: 20px auto !important; 
		position: relative;
	}
	
	h5 {
		margin-top: 20px;
		font-weight: bold;
	}
	
	.tooltip {
		position: relative;
		display: inline-block;
	}
	
	.tooltip .tooltiptext {
		visibility: hidden;
		width: 230px;
		font-size: 9pt;
		font-weight: bold;
		background-color: #3366FF;
		color: #fff;
		text-align: center;
		border-radius: 6px;
		padding: 13px 10px;
		position: absolute;
		z-index: 1;
		bottom: 125%;
		left: 50%;
		margin-left: -125px;
		opacity: 0;
		transition: opacity 0.3s;
	}
	
	.tooltip .tooltiptext::after {
		content: "";
		position: absolute;
		top: 100%;
		left: 50%;
		margin-left: -5px;
		border-width: 8px;
		border-style: solid;
		border-color: #3366FF transparent transparent transparent;
	}
	
	.tooltip:hover .tooltiptext {
		visibility: visible;
		opacity: 1;
	}
	
	div#status {
		border-top: solid 1px #ddd; 
		height: 38px; 
		line-height : 38px; 
		padding: 0 20px; 
		margin-top: 63px; 
		font-weight: bold;
	}
		
	.es_dropdown {
	    position: relative;

	    width: 230px;
	}
	
	.es_dropbtn {
		float: right; 
		background-color: inherit; 
		outline: none; 
		border: none; 
		font-size: 15pt; 
		color: #999999; 
		height: 38px; 
		line-height : 38px;
		width: 30px;
		padding: 0 20px;
		cursor: pointer;

	}
	
	.es_dropdown-content {
		z-index: 1400;
	    position: absolute;
	    top: 38px;
	    right: 0;
	    flex-direction: column;
	    min-width: 160px;
	    box-shadow: 0 2px 4px rgba(0,0,0,.1);
	    border: 1px solid #E1E2E4;
	    border-radius: 4px;
	    background-color: #fff;
	    padding: 5px;
	    line-height: 27px !important;
	    display: none;
	}
	
	.es_dropdown-content a {
		height: 26px;
	    border: none;
	    color: #171717;
	    text-align: left;
	    padding: 3px 10px;
	    font-size: 14px;
	    text-decoration: none;
	    line-height: inherit;
	    display: block;
	}
	
	.es_dropdown a:hover {
		background-color: #F2F4F7;
		border-radius: 4px;
		height: 26px;
	}

	.show {
		display: block;
	}


</style>



<script type="text/javascript">

	<%-- 이력서List 버튼옵션 dropdown 효과 시작 --%>
	function myFunction() {
	  document.getElementById("myDropdown").classList.toggle("show");
	}
	
	window.onclick = function(event) {
	  if (!event.target.matches('.es_dropbtn')) {
	    var dropdowns = document.getElementsByClassName("es_dropdown-content");
	    var i;
	    for (i = 0; i < dropdowns.length; i++) {
	      var openDropdown = dropdowns[i];
	      if (openDropdown.classList.contains('show')) {
	        openDropdown.classList.remove('show');
	      }
	    }
	  }
	}
	<%-- 이력서List 버튼옵션 dropdown 효과 끝 --%>
	
</script>



<div id="resumeList">
	<div id="resumeTop">
		<div class="resumeBanner">
			<span><a href="#"><img src="/images/resume_list/trio.png" style="width: 1060px; height: 105px;" alt="배너이미지" /></a></span>
		</div>
	</div>
	
	<div id="resumeAdd">
	
		<div id="resumeListHeader">
			<h6 style="margin: 0; padding: 10px 0; text-align: center; font-weight: bold;">최근문서</h6>
			<a style="padding: 10px 0; text-decoration: none; color: #3366FF; font-weight: bold;" href="/wanted/resume_info">
				<span>원티드 이력서 소개</span><i class="fa-solid fa-circle-info" style="margin: 5px;"></i>
			</a>
		</div>
		
	<div class="title">
	
		<div class="container mt-3" id="resumeBox">
			<div style="height: 77px; margin-top: 35px;">
				<div class="container mt-3" id="circle" style="background-color: #3366FF;">
					  <a href="#" data-toggle="tooltip" title="원티드 이력서로 지원 시 일반 이력서보다<br>서류 합격률이 2배 높아집니다."><div class="ResumeList_ResumeList_addItem_icon__yfHFj"><svg style="position:relative; padding: 26px; color: #FFF;" viewBox="0 0 16 16" fill="none" xmlns="https://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M12.25 0H0.75C0.335786 0 0 0.335786 0 0.75V12.25C0 12.6642 0.335786 13 0.75 13H3V15.25L3.00685 15.3518C3.05651 15.7178 3.3703 16 3.75 16H15.25L15.3518 15.9932C15.7178 15.9435 16 15.6297 16 15.25V3.75L15.9932 3.64823C15.9435 3.28215 15.6297 3 15.25 3L15.1482 3.00685C14.7822 3.05651 14.5 3.3703 14.5 3.75L14.499 14.499H4.499L4.49975 13H12.25C12.6642 13 13 12.6642 13 12.25V0.75C13 0.335786 12.6642 0 12.25 0ZM11.499 1.5V11.5H1.499V1.5H11.499Z" fill="#fff"></path></svg></div></a>
			
				</div>
				<p style="text-align: center; font-weight: bold;">새 이력서 작성</p>
			</div>	
		</div>
		
		<div id="resumeBox">
			<div style="height: 77px; margin-top: 35px;">
				<div id="circle" style="background-color: #E1E2E4;">
					<div class="ResumeList_ResumeList_upload_icon__3SGaN"><svg style="position:relative; padding: 26px;" xmlns="https://www.w3.org/2000/svg" viewBox="0 0 32 34"><g fill="none" fill-rule="evenodd" stroke-linecap="round" stroke-linejoin="round"><g stroke="#666" stroke-width="3"><g><g><path d="M25.6 20.117L25.6 28.579 0 28.617 0 20.154M12.8.708L12.8 21.108" transform="translate(-543 -398) translate(543 398) translate(3.2 2.55)"></path><path d="M18.8 0L12.8 7.083 6.8 0" transform="translate(-543 -398) translate(543 398) translate(3.2 2.55) rotate(-180 12.8 3.542)"></path></g></g></g></g></svg></div>
				</div>
				<p style="text-align: center; font-weight: bold;">파일 업로드</p>
			</div>	
		</div>
		
		<div id="resumeBox" style="color: #999999;">
			<div style="margin: 0 20px;">
				<h5>박은서 2</h5>
				<p style="font-weight: bold;">2023.05.18</p>
			</div>	
			<div id="status">
				<div class="es_dropdown">작성 중
					<button class="es_dropbtn" onclick="myFunction()"><i class="fa-solid fa-ellipsis-vertical"></i></button>
					 <div id="myDropdown" class="es_dropdown-content">
					    <a href="#">이력서 이름 변경</a>
					    <a href="#">사본 만들기</a>
					    <a href="#">다운로드</a>
					    <a href="#" style="color: #FF425F">이력서 삭제</a>
					 </div>
				</div>
			</div>
		</div>
		
		<div id="resumeBox" style="color: #999999;">
			<div style="margin: 0 20px;">
				<h5>박은서 1</h5>
				<p style="font-weight: bold;">2023.05.18</p>
			</div>	
			<div id="status">
				<div class="es_dropdown">작성 중
					<button class="es_dropbtn" onclick="myFunction()"><i class="fa-solid fa-ellipsis-vertical"></i></button>
					 <div id="myDropdown" class="es_dropdown-content">
					    <a href="#">이력서 이름 변경</a>
					    <a href="#">사본 만들기</a>
					    <a href="#">다운로드</a>
					    <a href="#" style="color: #FF425F">이력서 삭제</a>
					 </div>
				</div>
			</div>
		</div>

	
	</div>
	
	</div>
</div>

<script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>

