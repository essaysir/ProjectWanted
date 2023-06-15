<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="/OwlCarousel/js/owl.carousel.min.js" type="text/javascript"></script>


<!-- owl carousel -->
<link rel="stylesheet" href="/OwlCarousel/css/owl.carousel.min.css" type="text/css"/>
<link rel="stylesheet" href="/OwlCarousel/css/owl.theme.default.min.css" type="text/css"/>


<!-- slick 이용하기 위한 링크 -->
<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />


<style type="text/css">
	.main_outline{
		border: solid 0px black;
		margin-top: 25px;
		width:100%;
	}

/*------------------------------------탑 캐러셀 시작------------------------------*/	
	
	.main_top_carousel{
		height: 300px;
		width:100%;
	}
	
	.main_top_carousel > .my-1 {
    max-width:100%;
    height: 300px;
    margin:0 auto;
	}
	
	.main_top_carousel > .my-1 > .owl-carousel > .owl-stage-outer > .owl-stage > .owl-item > .item {
	    margin:0 auto;
	    height:300px;
	    width:1060px;
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
	
/*------------------------------------탑 캐러셀 끝------------------------------*/	
	.main_button{
		display: flex;
		justify-content: center;
  		align-items: center;
		margin: 60px 0px;
	}
	
	.main_button_button{
		height: 70px;
		width: 1060px;
		border-radius: 38.5px;
		text-align:center;
		background-image: linear-gradient(90deg,#01a9fe -12%,#2f5fef 37%,#046afe 72%,#00d2dd 110%);  		
		cursor: pointer;
	}
	
	.main_button_text{
		display: flex;
	    flex-grow: 1;
	    justify-content: center;
	    align-items: center;
	    padding: 15px 30px;
	    color: #fff;
	    font-size: 20pt;
	    font-weight: 700;
	}
	
	.main_button_text > i{
		margin-right: 15px;
	}
	
	.mid_recommend{
		height: 350px;
		justify-content: center;
  		align-items: center;
  		padding-bottom: 60px;
		background-color: #f4f8fb;
  		
	}
	
	.mr-t{
		height:180px;
		display: flex;
		padding: 60px 0 40px 0;
		margin:0px;
		justify-content: center;
	    align-items: center;
		z-index: 3;
	}
	.mr-m{
		border: solid 0px red;
	}
	.mr-m > .mr-h2{
		margin:0 0 6px 0;
		text-align: center;
		font-size: 22px;
		
	}
	
	.mr-b{
		justify-content: center;
	    align-items: center;
	    text-align: center;
	}
	
	.mr-b > .mr-h3{
		font-size: 16px;
		text-align: center;
		color: #555;
	}
	
	.mr-b > button {
		padding: 10px 20px;
    	border-radius: 25px;
    	background-color: #36f;
    	font-size: 16px;
    	font-weight: 700;
    	color: #fefefe;
    	border: none;
	}
	
	.main_gomin{
		height:103px;
		width:1060px;
		margin: 0 auto;
		margin-top:60px;
		background-color: #2b4bc8;
		border-radius: 10px;
		cursor: pointer;
		
	}
		
	.gomin_content{
		position: relative;
	    width: 1060px;
	    height: 103px;
	    padding: 32px 40px;
	    font-size: 22px;
	    font-weight: 800;
	    line-height: 26px;
	    color: #fff;
	    justify-content: center;
	    align-items: center;
	    text-align: center;
	    overflow: hidden;
	    border-radius: 10px;
	}
	
	.gomin_content > .gomin_p {
		float: left;
      	clear: left;
		display: inline;
		margin: 0px;
		font-size: 22px;
		line-height: 40px;
      	text-align: center;
	}
	
	.gomin_content > .gomin_st {
		float: right;
      	clear: right;
		display: inline;
	    border-radius: 20px;
	    background-color: #fff;
	    color: #2b4bc8;
	    font-size: 15px;
	    line-height: 18px;
	    font-weight: 600;
	    padding: 11px 20px;
	}
	
	
	.gomin_content > .gomin {
		width: 124px;
		height: 100px;
		position: absolute;
      	top: 60%;
    	left: 70%;
      	transform: translate(-50%, -50%);
	}
	
	
	.main_two_select{
		height: 225px;
		margin: 0 auto;
		width:1060px;
		padding: 60px 0 85px 0;
		display: flex;
		justify-content: center;
  		align-items: center;
	}
	
	.select_one{
		width: 530px;
		height: 80px;
		background-color: #f2f5ff;
    	border-top-left-radius: 38.5px;
    	border-bottom-left-radius: 38.5px;
    	border: none;
    	cursor: pointer;
    	font-size: 18px;
	}
	
	.select_two{
		width: 530px;
		height: 80px;
		border-top-right-radius: 38.5px;
    	border-bottom-right-radius: 38.5px;
    	background-color: #f2fbf5;
    	border: none;
    	cursor: pointer;
    	font-size: 18px;
	}
	
	.main_company{
		justify-content: center;
  		align-items: center;
	}
	
/*--------------------------회사 캐러셀 시작---------------------------*/	
	.company_carousel1{
		width:1060px;
		height:430px;
  		margin: 0 auto;
  		margin-bottom: 90px;
	}
	
	.company_content{
		width:1080px;
		height: 350px;
		position: relative;
		left: -10px;
		top: -10px;
	}
	
		
	.company_carousel2{
		width:1060px;
		height:430px;
  		margin: 0 auto;
  		margin-bottom: 90px;
	}
	
	.company_content2{
		width:1080px;
		height: 350px;
		position: relative;
		left: -10px;
		top: -10px;
	}
	
	.company_head{
		width:1060px;
		height: 50px;
		padding-top:12px;
		margin-bottom: 40px;
		text-align: center;
	}
	
	.company_head h2{
		font-size: 22px;
	}
	
	.company_head img{
		width:24px;
		height: 24px;
	}
	
	.company_sub{
		font-size: 15px;
	}
	
	.cards{
		width:540px;
		height: 350px;
		padding: 10px;
		border-radius: 4px;
	}
	
	.cards-head{
		width: 520px;
		height: 270px;
	    overflow: hidden;
	    border-radius: 4px;
	}
	
	.cards-head > img {
		top: 50%;
    	left: 50%;
      	transform: translate(0%, -15%);
      	border-radius: 4px;
	}
	
	.cards-body > img {
		width: 42px;
		height: 42px;
		float: left;
      	clear: left;
		display: inline;
		margin: 0 15px 0 0;
	}
		
	.company-name{
		margin: 0;
		font-weight: bold;
		font-size: 18px;
		text-align: left;
		margin-top: 15px;
		
	}
	.company-job{
		margin: 0;
		font-size: 14px;
		color: #999;
		text-align: left;
	}
	
	.company1-prev,
	.company2-prev,
	.tema-prev{
		width: 36px;
		height: 36px;
		float: left;
      	clear: left;
		display: inline;
  		font-size: 36px;
  		cursor: pointer;
	}
	
	.company1-next,
	.company2-next,
	.tema-next{
		width: 36px;
		height: 36px;
		float: right;
      	clear: right;
		display: inline;
  		font-size: 36px;
  		cursor: pointer;
	}
	
		
	.slick-disabled{
		opacity: .25;
		cursor: no-drop;
	}
	
/*--------------------------------테마 캐러셀 시작-----------------------------*/	
	
	.tema_frame{
		justify-content: center;
  		align-items: center;
	}
	.tema_carousel{
		width:1060px;
		height:620px;
  		margin: 0 auto;
  		padding: 70px 0;
	}
	
	.tema_content{
		width:1080px;
		height: 430px;
		position: relative;
		left: -10px;
		top: -10px;
		margin-top: 20px;
	}
	
	.tema_head{
		width:1060px;
		height: 50px;
		text-align: center;
	}
	
	.tema_head h2{
		font-size: 22px;
	}
	
	.tcards{
		margin: 10px;
		width:540px;
		height: 430px;
		padding: 10px;
	}
	
	.tcards-head{
		width: 520px;
		height: 300px;
	    overflow: hidden;
	}
	
	.tcards-head > img {
		width:520px;
		height: 300px;
		top: 50%;
    	left: 50%;
      	transform: translate(0%, 0%);
    	border-radius: 4px;
      	
	}
	
	.tcards-body > img {
		width: 32px;
		height: 32px;
		margin: 8px 8px 0 0;
	}
	
	.tema_line{
	    width: 1060px;
	    height: 1px;
	    margin: 0 auto;
	    background-color: #ececec;
	}
	
/*--------------------------------카드 시작-----------------------------*/		
	.bcard_frame{
		justify-content: center;
  		align-items: center;
	}
	.bcard_content{
		width:1080px;
		height:536px;
  		margin: 0 auto;
  		padding: 70px 0 50px 0;
	}
	
	.bcard_content h2 {
		font-size: 22px;
		text-align: center;
	}
	
	.bcard_list {
		width: 1095px;
		height: 384px;
	}
	
	.bcard{
		width:270px;
		height:360px;
		padding:10px;
		display: inline-block;
	}
	
	.bcard_head > img{
		width:250px;
		height:187px;
		border-radius:4px;
	}
	
	.bcard-title{
		font-size: 18px;
		font-weight: bold;
	}
	
	.bcard-company{
		font-size: 14px;
	}
	
</style>

<script type="text/javascript">
function employmentFunction() {
	  alert('버튼이 클릭되었습니다!');
	}
	
function gominFunction() {
	  alert('버튼이 클릭되었습니다!');
	
	}
function gomyprofile() {
	
	window.location.href = "/wanted/member/memberInfo";
	// 스프링 시큐리티를 고려해서 ajax 로 getLogin() 하려했으나
	// mvo만 받는 거니 
	
}

</script>

<div class="main_outline">
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
	<div class="main_button">
		<div class="main_button_button" onclick="employmentFunction()">
			<div class="main_button_text"><i class="fas fa-search"></i>채용 중인 포지션 보러가기</div>
		</div>
	</div>
	<div class="mid_recommend" style="background-image: url(/static/images/main_image/optimize.png);">
		<div class="mr-t">
			<img src="/images/main_image/다운로드.png" style="width:80px; height: 80px;">
			<img src="/images/main_image/logo-wantedai.png" style="width:170px; height: 27.5px;">
		</div>
		<div class="mr-m">
			<h2 class="mr-h2"><img src="/images/main_image/logo-wantedai.png" style="width:114px; height: 18.5px;">가 제안하는 합격률 높은 포지션</h2>
		</div>
		<div class="mr-b">
			<h3 class="mr-h3">회원가입하면 포지션을 추천해드려요.</h3>
			<button type="button">지금 시작하기</button>
		</div>
	</div>
	<div class="main_gomin" style="background-image: url('/images/main_image/banner-back-pc-jobsfeed.png'); background-size: cover;"
			onclick="gominFunction()">
		<div class="gomin_content">
		<p class="gomin_p">내 연차에 이 연봉 괜찮은가? 궁금할 땐</p>
		<img class="gomin" src="/images/main_image/gomin.png">
		<strong class="gomin_st">커리어 중간점검</strong>		
		</div>
	</div>
	<div class="main_two_select">
		<button type="button" class="select_one" onclick="gomyprofile()">내 프로필</button>
		<button type="button" class="select_two" onclick="location.href='#'">매치업</button>
	</div>
	<div class="main_company">
		<div class="company_carousel1">
			<div class="company_head">
				<div class="company1-prev"><i class="fas fa-chevron-circle-left"></i></div>
				<div class="company1-next"><i class="fas fa-chevron-circle-right"></i></div>
				<h2 class="company_title">
					<a href="#" class="">
						#연봉이 최고의 복지
						<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F634f02e0-9f6e-11ec-b909-0242ac120002.png&amp;w=75&amp;q=75" alt="user tag icon">
					</a>
				<span>회사를 소개합니다</span>
				</h2>
				<div class="company_sub">
					<a href="#" class="">
						<span>포지션으로 더보기</span>
					</a>
				</div>
			</div>
			<div class="company_content">
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card1.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card2.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card3.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card4.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
			</div>
		</div>
		<%-- 내가만들어본거 --%>
		
		<div class="company_carousel2">
			<div class="company_head">
				<div class="company2-prev"><i class="fas fa-chevron-circle-left"></i></div>
				<div class="company2-next"><i class="fas fa-chevron-circle-right"></i></div>
				<h2 class="company_title">
					<a href="#" class="">
						#연봉이 최고의 복지
						<img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ftags%2F634f02e0-9f6e-11ec-b909-0242ac120002.png&amp;w=75&amp;q=75" alt="user tag icon">
					</a>
				<span>회사를 소개합니다</span>
				</h2>
				<div class="company_sub">
					<a href="#">
						<span>포지션으로 더보기</span>
					</a>
				</div>
			</div>
			<div class="company_content2">
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card1.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card2.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card3.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
				<div class="cards">
					<div class="cards-head">
						<img src="/images/main_image/card4.png">
					</div>
					<div class="cards-body ">
						<img src="/images/main_image/기업마크.jpg">
						<p class="company-name">천세산업</p><p class="company-job">제조</p>
					</div>
				</div>
			</div>
		</div>
		<div class="tema_line"></div>
	</div>
	<div class="tema_frame">
		<div class="tema_carousel">
			<div class="tema_head">
				<div class="tema-prev"><i class="fas fa-chevron-circle-left"></i></div>
				<div class="tema-next"><i class="fas fa-chevron-circle-right"></i></div>
				<h2 class="tema_title">
					테마로 모아보는 요즘 채용
				</h2>
			</div>
			<div class="tema_content">
				<div class="tcards col-md-4">
					<div class="tcards-head">
						<img src="/images/main_image/tema1.png">
					</div>
					<div class="tcards-body ">
						<p class="company-name">안정적인 흑자기업</p><p class="company-job">안정적으로 흑자수입을 올리고 있는 기업을 소개합니다.</p>
						<img src="/images/main_image/기업마크.jpg">
					</div>
				</div>
				<div class="tcards col-md-4">
					<div class="tcards-head">
						<img src="/images/main_image/tema2.png">
					</div>
					<div class="tcards-body ">
						<p class="company-name">안정적인 흑자기업</p><p class="company-job">안정적으로 흑자수입을 올리고 있는 기업을 소개합니다.</p>
						<img src="/images/main_image/기업마크.jpg">
					</div>
				</div>
				<div class="tcards col-md-4">
					<div class="tcards-head">
						<img src="/images/main_image/tema3.png">
					</div>
					<div class="tcards-body ">
						<p class="company-name">안정적인 흑자기업</p><p class="company-job">안정적으로 흑자수입을 올리고 있는 기업을 소개합니다.</p>
						<img src="/images/main_image/기업마크.jpg">
					</div>
				</div>
				<div class="tcards col-md-4">
					<div class="tcards-head">
						<img src="/images/main_image/tema4.png">
					</div>
					<div class="tcards-body ">
						<p class="company-name">안정적인 흑자기업</p><p class="company-job">안정적으로 흑자수입을 올리고 있는 기업을 소개합니다.</p>
						<img src="/images/main_image/기업마크.jpg">
					</div>
				</div>
			</div>		
		</div>
		<div class="tema_line"></div>
	</div>
	<div class="bcard_frame">
		<div class="bcard_content">
			<h2>요즘 뜨는 포지션</h2>
			<div class="bcard_list">
				<div class="bcard col-md-4">
					<div class="bcard_head">
						<img src="/images/main_image/bc1.png">
					</div>
					<div class="bcard-body">
						<div class="bcard-title">[SINPLE] 슈즈 분야 SNS 및 컨텐츠 마케터</div>
						<div class="bcard-company">크리스틴컴퍼니</div>
						<div class="job-card-company-location">서울<span class="addressDot">.</span><span>한국</span></div>
						<div class="reward">채용보상금 1,000,000원</div>
					</div>
				</div>
				<div class="bcard col-md-4">
					<div class="bcard_head">
						<img src="/images/main_image/bc2.png">
					</div>
					<div class="bcard-body">
						<div class="bcard-title">[SINPLE] 슈즈 분야 SNS 및 컨텐츠 마케터</div>
						<div class="bcard-company">크리스틴컴퍼니</div>
						<div class="job-card-company-location">서울<span class="addressDot">.</span><span>한국</span></div>
						<div class="reward">채용보상금 1,000,000원</div>
					</div>
				</div>
				<div class="bcard col-md-4">
					<div class="bcard_head">
						<img src="/images/main_image/bc3.png">
					</div>
					<div class="bcard-body">
						<div class="bcard-title">[SINPLE] 슈즈 분야 SNS 및 컨텐츠 마케터</div>
						<div class="bcard-company">크리스틴컴퍼니</div>
						<div class="job-card-company-location">서울<span class="addressDot">.</span><span>한국</span></div>
						<div class="reward">채용보상금 1,000,000원</div>
					</div>
				</div>
				<div class="bcard col-md-4">
					<div class="bcard_head">
						<img src="/images/main_image/bc4.png">
					</div>
					<div class="bcard-body">
						<div class="bcard-title">[SINPLE] 슈즈 분야 SNS 및 컨텐츠 마케터</div>
						<div class="bcard-company">크리스틴컴퍼니</div>
						<div class="job-card-company-location">서울<span class="addressDot">.</span><span>한국</span></div>
						<div class="reward">채용보상금 1,000,000원</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
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

$('.company_content').slick({
	  dots: false,
	  infinite: false,
	  speed: 300,
	  slidesToShow: 2,
	  slidesToScroll: 2,

	  prevArrow: $(".company1-prev"),
	  nextArrow: $(".company1-next")
	});			
	
$('.company_content2').slick({
	  dots: false,
	  infinite: false,
	  speed: 300,
	  slidesToShow: 2,
	  slidesToScroll: 2,

	  prevArrow: $(".company2-prev"),
	  nextArrow: $(".company2-next")
	});

$('.tema_content').slick({
	  dots: false,
	  infinite: false,
	  speed: 300,
	  slidesToShow: 2,
	  slidesToScroll: 2,

	  prevArrow: $(".tema-prev"),
	  nextArrow: $(".tema-next")
	});	
	
</script>


