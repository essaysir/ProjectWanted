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
<title>로그인</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="/bootstrap-4.6.0-dist/css/bootstrap.min.css" > 

<!-- Optional JavaScript -->
<script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js" ></script>

<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<!-- Font Awesome 6 Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">    

<!-- 구글 폰트 import -->
<link rel="preconnect" href="https://fonts.googleapis.com">

<!-- JQueryUI CSS 및 JS --> 
<link rel="stylesheet" type="text/css" href="/jquery-ui-1.13.1.custom/jquery-ui.min.css"/>
<script type="text/javascript" src="/jquery-ui-1.13.1.custom/jquery-ui.min.js"></script>

<style>

    
	div#login_all { /* 전체배경 */
	
		background: #f7f7f7;
		padding: 0;
        margin: 0;
        width: 100vw;
        height: 100vh;
	}
	
	div#login_mid { /* 두번째 가로 전체배경 */
		
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
	
	div#login_mainfrm { /* 로그인폼 전체 틀 */
	
		background-color: #fff;
		border: solid 1px #e1e2e3;
		border-radius: 6px;
		width: 28%;
	    height: 97%;
	    margin: 0 auto;
	    display: flex;
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	}
	
	div#login_title {
		
		width: 88.0%;
	    height: 93%;
		display: block;
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);	
	}
	
	div#title_name > p {
	
		color: black;
		text-align: center;
		width: 100%;
	    height: 15%;
		
	}
	
	div#login_title > form#login_input {
	
		display: block;
		margin-top: 20px;
		
	}
	
	form#login_input > p#subtitle_1 {
	
		color: black;
		font-size: 22px;
		font-weight: bold;
		text-align: center;
	}
	
	form#login_input > p#subtitle_2 {
	
		font-size: 13px;
		color: #888888;
		text-align: center;
	}

	div#login_wanted > div#title_name {
	
		display: block;
	    margin: 0 auto;
    	margin-bottom: 30px;
    	padding-top: 56px;
		
	}
	
	
	div#title_name > p {

		font-size: 25px;
		font-weight: bold;
		justify-content: inherit;
		align-items: inherit;
	}
	
	div#email_box {
	
		padding-top: 18px;
	}
	
	div#email_box > label {
		
		font-weight: bold;
		font-size: 13px;
		color: #888;
	}
	
	input#email_input:not(:focus) { /* 커서 올라가기 전 */
	
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
	input#email_input::placeholder { /* 커서 올라가기 전 placeholder 색상 변경 */
		color: #e1e2e3;
	}
	
	input#email_input:focus { /* 커서 올라간 후 */
	
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
	
	div#login_method {
		text-align: center;	
	}
	
	div#login_method button { /* 소셜네트워크 로그인 아이콘 버튼 */
	
		background-color: transparent;
		border: none;
		margin-top: 8px;
	    margin-bottom: 0;
	    margin-left: 2px;
	    margin-right: 2px;
	}
	
	div#login_method > button > p { /* 소셜네트워크 로그인 아이콘 버튼 이름 */
	
		color: #888888;
		font-size: 11px;
		margin-top: 8px;
	    margin-bottom: 0;
	    margin-left: 5px;
	    margin-right: 5px;
	}
	
	button#forgot_id { /* 계정을 잊으셨나요? 버튼 */
	
		border: none;
		width: 100%;
		cursor: pointer;
		background-color: transparent;
		margin-top: 22px;
	
	}
	
	button#forgot_id p {
	
		color: #767676;
		font-weight: bold;
		font-size: 13px;
		margin-bottom: 0;
		display: inline-flex;
		justify-content: center;
		align-items: center;
	}
	span#warning-email{
		color: #fe415c ;
		text-align: left ; 
		font-size: 13px; 
		font-weight: 400 ; 
		margin-top: 0px; 
	}
	input.warning-email:focus{
		border: 1px solid #fe415c !important ;
	 
	
	}
	button.possibeEnter{
		background-color: #36f  !important ;
		
	}
	
</style>
<script type="text/javascript">
		$(document).ready(function(){
			setdocument() ; //  document 초기 로딩시 필요한 것들 
			
			
			
		}); // END OF $(DOCUMENT).READY(FUNCTION()
		function setdocument(){
			$("span#warning-email").hide();
			$("input#email_input").on('input' , checkEmail );
			$("input#email_input").on('keyup', function(e){
				if ( $(e.keyCode) == 13 ){
					checkUserid() ;
				}
			}); 
			$("button#go_email").click( checkUserid ); 
		}// end of function setdocument
		
		function checkEmail(){
			const regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			const bool = regExp.test( $(this).val() );
			
			if ( !bool ){
				$("span#warning-email").show();
				$('input#email_input').addClass('warning-email');
				$("button#go_email").removeClass("possibeEnter");
				$("span#span_email").css('color' , ' ' )  ;
				$("button#go_email").prop("disabled", true);

			}
			else{
				$("span#warning-email").hide();
				$('input#email_input').removeClass('warning-email');
				$("button#go_email").addClass("possibeEnter");
				$("button#go_email").prop("disabled", false);
				$("span#span_email").css('color' , '#fff' )  ;
			}
			
			
		} // end of function checkEmail()
		
		function checkUserid(){
			
			 $.ajax({
				url: "/wanted/login/checkUserid",
				type: "post",
				async:"false", 
				data: {"userid": $('input#email_input').val()} ,
				success: function (result) {
					$("body").empty();
					$("body").html(result);
				},
				error: function (request, status, error) {
					alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			}); 

			
		}// end of function checkUserid

</script>


</head>



<body>
	
	<!-- 화면전체 틀 시작 -->
	<div id="login_all">
		<!-- 두 번째 틀(가로전체) -->
		<div id="login_mid">
			<!-- 세 번째 중간 틀(로그인폼 전체틀) -->
			<div id="login_mainfrm">
				<!-- 네 번째 중간 틀(로그인폼 안에 두 번쨰 틀) -->
				<div id="login_title">
					<!-- 다섯 번째 중간 틀(wanted 제목이 있는 틀) -->
					<div id="login_wanted">
						<div id="title_name">
							<p>wanted</p>
						</div>
					</div >		
					<!-- 다섯 번째 중간 틀 끝(wanted 제목이 있는 틀) -->
					<form  name="test" id="login_input">
						<p id="subtitle_1">하나의 계정으로<br>더욱 편리하게</p>
						<p id="subtitle_2">원티드가 제공하는 서비스를<br>하나의 계정으로 모두 이용할 수 있습니다.</p>
						<div>
							<div id="email_box">
								<label>이메일</label>
							</div>
							<input type="email" id="email_input" placeholder="이메일을 입력해주세요."  style="margin-bottom: 0px;"/>
							<span id="warning-email">올바른 이메일을 입력해주세요!</span>
						</div>
						<button type="button" id="go_email" >
							<span id="span_email">이메일로 계속하기</span>
						</button>
						<p style="color: #939393; font-size: 11px; font-weight: bold; text-align: center; margin: 5px 0 15px 0;">또는</p>
						<div id="login_method">
							<button type="button" id="login_apple">
								<span><i class="fa-brands fa-apple fa-2xl" style="color: #000000;"></i></span>
								<p>Apple</p>
							</button>
							<button type="button" id="login_facebook">
								<span><i class="fa-brands fa-facebook fa-2xl" style="color: #1d4486;"></i></span>
								<p>Facebook</p>
							</button>
							<button type="button" id="login_google">
								<span><i class="fa-brands fa-google fa-2xl" style="color: #202427;"></i></span>
								<p>Google</p>
								</button>
							<button type="button" id="login_kakao">
								<span><i class="fa-sharp fa-solid fa-comment fa-2xl" style="color: #4d2d00;"></i></span>
								<p>Kakao</p>
							</button>
						</div>
						<button type="button" id="forgot_id">
							<p>계정을 잊으셨나요?  ></p>
						</button>
					</form>
				</div>
				<!-- 네 번째 중간 틀 끝(로그인폼 안에 두 번쨰 틀) -->
			</div>
			<!-- 세 번째 중간 틀 끝(로그인폼 전체틀) -->
		</div>
		<!-- 두 번째 틀(가로전체) 끝 -->
	</div>
	<!-- 화면전체 틀 끝 -->
	
</body>
</html>