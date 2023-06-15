<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    
<style type="text/css">
	
	body{
		margin: 0px;
	}
	
	.main1 .container {
	  display: grid;
	  grid-template-columns: repeat(2, 1fr);
	  grid-gap: 15px;
	}
	
	.main2 {
		background-color: #F0FDFF;
		text-align:center;
	}
	
	.resumeHome2_button1, .resumeHome2_button2 {
	 	position:relative;
		width: 180px;
		height: 55px;
		border-radius: 50px;
		line-height: 45px;
		font-weight: bold;
		font-size: 14pt;
		border: solid 1px #3366FF;
	}
	
	.resumeHome2_button1:hover {
		color: #184CED !important;
		cursor: pointer;
		border: none;
	}
	
	.resumeHome2_button2:hover {
		background-color: #184CED !important;
		cursor: pointer;
		border: none;
	}
	
	h1, h2 {
		text-align:center;
	}

	h1#info, h2#info {
		width: 100%; 
		position: relative; 
		color: #FFF; 
		text-align: center;
		margin: 0;
	}
	
	.main2 {
		height:1450px; 
		background-color: #F2F4F7;"
	}

	.main3 {
		height: 400px; 
		display: flex; 
		margin-top: 50px;"
	}
	
	div#bottom {
		height: 300px; 
		width: 550px; 
		display: inline-block; 
		margin-top: 4%;"
	}


</style>


	<section class="topBanner" style="height: 430px;">
		<img src="/images/resume_list/resumeHome2.png" width="100%" height="430" style="position:absolute;" alt="배너이미지" />
		<h1 id="info" style="font-size: 35pt; padding: 100px 0 20px 0;">합격을 부르는 이력서</h1>
		<h2 id="info" style="font-size: 15pt;">
		원티드 이력서로 지원 시 <br> 일반 이력서보다 서류 합격률이 2배 높아집니다.</h2>
		<div style="margin: 40px auto; width: 350px">
			<button class="resumeHome2_button1" type="button" style="background-color: #FFF; color: #3366FF; width: 150px !important;"onclick="javascript:window.location.href='/wanted/login'"><span>이력서 관리</span></button>
			<button class="resumeHome2_button2" type="button" style="background-color: #3366FF; color: #FFF;" onclick="javascript:window.location.href='/wanted/login'"><span>새 이력서 작성</span></button>
		</div>
	</section>
	
	<section class="main1" style="height:1250px;">
		<h1 class="title" style="padding: 80px 0 30px 0; font-size: 28pt;">원티드 이력서는 이런 점이 좋아요!</h1>
		<div class="container" style="width: 1050px; margin: 0 auto;">
			<img src="/images/resume_list/info1.png" width="520" height="480" style="margin-bottom: 15px;" alt="소개이미지1" />
			<img src="/images/resume_list/info2.png" width="520" height="480" style="margin-bottom: 15px;" alt="소개이미지2" />
			<img src="/images/resume_list/info3.png" width="520" height="480" style="margin-bottom: 15px;" alt="소개이미지3" />
			<img src="/images/resume_list/info4.png" width="520" height="480" style="margin-bottom: 15px;" alt="소개이미지4" />
		</div>
	</section>
	
	<section class="main2">
		<h1 class="title" style="padding: 80px 0 30px 0; font-size: 28pt;">쓰는 사람도 보는 사람도 편하게</h1>
		<img class="resume" src="/images/resume_list/resume.png" style="margin: 0; width: 1100px;" alt="이력서예시" />
		<button class="resumeHome2_button2" type="button" style="background-color: #3366FF; color: #FFF; display: block; margin: 20px auto;"><span>새 이력서 작성</span></button>
	</section>
	
	<section class="main3">
	<div style="width: 1100px; height: 400px; margin: 0 auto;">
		<div id="bottom">
			<div>
			<p style="font-size: 25pt; font-weight: bold;">이력서 완성하면<br><img src="/images/resume_list/resume_ai_logo.png" width="200" height="35" alt="AIlogo" />가 포지션 추천까지</p>
			</div>
			<p>이력서를 분석하여 딱 맞는 포지션을 찾아드려요.<br>원티드AI가 추천한 포지션은 서류합격률이 일반 지원 대비 2배 높습니다.</p>
			<button class="resumeHome2_button2" type="button" style="background-color: #3366FF; color: #FFF; width: 170px !important;"><span>지금 시작하기</span></button>
		</div>
		<img src="/images/resume_list/resume_ai_sample.png" width="500" height="350" style="margin-top: 50px; float: right;" alt="AI" />
	</div>	
	</section>
	