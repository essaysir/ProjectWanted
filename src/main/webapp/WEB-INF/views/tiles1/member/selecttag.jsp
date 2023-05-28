<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<% 
	String ctxPath = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 설정</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/bootstrap-4.6.0-dist/css/bootstrap.min.css" > 

<!-- 직접 만든 CSS -->
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/css/style.css" />

<!-- Optional JavaScript -->
<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="<%= ctxPath%>/bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js" ></script>

<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<!-- Font Awesome 6 Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">    

<!-- 구글 폰트 import -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<!-- JQueryUI CSS 및 JS --> 
<link rel="stylesheet" type="text/css" href="<%= ctxPath%>/jquery-ui-1.13.1.custom/jquery-ui.min.css"/>
<script type="text/javascript" src="<%= ctxPath%>/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>

<style>

    div.field_all { /* 전체배경 */
	
		background: #f7f7f7;
		padding: 0;
        margin: 0;
        width: 100vw;
        height: 100vh;
	}
	
	div.field_mid { /* 두번째 가로 전체배경 */
		
	    width: 100%;
	    height: 80%;
	    margin: 0 auto;
	    display: flex;
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    justify-content: center;
  		align-items: center;
	
	}
	
	div.field_mainfrm { /* 로그인폼 전체 틀 */
	
		background-color: #fff;
		border: solid 1px #e1e2e3;
		border-radius: 6px;
		max-width: 100vw;
		width: 28%;
	    height: 97%;
	    margin: 0 auto;
	    display: flex;
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	}
	
	div.field_title {
		
		width: 88.0%;
	    height: 80%;
		display: block;
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);	
	}
	
	div.field_wanted {
		margin-top: -50px;
	}
	
	div.field_wanted > div.field_title_name {
	
		display: block;
	    margin: 0 auto;
    	margin-bottom: 30px;
    	padding-top: 0;
    	text-align: center;
		
	}
	
	div.field_mainfrm {
		width: 400px;
	}
    
    div.field_start {
    
    	display: flex;
    	justify-content: flex-start;
	    
    }
    
    div.field_choice {
    	width: 100%;
    	position: relative;
	    border-bottom: 1px solid #e1e2e3;
	    margin-left: 0;
	    
    
    }
    
    ul.step_container {
    	
    	padding-left: 0;
    	width: 100%;
    	display: flex;
    	justify-content: flex-start;
    	margin-left: 0;
    	list-style-type: none;
    }
    
    
    ul.step_container > li.active {
    	width: 100%;
	    color: #333;
	    margin-right: auto;
	    list-style-type: none;
	    display: flex;
  		align-items: center;
    }
    

	ul.step_container > li.completed:first-of-type::after {
	    content: "";
	    width: 100%;
	    -webkit-transition: width .5s;
	    transition: width .5s;
	    background: #36f;
	    left: 0;
        position: absolute;
	    display: block;
	    bottom: -1px;
	    height: 1px;
	}

    
    ul.step_container > li.active > em {
    
    	display: inline-flex;
	    align-items: center;
	    justify-content: center;
	    width: 23px;
	    height: 23px;
	    line-height: 1em;
	    border-radius: 50%;
	    font-style: normal;
	    margin-right: 6px;
	    background: #36f;
    	color: #fff;
    	
    }
    
    
    ul.step_container > li > em {
    
    	isplay: -ms-inline-flexbox;
	    display: inline-flex;
	    -ms-flex-align: center;
	    align-items: center;
	    -ms-flex-pack: center;
	    justify-content: center;
	    width: 23px;
	    height: 23px;
	    line-height: 1em;
	    border-radius: 50%;
	    font-style: normal;
	    color: #ccc;
	    margin-right: 6px;
    }
    
    
    ul.step_container > li.completed {
    
    	display: inline-flex;
	    align-items: center;
	    justify-content: center;
	    width: 23px;
	    height: 23px;
	    line-height: 1em;
	    border-radius: 50%;
	    font-style: normal;
	    margin-right: 6px;
	    background: #36f;
    	color: #fff;
    }
    
    
    ul.step_container > li.active > em > span {
	
		font-weight: 700;
	    border: 1px solid transparent;
	    height: 16px;	
	}
    
    ul.step_container > li.active > span {
    
        display: inline-block;
	    font-size: 14px;
	    color: #333;
	    margin-left: 4px;
	    font-weight: 700;
	    line-height: 23px;
    }
    
    div.field_comment {
    
   	    padding: 20px 0px 20px;
    }
    
    div.field_inner_comment {
    
    	margin-bottom: 0px;
	    font-size: 15px;
	    text-align: left;
	    color: #333;
	    font-weight: 600;
    }
    
	
	button#start_wanted {
	
		display: -ms-flexbox;
	    display: flex;
	    -ms-flex-pack: center;
	    justify-content: center;
	    -ms-flex-align: center;
	    align-items: center;
	    width: 100%;
	    height: 54px;
	    border: 0;
	    border-radius: 27px;
	    background-color: #36f;
	    font-size: 16px;
	    font-weight: 600;
	    color: #fff;
	    cursor: pointer;
	    margin-top: 25px;
	    margin-bottom: 15px;
	}
	
	div.wrapper_select {
	
		margin-top: -15px;
	}
	
	div.wrapper_select > ul {
	
		display: flex; 
		flex-wrap: wrap; 
		list-style-type: none;
	}
	
	
	div.curation_tag_title {
		
		margin-bottom: 14px;
	}
	
	div.curation_tag_title > img {
		
		width: 15px;
		height: 16px;
		margin-right: 0px;
		margin-top: -5px;
	}
	
	
	div.wrapper_select {
	
		margin-left: -33px;
		border: 0;
		box-sizing: border-box;	
		justify-content: flex-start;
		
	}
	
	span.tag_title_name {
	
		color: #171717; 
		font-size: 15px; 
		font-weight: 700;
		
	}
	
	ul.curationTags_sub {
	
		margin-left: -50px;
		list-style: none;
	}
	
    ul.curationTags_sub > li.curation_sub_wrap {
    
    	float: left;
    	margin: 0 10px 16px 0;
    	height: 38px;
    }
    
    ul.curationTags_sub > li.curation_sub_wrap > button {
    
    	display: inline-block;
    	padding: 0 15px;
    	height: 35px;
    	font-size: 15px;
    	font-weight: 500;
    	color: #171717;
    	border: 1px solid transparent;
    	border-radius: 21px;
    	background: #f2f4f7;
    	line-height: 1em;
    }
    
    
    
</style>



</head>



<body>
	
	<div class="field_all">
		<div class="field_mid">
			<div class="field_mainfrm">
				<div class="field_title">
					<div class="field_wanted">
						<div class="field_title_name">
							<div class="Wrapper_logo" style="display: flex; justify-content: center; align-items: center;"><svg width="50" height="20" viewBox="0 0 79 32"><path fill="#24e0a6" d="M27.755 5.155A15.953 15.953 0 0015.992 0C7.152 0-.012 7.164-.012 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0031.996 16c0-4.183-1.606-7.992-4.241-10.845z"></path><path fill="#438bff" d="M51.286 5.155A15.953 15.953 0 0039.523 0c-8.84 0-16.004 7.164-16.004 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0055.527 16c0-4.179-1.61-7.992-4.241-10.845z"></path><path fill="#2c5bf2" d="M74.812 5.155A15.953 15.953 0 0063.049 0c-8.84 0-16.004 7.164-16.004 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0079.053 16c0-4.183-1.61-7.992-4.241-10.845z"></path><path fill="#24e0bc" d="M27.755 5.155A15.953 15.953 0 0015.992 0C7.152 0-.012 7.164-.012 16.004s7.164 16.004 16.004 16.004c4.653 0 8.84-1.985 11.763-5.155A15.953 15.953 0 0123.514 16c0-4.183 1.61-7.992 4.241-10.845z"></path><path fill="#438bff" d="M51.282 5.155C48.359 1.985 44.171 0 39.519 0s-8.84 1.985-11.763 5.155a15.953 15.953 0 014.241 10.853c0 4.187-1.61 8-4.241 10.853 2.923 3.17 7.111 5.155 11.763 5.155s8.84-1.985 11.763-5.155c-2.631-2.853-4.241-6.662-4.241-10.853s1.61-8 4.241-10.853z"></path><path fill="#3a68f9" d="M27.755 5.155a15.953 15.953 0 00-4.241 10.853c0 4.187 1.61 8 4.241 10.853 2.631-2.853 4.241-6.662 4.241-10.853s-1.606-8-4.241-10.853z"></path><path fill="#2c5bf2" d="M63.049 0c-4.653 0-8.84 1.985-11.763 5.155a15.953 15.953 0 014.241 10.853c0 4.187-1.61 8-4.241 10.853a15.953 15.953 0 0011.763 5.155c8.84 0 16.004-7.164 16.004-16.004C79.053 7.164 71.885 0 63.049 0z"></path><path fill="#0049db" d="M51.282 5.155a15.953 15.953 0 00-4.241 10.853c0 4.187 1.61 8 4.241 10.853a15.953 15.953 0 004.241-10.853c.004-4.191-1.606-8-4.241-10.853z"></path></svg><svg width="87.5" height="20" viewBox="0 0 140 32"><path fill="currentColor" d="M89.8 2.2l-5.6 2.4v4.8h-3.8v5.2h3.8v10.2c0 4.2 2.6 7 6.6 7 1.6 0 2.6-.4 3.2-.6V26c-.2 0-1 .2-1.8.2-1.6 0-2.4-.6-2.4-2.6v-8.8H94V9.6h-4.2V2.2zM28.6 9.6l-4 14-4.6-14h-5.6l-4.6 14L6 9.6H0l6.8 21.8h6l4.4-14.6 4.6 14.6h6l6.8-21.8zM134.4 2.2v8.6c-1.4-1-3-1.6-4.8-1.8h-.4-1.6c-5 .4-8.2 4.2-9.2 9-.2.8-.2 1.4-.2 2.2V22c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.4V0l-5.4 2.2zm-5.2 24.4c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM116.2 18c-.8-5.2-4.6-9-10-9s-9.2 3.8-10 9c-.2.8-.2 1.6-.2 2.6v1.6c.6 5.6 4.4 10 10.2 10 4.6 0 8-2.8 9.4-6.8l-5-1.2c-.8 1.8-2.4 3.2-4.4 3.2-2.8 0-4.6-2.2-5-5.2h15.2v-1.6c0-1 0-1.8-.2-2.6zm-14.8 0c.8-2.2 2.4-3.6 4.8-3.6s4 1.6 4.8 3.6h-9.6zM50.6 11c-1.4-1-3.2-1.8-5.2-1.8H44.8h-.6c-5.2.4-8.6 4-9.4 9-.2.8-.2 1.4-.2 2.2v1.8c.6 5.6 4.4 10 10.2 10 2.4 0 4.4-.6 6-1.8v1.4h5.6V9.6h-5.6V11zm-5.2 15.6c-3 0-5.6-2.4-5.6-6.2 0-4 2.6-6.2 5.6-6.2s5.2 2.2 5.2 6c0 4.2-2.2 6.4-5.2 6.4zM71.2 9c-2.2 0-4.6 1-6 3.2V9.6h-5.6v21.8h5.6V18.8c0-2.6 1.4-4.6 4-4.6 2.8 0 3.8 2 3.8 4.4v12.8h5.6V17.6c.2-4.8-2.2-8.6-7.4-8.6z"></path></svg></div>
						</div>
						<div class="field_start">
							<div class="field_choice">
								<ul class="step_container">
									<li class="completed">
										<em>
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M1 5L5 9L13 1" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>
										</em>
									</li>
									<li class="completed">
										<em>
											<svg width="14" height="10" viewBox="0 0 14 10" fill="none" xmlns="https://www.w3.org/2000/svg"><path d="M1 5L5 9L13 1" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>
										</em>
									</li>
									<li class="active">
										<em>
											<span>3</span>
										</em>
										<span>관심태그 설정</span>
									</li>
								</ul>
							</div>
						</div>
						<div class="field_comment">
							<div class="field_inner_comment">
								<p style="line-height: 1.53; ">
									OOO님의 커리어를 위한
									<br>
									콘텐츠를 추천해 드릴게요!
								</p>
							</div>
						</div>
						<div class="wrapper_select">
							<ul>
								<li class="curation_tag">
									<div class="curation_tag_title">
										<img src="https://static.wanted.co.kr/images/tags/0a15b242.png" alt="직장인 공감">
										<span class="tag_title_name">직장인 공감</span>
									</div>
									<ul class="curationTags_sub">
										<li class="curation_sub_wrap">
											<button type="button">커리어고민</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">취업/이직</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">회사생활</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">인간관계</button>
										</li>
									</ul>
								</li>
								<li class="curation_tag">
									<div class="curation_tag_title">
										<img src="https://static.wanted.co.kr/images/tags/2011f1b4.png" alt="관심분야">
										<span class="tag_title_name">관심분야</span>
									</div>
									<ul class="curationTags_sub">
										<li class="curation_sub_wrap">
											<button type="button">개발</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">데이터</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">HR</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">서비스기획</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">마케팅</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">디자인</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">경영/전략</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">CS/CX</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">MD</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">콘텐츠 제작</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">QA</button>
										</li>
									</ul>
								</li>
								<li class="curation_tag">
									<div class="curation_tag_title">
										<img src="https://static.wanted.co.kr/images/tags/49bae778.png" alt="트렌드/인사이트">
										<span class="tag_title_name">트렌드/인사이트</span>
									</div>
									<ul class="curationTags_sub">
										<li class="curation_sub_wrap">
											<button type="button">IT/기술</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">브랜딩</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">라이프스타일</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">UX/UI</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">노무</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">리더십</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">조직문화</button>
										</li>
										<li class="curation_sub_wrap">
											<button type="button">한입 콘텐츠</button>
										</li>
									</ul>
								</li>
							</ul>
						</div>
						<div class="button_wrapper" style="margin-top: -25px;">
							<button type="submit" id="start_wanted">
								<span>원티드 시작하기</span>
							</button>
						</div>
					</div >
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>