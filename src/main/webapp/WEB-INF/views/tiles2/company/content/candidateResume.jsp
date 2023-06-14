<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<style type="text/css">

	div#mySide {
		border-right: solid 1px #ddd;
	}
	
	.resumeFrm {
		margin-bottom: 100px;
	}
	
	.form-control {
		 border: solid 3px #D6EAFE;
		 margin: 10px 0;
	}
	
	div.resume-header{
	    padding: 20px 0 6px;
	    font-size: 18px;
	    font-weight: bold;
	    color: #184CED;
	    border-bottom: 1px solid #bababa;
	}
	
	.content{
	    padding: 20px;
	    background-color: #f3f9fe;
	    font-size: 15px;
	    line-height: 1.42;
	    letter-spacing: normal;
	    color: #666;
	    margin-top: 10px;	
	}

	#date {
		float: left;
		display: flex; 
		width: 300px;
	}
	
	.skillList {
	  display: flex;
	  height: 45px;
	  border-radius: 50px;
	  font-weight: bold;
	  font-size: 14pt;
	  margin: 5px;
	  font-style: none;
	  display: flex;
	  justify-content: center;
	  background-color: #184CED;
	  color: #fff;
	  flex-wrap: wrap;
	  width: max-content;
	  padding: 10px;
	  min-width: 100px;
	}


	
	.status_button1 {
		background-color: #3366FF; 
		color: #FFF;
	}
	
	.status_button2, .status_button3 {
		background-color: #FFF; 
		color: #3366FF; 
	}
	
	.status_button1, .status_button2, .status_button3 {
	 	position:relative;
		width: 150px;
		height: 50px;
		border-radius: 50px;
		line-height: 45px;
		font-weight: bold;
		font-size: 14pt;
		margin: 5px;
		border: solid 1px #3366FF;
	}
	
	.status_button1:hover {
		background-color: #184CED !important;
		cursor: pointer;
		border: none;
	}
	
	.status_button2:hover {
		color: gray;
		border: solid 1px gray; 
	}
	
	
	div.fixed-bottom{
	    position: fixed;
	    top: auto;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    background-color: #fff;
    	border-top: 1px solid #e0e0e0;
	}
	
	
	button#myBtn {
		position: fixed;
		top: 800px;
		left: 92%;
		background-color: #91DFDA;
		outline: none;
		border: none;
		width: 3%;
		height: 6%;
		border-radius: 10px;
		font-size: 15pt;
	}  

	
</style>

<script type="text/javascript">

		$(document).ready(function(){
			
			
		    
		}); // END OF $(DOCUMENT).READY(FUNCTION()---------------------------

		
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		
</script>

<form class="resumeFrm">
		
		<div class="container my-5">
			<h2 id="subject" class="form-control" style="margin: 50px 0 !important; height: 70px;">
			${subject}
			</h2>

			<h4 id="name" class="form-control">
			이름
			</h4>

			<h4 id="email" class="form-control">
			${fk_UserId}
			</h4>

			<h4 id="mobile" class="form-control">
			연락처
			</h4>
			
			
			<div class="resume-header" style="margin-top:60px;">
				간단 소개글 
			</div>
			<div>
				<p id="introduce" class="content">${introduce}</p>
			</div>
			
			
			<div class="resume-header" style="margin-top:60px;">
				경력
			</div>
			<div id="career" class="content">
			<table>
				<tr style="display: flex;">
					<td id="date"><h6>시작날짜</h6>&nbsp;-&nbsp;<h6>종료날짜</h6></td>
					<td id="company" style="display: block !important;">
					<h5>경력(회사명)</h5><h6>부서명/직책</h6>
					<h6 style="margin: 20px;"><i class="fa-solid fa-user-tie"></i> 주요성과  </h6>
					<div id="date" style="margin-left: 20px;"><h6>시작날짜</h6>&nbsp;-&nbsp;<h6>종료날짜</h6></div>
					<h6 style="margin-left: 20px;">경력 상세 기술서</h6>
					</td>
				</tr>
			</table>	
			</div>						
				<!-- 추가된 경력 -->
				<ul id="addCareer"></ul>

				
			<div class="resume-header" style="margin-top:60px;">
				학력 
			</div>
			<div id="school" class="content">
			<table>
				<tr style="display: flex;">
					<td id="date"><h6>시작날짜</h6>&nbsp;-&nbsp;<h6>종료날짜</h6></td>
					<td id="company" style="display: block !important;">
					<h5>학교명</h5><h6>전공 및 학위</h6>
					<h6 style="margin: 20px;"><i class="fa-solid fa-graduation-cap"></i> 이수과목 또는 연구내용</h6>
					<p style="margin-left: 20px;">이수과목 또는 연구내용 기술서</p>
					</td>
				</tr>
			</table>
			</div>		

			<div class="addSchool"></div>
			
			
			<div class="resume-header" style="margin-top:60px;">
				스킬
			</div>
			<div id="skill" class="content" style="display: flex;">
				<div class="skillList">${skill}</div>
				<div class="skillList">oracle</div>
			</div>

			
			
			<div class="resume-header" style="margin-top:60px;">
				수상 및 기타
			</div>
			<div id="award" class="content">
				<table>
				<tr style="display: flex;">
					<td id="date"><h6>수상날짜</h6></td>
					<td id="company" style="display: block !important;">
					<h5>활동명</h5>
					<h6 style="margin: 20px;"><i class="fa-solid fa-medal"></i> 세부사항</h6>
					<p style="margin-left: 20px;">세부사항 기술서</p>
					</td>
				</tr>
			</table>
			</div>
				<!-- 추가된 수상 및 기타  -->
				<div class="addReward"></div>
			

			<div class="resume-header" style="margin-top:60px;">
				외국어
			</div>
			<div id="language" class="content">
				<table>
				<tr style="display: flex;">
					<td id="date"><h6>취득날짜</h6></td>
					<td id="company" style="display: block !important;">
					<h5>언어</h5>
					<h6 style="margin: 20px;"><i class="fa-solid fa-comment"></i> 세부사항</h6>
					<p style="margin-left: 20px;">세부사항 기술서</p>
					</td>
				</tr>
			</table>
			</div>
				<!-- 추가된 외국어 -->
				<div class="addLanguage"></div>

			
			<div class="resume-header" style="margin-top:60px;">
				링크
			</div>
			<div id="link" class="content">
				<i class="fa-solid fa-desktop"></i><a href="#">${uploadLink}</a>
			</div>
				<!-- 추가된 링크 -->
				<div class="addUploadLink">
					<div><a href="#"></a></div>
				</div>

		</div>

		<div class="container-fluid border-top fixed-bottom" style="width: 100%; padding: 5px 0;">
		
			<div style="display:flex; width: 100%; float: right; justify-content: space-between;">		
				<div style="margin-left: 4%;">
				<button class="status_button3" type="button" onclick="javascript:history.back()"><span>지원자 목록</span></button>
				</div>
				
				<div style="display: flex; align-items: center; padding-top: 10px;">
				<h5 style="margin-left: 10px; width: max-content;"><i class="fa-solid fa-quote-left"></i>&nbsp;&nbsp;--- 공고에 관한 지원이력서 입니다.&nbsp;&nbsp;<i class="fa-solid fa-quote-right"></i></h5>
				</div>
				
				<div style="margin-right: 4%;">
				<button class="status_button1" type="button" onclick="updateStatus_1()"><span>합 격</span></button>
				<button class="status_button2" type="button" onclick="updateStatus_2()"><span>불 합 격</span></button>
				</div>
			</div>
			
		</div>

</form>


	<nav>
	<!-- to Top btn 끝 -->
	<div class="myfixed div_table">
	   	<div id="div_table_cell">  
	   		<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa-solid fa-arrow-up" style="color: #ffffff;"></i></button>
	   	</div>
	</div> 
	<!-- to Top btn 끝 -->
	</nav>

<script>

	$("button#myBtn").hide();

	window.onload = function() {
		// Get the button
		let mybutton = document.getElementById("myBtn");
		window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		    mybutton.style.display = "block";
		  } 
		  else {
		    mybutton.style.display = "none";
		  }
		}
	}
	// button 클릭시, 화면상단으로 스크롤
	function topFunction() {
	  window.scrollTo({top:0, behavior:'smooth'});
	};
	
</script>
	
	