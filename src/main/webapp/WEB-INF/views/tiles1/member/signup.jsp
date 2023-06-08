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
<title>회원가입</title>
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

    
	div#signup_all { /* 전체배경 */
	
		background: #f7f7f7;
		padding: 0;
        margin: 0;
        width: 100vw;
        height: 100vh;
	}
	
	div#signup_sec { /* 두번째 가로 전체배경 */
		
	    width: 100%;
	    height: 90%;
	    margin: 0 auto;
	    display: flex;
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    justify-content: center;
  		align-items: center;
	
	}
	
	div#signup_mainfrm { /* 로그인폼 전체 틀 */
	
		background-color: #fff;
		border: solid 1px #e1e2e3;
		border-radius: 5px;
		width: 35%;
	    height: 130%;
	    margin: 0 auto;
	    display: flex;
		position: absolute;
	    top: 62%;
	    left: 50%;
	    transform: translate(-50%, -50%);
  		flex-direction: column;
	}
	
	div#signup_top {
		
		padding: 0px 20px;
	    height: 64px;
	    flex: 0 0 auto;
	    width: 100%;
	    display: flex;
	}
	
	
	div#title_name {
	
		color: #000;
		font-weight: bold;
		text-align: center;
		display: flex;
	    flex: 1 1 0%;
	    justify-content: center;
	    align-items: center;
	    padding-top: 10px; 
	}
	
	
	div#title_name > p {
		
		font-size: 16px;
		
	}
	
	div#signup_cancle {
	
		min-width: 64px;
	    display: flex;
	    justify-content: flex-start;
	    text-align: center;
	    align-items: center;
	    font-weight: 400;
    }
    
    div#signup_top_right {
    	
    	min-width: 64px;
	    
    }
    
    button#btn_cancle {
	
	    border: none;
	    background: none;
	    cursor: pointer;
	    padding: 8px;
	    margin: -8px;
	}
    
    button#btn_cancle > p {
	   
	    letter-spacing: -0.002em;
	    color: #000;
	    text-align: center;
	    min-width: 64px;
	    display: flex;
	    align-items: center;
	    font-size: 16px;
	    padding-top: 10px;
    }
    
    div#signup_innerFrm {
    
    	display: block;
    
    }
    
    
    input#email_input:not(:focus), input#name_input:not(:focus), input#pwd_input:not(:focus), input#pwd2_input:not(:focus), input#what_input:not(:focus), input#what2_input:not(:focus), input#certification_input:not(:focus){ /* 커서 올라가기 전 */
	
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-radius: 5px;
	    font-size: 14px;
    	font-weight: 400;
	}
	
	input#email_input::placeholder, input#name_input::placeholder, input#pwd_input::placeholder, input#pwd2_input::placeholder, input#what_input::placeholder, input#what2_input::placeholder, input#certification_input::placeholder { /* 커서 올라가기 전 placeholder 색상 변경 */
		color: #e1e2e3;
	}
	
	input#email_input:focus, input#name_input:focus, input#pwd_input:focus, input#pwd2_input:focus, input#what_input:focus, input#what2_input:focus, input#certification_input:focus { /* 커서 올라간 후 */
	
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-color: blue;
	    border-radius: 5px;
	    font-size: 14px;
    	font-weight: 400;
	}

	button#go_email {
	
		text-align: center;
		background-color: #f2f4f7;
		width: 100%;
		height: 50px;
		border: none;
		border-radius: 25px;
		margin: 25px 0 10px 0;
	
	}

	button#go_email > span {
		
		font-weight: bold;
		font-size: 15px;
		color: #cccccc;
	}
	

	
	div#signup_innerFrm2 {
		padding: 20px;
	}
    
    
	
	div#email_box, div#username_box, div#pwd_box, div.certification_box > label {
		font-size: 14px;
		font-weight: 600;
		color: #888888;
	}
	
	div.is_agree_box {
	
		display: flex;
	    flex-direction: row;
	    align-items: center;
	    position: relative;
	    min-height: 25px;
	    width: 100%;
	    margin: 10px 0px 10px;
	}
	
	div.is_agree_check.checked::before { <%-- 체크박스 역할을 해주는 div --%> 
	    content: '\2713' !important; 
	    color: green  !important; 
	    margin-right: 5px !important; 
	}
	
	div.is_agree_all_mini {
	
		width: 18px;
	    height: 18px;
	    font-size: 11px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    border-radius: 3px;
	    border: 1px solid #ececec;
	}
	
	input.is_agree_check {
	
		opacity: 0;
	    width: calc(100% - 90px);
	    height: 100%;
	    position: absolute;
	    cursor: pointer;
	    box-sizing: border-box;
   		padding: 0;
	
	}
	button.certify{
		color: #36f !important; 
		background-color:  #fff !important;
	    font-size: 16px !important ; 
	    font-weight: 600 ; 
	    border: 1px #e1e2e3 solid !important ;
	}
	
    
</style>

<script type="text/javascript">	
		let username_flag = false ;
		$(document).ready(function() {
			$("p#username-warning").hide();		  
			$("p#mobile-warning").hide();		  
			
			$(".is_agree_check").click(function() {
					    $(this).toggleClass("checked");
					  });
					  
					  // checked 클래스 추가
					  $(".is_agree_check").addClass("checked");
						
				  $("button#register").on('click', register );
				  $("input#name_input").on('input', checkName);
				  $("input#pwd_input").on('input', checkPassword);
				  $("input#pwd2_input").on('input', checkPassword);
				  $("input#what_input").on('input',checkMobile);
				  $("button#certification").on('click', SendMessage);	  
				  
		}); // END OF  $(DOCUMENT).READY(FUNCTION() 
		function checkName (){
			const regExp = /^[가-힣]{2,6}$/ ; 
			const bool = regExp.test( $(this).val() );
			
			if ( !bool ){
				username_flag = false ; 
				$("p#username-warning").show();
			}
			else{
				username_flag = true ; 
				$("p#username-warning").hide();
			}
			
		} // end of function checkName
		function SendMessage(){
			$.ajax({
				url: "/send-one",
				type: "post",
				async:"false", 
				data: {"mobile": $('input#what_input').val()} ,
				success: function (result) {
					$("body").empty();
					$("body").html(result);
				},
				error: function (request, status, error) {
					alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
				
				
			});
			
			
		} // END OF FUNCTION SENDMESSAGE
		
		function checkMobile(){
			const regExp = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
			const bool = regExp.test( $(this).val() );
			
			// 버튼 요소 가져오기
			const button = document.getElementById('certification');
			
			if ( !bool){
				$("p#mobile-warning").show();
				$("button#certification").removeClass("certify");
				// 버튼 활성화
				button.disabled = true;

			}
			else{
				$("p#mobile-warning").hide();
				$("button#certification").addClass("certify");
				// 버튼 활성화
				button.disabled = false;
			}
			
			
		}// end of function checkMobile
		function checkPassword(){
			
			
		}// function checkPassword
				
		function register(){
			
			const registerFrm = document.login_input;
			registerFrm.action="/"; 
			registerFrm.method ="post"; 
			registerFrm.submit();
		} // end of function register 		
				
			 
			 
</script>


</head>



<body>
	
	<!-- 화면전체 틀 시작 -->
	<div id="signup_all">
		<!-- 두 번째 틀(가로전체) -->
		<div id="signup_sec">
			<!-- 세 번째 중간 틀(로그인폼 전체틀) -->
			<div id="signup_mainfrm">
				<!-- 네 번째 중간 틀(제목이 있는 틀) -->
				<div id="signup_top">
					<div id="signup_cancle">
						<button type="button" id="btn_cancle">
							<p>취소</p>
						</button>
					</div>
					<div id="title_name">
						<p>회원가입</p>
					</div>
					<div id="signup_top_right">
					</div>
				</div>		
				<!-- 네 번째 중간 틀 끝(제목이 있는 틀) -->
				<div id="signup_innerFrm">
					<form id="login_input" name="login_input">
					<div id="signup_innerFrm2">
						<div id="email_box">
							<label>이메일</label>
							<input type="email" id="email_input" value="${userid}" name="userid" readonly/>
						</div>
						<div id="username_box">
							<label>이름</label>
							<input type="text" id="name_input" placeholder="이름을 입력해주세요." name="username"  />
							<p  id="username-warning" style="color: red; font-weight: 400; text-align: left; font-size: 12px; margin: 0 10px 0 0;">이름은 한글 2글자에서 6글자만 가능합니다.</p>
							
						</div>	
						 <div class="certification_box"><label>휴대폰인증</label></div>
						<div class="certification_box">
							<input type="text" id="what_input" placeholder="(예시)01012345678" style="width: 375px; margin-right: 20px; background-color: #f2f4f7;" />
							<button id="certification" type="button" disabled style="text-align: center ; border: none; border-radius: 10px; background-color: #f2f4f7; width: 120px; height: 50px; font-size: 10px; color: #888888;">인증번호 받기</button>
							<input type="text"  data-mobile id="certification_input" placeholder="인증번호를 입력해주세요." style="background-color: #f2f4f7;" />
							<p  id="mobile-warning" style="color: red; font-weight: 400; text-align: left; font-size: 12px; margin: 0 10px 0 0;">휴대폰 번호는 EX)00012345678 방식으로 입력해주세요</p>
							<button id="fake_certification" type="button" style="text-align: center ; border: none; border-radius: 10px; background-color: #f2f4f7; width: 120px; height: 50px; font-size: 10px; color: #888888;">인증번호 받기</button>
						
						</div> 
						
						<%-- <div class="certification_box"><label>이메일 인증</label></div>
						<div class="certification_box">	
							<input type="text" id="what2_input" value="${userid}" style="width: 375px; margin-right: 20px; background-color: #f2f4f7;" readonly />
							<button type="submit" style="text-align: center ; border: none; border-radius: 10px; background-color: #f2f4f7; width: 90px; height: 50px; font-size: 10px; color: #888888;">인증번호 받기</button>
						</div>
						<div class="certification_check">
							
						</div>
						 --%>
						 
						 <div id="pwd_box">
							<label>비밀번호</label>
							<input type="password" id="pwd_input" placeholder="비밀번호를 입력해주세요." name="pwd"  />
							<input type="password" id="pwd2_input" placeholder="비밀번호를 다시 한번 입력해주세요." name="pwd"  />
							<p style="color: #888888; font-weight: 400; text-align: left; font-size: 12px; margin: 0 10px 0 0;">영문 대소문자, 숫자, 특수문자, 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>
						</div>		
						<div id="is_agree_all_box" class="is_agree_box">
							<div id="is_agree_all_mini" class="is_agree_all_mini"></div>
							<input type="checkbox" id="is_agree_all" class="is_agree_check" />
							<div>
								<span style="display: inline; color: #333; font-weight:600; text-align: left; letter-spacing: 0.0096m; font-size: 15px; line-height: 22px; margin: 0px 0px 0px 7px; ">전체동의</span>
							</div>
						</div>
						<hr style="border-top: none; border-right: none; border-left: none; border-bottom: 1px solid #e1e2e3; border-image: initial; width: 100%;">						
						<div class="is_agree_box">
							<div id="is_agree_mini_first" class="is_agree_all_mini"></div>
							<input type="checkbox" id="is_agree_first" class="is_agree_check" />
							<div>
								<span style="display: inline; color: #888888; text-align: left; letter-spacing: 0.0096m; font-size: 15px; line-height: 22px; margin: 0px 1px 1px 1px; ">만 14세 이상입니다. (필수)</span>
							</div>
						</div>
						<div class="is_agree_box">
							<div id="is_agree_mini_secound" class="is_agree_all_mini"></div>
							<input type="checkbox" id="is_agree_secound" class="is_agree_check" />
							<div>
								<span style="display: inline; color: #888888; text-align: left; letter-spacing: 0.0096m; font-size: 15px; line-height: 22px; margin: 0px 1px 1px 1px; ">원티드 이용약관 동의. (필수)</span>
							</div>
							<a href="https://id.wanted.jobs/terms/ko" style="color: #888888; line-height: 22px; text-align: right; padding-left: 350px;">자세히</a>
						</div>
						<div class="is_agree_box">
							<div id="is_agree_mini_third" class="is_agree_all_mini"></div>
							<input type="checkbox" id="is_agree_third" class="is_agree_check" />
							<div>
								<span style="display: inline; color: #888888; text-align: left; letter-spacing: 0.0096m; font-size: 15px; line-height: 22px; margin: 0px 1px 1px 1px; ">원티드 개인정보 수집 및 이용 동의 (필수)</span>
							</div>
							<a href="https://id.wanted.jobs/privacy/ko" style="color: #888888; line-height: 22px; text-align: right; padding-left: 271.3px;">자세히</a>
						</div>
						<div>
							<button type="button" id="register" disabled style="background-color: #f2f4f7; border: none; cursor: pointer; color: #ccc; width: 100%; height: 50px; min-height: 50px; border-radius: 25px; font-size: 16px; margin-bottom: 10px; margin-top: 30px;">가입하기</button>
						</div>
					</div>
						
					</form>
				</div>
			</div>
			</div>
			<!-- 세 번째 중간 틀 끝(로그인폼 전체틀) -->
		</div>
		<!-- 두 번째 틀(가로전체) 끝 -->
	
</body>
</html>