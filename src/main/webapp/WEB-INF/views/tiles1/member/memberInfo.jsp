<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
	
	.miMain_frame{
		border: solid 1px black;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.miMain_content{
		width: 630px;
		border: solid 1px red;
		padding: 0 15px;
	}
	
	.scnum1{
		margin: 60px 0;
		width: 100%;
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	flex-direction: column;
    	-webkit-box-pack: center;
    	-webkit-box-align: center;
    	
	}
	
	.scnum2{
		width: 600px;
		height: 350px;
		margin-bottom: 30px;
		padding: 0 20px;
		border: solid 1px #999;
		border-radius: 8px;
	}
	
	.scnum3{
		width: 600px;
		height: 245px;
		margin-bottom: 30px;
		padding: 0 20px;
		border: solid 1px #999;
		border-radius: 8px;
	}
	
	.scnum4{
		width: 600px;
		height: 280px;
		margin-bottom: 30px;
		padding: 0 20px;
		border: solid 1px #999;
		border-radius: 8px;
	}
	
	.sctitle{
		font-size: 22px;
		text-align: left;
		margin: 22px 0;
		font-weight: bold;
	}
	
	.scsub{
		font-size: 16px;
		text-align: left;
		margin: 16px 0;
		color: #999;
	}
	
	.profile_img{
		border-radius: 50%;
    	border: 1px solid #e1e2e3;
    	background-color: #fff;
    	position: relative;
    	width: 80px;
    	height: 80px;
	}
	
	.pencil_icon{
		margin-top:15px;
		display: flex;
    	-webkit-box-pack: center;
    	justify-content: center;
    	-webkit-box-align: center;
    	align-items: center;
    	position: absolute;
    	cursor: pointer;
    	right: -7px;
    	bottom: -7px;
    	width: 32px;
    	height: 32px;
    	border-radius: 50%;
    	border: none;
    	background: #36f;
    	color: #fff;
	}
	
	.welcom{
		color: black;
	    font-weight: 400;
	    text-align: center;
	    letter-spacing: -0.0236em;
	    font-size: 28px;
	    line-height: 38px;
	    margin-top: 15px;
	    margin-bottom: 0px;
	    width: 240px;		
	}
	
	.memin_ul {
		padding: 0px;
    	margin-top: 15px;
    	margin-bottom: 15px;
	}
	
	.memin_fli {
		display: flex;
    	-webkit-box-align: center;
    	align-items: center;
    	cursor: inherit;
	}
	
	.memin_li:not(:first-child) {
		 border-top: 1px solid #999;
	}
	
	.memin_li {
		display: flex;
    	-webkit-box-align: center;
    	align-items: center;
    	cursor: pointer;
	}
	
	.p_detail {
		color: black;
	    font-weight: 500;
	    text-align: left;
	    letter-spacing: 0.0056em;
	    font-size: 16px;
	    line-height: 24px;
	    min-width: 120px;
	    margin-right: 15px;
	    margin : 16px 15px 16px 0px;
	}
	
	.p_email{
		color: black;
    	font-weight: 400;
    	text-align: left;
    	letter-spacing: 0.0056em;
    	font-size: 16px;
    	line-height: 24px;
    	flex: 1 1 0%;
    	margin-right: 10px;
    	word-break: break-all;
    	margin : 16px 10px 16px 0px;
	}
	
	.p_item{
		color: #888;
    	font-weight: 400;
    	text-align: left;
    	letter-spacing: 0.0056em;
    	font-size: 16px;
    	line-height: 24px;
    	flex: 1 1 0%;
    	margin-right: 10px;
    	word-break: break-all;
    	margin : 16px 10px 16px 0px;
	}
	
	.modal-content{
		width: 100%;
    	max-width: 400px;
    	min-height: 260px;
    	border-radius: 8px;
	}
	
	.modal-header{
		border-bottom: 0px;
	}
	
	.modal-body{
		padding-top: 8px;
		padding-bottom: 0px;
	}
	
	.inputArea{
		margin: 30px 0px;
	}
	
	.modal-footer{
		border-top: 0px;
		padding-top: 0px;
	}
	
	.modal-title {
		width: 445px;
    	text-align: center;
    	padding-left: 50px;
    	color: black;
    	font-weight: 600;
    	letter-spacing: -0.002em;
    	font-size: 18px;
    	line-height: 26px;
	}
	
	.modaltext {
		
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    padding: 0px 12px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    color: #333;
	    border-radius: 5px;
	    font-size: 16px;
	    font-weight: 400;
	    margin-bottom: 8px;
		
	}
	
	.btn_cancel{
		height: 50px;
    	min-height: 50px;
    	border-radius: 25px;
    	font-size: 16px;
    	margin-bottom: 10px;
    	cursor: pointer;
    	background-color: #fff;
    	border: 1px solid #e1e2e3;
    	width: auto;
    	padding: 0px 32px;
    	margin-left: 8px;
    	color: #36f;
	}
	
	
	
	.btn_submit{
		height: 50px;
    	min-height: 50px;
   	 	border-radius: 25px;
		font-size: 16px;
		margin-bottom: 10px;
		cursor: pointer;
		background-color: #36f;
		border: none;
    	width: auto;
    	padding: 0px 32px;
		margin-left: 8px;
		color: #fff;
	}
	
	.changePhone{
		height: 50px;
    	min-height: 50px;
    	font-size: 16px;
    	margin-bottom: 10px;
    	cursor: pointer;
    	background-color: #fff;
    	margin-left: 10px;
    	padding: 0px 15px;
    	width: auto;
    	flex: 0 0 auto;
    	border-radius: 5px;
    	border: #e1e2e3;
	}
	
	.phoneFrame{
		display: flex;
    	flex-direction: row;
    	position: relative;
	}
	
	.phoneInput,
	.pwInput{
		width: 100%;
    	height: 50px;
    	min-height: 50px;
    	padding: 0px 12px;
    	outline: none;
    	border: 1px solid #e1e2e3;
    	border-radius: 5px;
    	font-size: 16px;
    	font-weight: 400;
    	margin-bottom: 8px;
	}
	
	.changePhonetext{
		color: #36f;
	}
	
	.pwTitleFrame{
		font-weight: 600;
		color: #888;
		margin: 17px 0px 7px;
	}
	
	.pwText{
		color: #888;
		font-weight: 400;
    	text-align: left;
    	letter-spacing: 0.0192em;
    	font-size: 13px;
    	line-height: 18px;
    	margin-top: 0px;
	}
	
	
	
</style>

<script type="text/javascript">
	
	$(document).ready(function() {
		
		// 모달 창에서 입력된 값 초기화 시키기 //
	    $("button.my_close").on("click", function(){
	  	  const modal_frmArr = document.querySelectorAll("form.passwdfrm");
	  	  for(let i=0; i<modal_frmArr.length; i++) {
	  		  modal_frmArr[i].reset();
	  	  }
	    });
		
	});
	
	
	
</script>

<body>
	<div class="miMain_frame">
		<div class="miMain_content">
			<section class="scnum1">
				<div class="profile_img">
					<img width="80" height="80" src="https://static.wanted.co.kr/oneid-user/profile_default.png">
					<label class="pencil_icon"><input type="file" name="attach" id="attach" style="display:none;"/>
					<i class="fa-solid fa-pencil" style="color: #ffffff;"></i></label>
				</div>
				<p class="welcom">이순신님, 환영해요.</p>
			</section>
			<section class="scnum2">
				<p class="sctitle">계정 관리</p>
				<p class="scsub">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
				<ul class="memin_ul">
					<li class="memin_fli">
						<p class="p_detail">이메일</p><p class="p_email">leess@gmail.com</p>
					</li>
					<li class="memin_li" data-toggle="modal" data-target="#nameModal">
						<p class="p_detail">이름</p><p class="p_item">이순신</p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
					</li>
					<li class="memin_li" data-toggle="modal" data-target="#nickModal">
						<p class="p_detail">닉네임</p><p class="p_item">필사즉생, 필생즉사</p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
					</li>
					<li class="memin_li" data-toggle="modal" data-target="#phoneModal">
						<p class="p_detail">휴대폰 번호</p><p class="p_item">010-5555-3333</p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
					</li>
				</ul>
			</section>
			<section class="scnum3">
				<p class="sctitle">개인 정보 보호</p>
				<p class="scsub">내 계정을 안전하게 보호하기 위한 정보를 관리할 수 있습니다.</p>
				<ul class="memin_ul">
					<li class="memin_li" data-toggle="modal" data-target="#passwdModal">
						<p class="p_detail">비밀번호 변경</p><p class="p_item"></p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
					</li>
					<li class="memin_li">
						<p class="p_detail">회원탈퇴</p><p class="p_item"></p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
					</li>
				</ul>
			</section>
			<section class="scnum4">
			</section>
		</div>
	</div>
	<!-- NameModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
		<div class="modal fade" id="nameModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <!-- Modal header -->
		      <div class="modal-header">
		        <h5 class="modal-title">이름</h5>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      
		      <!-- Modal body -->
		      <div class="modal-body">
		        <form class="namefrm">
		        	<div class="inputArea">
		        		<input type="text" placeholder="이름을 입력해주세요." name="username" data-testid="Input_username" class="modaltext" value="이순신">
		        	</div>		        	
		        </form>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" onclick="nameUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>
	<!-- NickModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
		<div class="modal fade" id="nickModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <!-- Modal header -->
		      <div class="modal-header">
		        <h5 class="modal-title">닉네임</h5>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      
		      <!-- Modal body -->
		      <div class="modal-body">
		        <form class="nickfrm">
		        	<div class="inputArea">
		        		<input type="text" placeholder="별명을 입력해주세요." name="username" data-testid="Input_username" class="modaltext" value="필사즉생, 필생즉사">
		        	</div>
		        </form>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" onclick="nickUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- NickModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
		<div class="modal fade" id="phoneModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <!-- Modal header -->
		      <div class="modal-header">
		        <h5 class="modal-title">휴대폰 번호</h5>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      
		      <!-- Modal body -->
		      <div class="modal-body">
		        <form class="phonefrm">
		        	<div class="inputArea">
		        		<div class="phoneFrame">
		        			<input type="text" placeholder="(예시) 01013245768" name="mobile" data-testid="Input_mobile" class="phoneInput" value="010-5555-3333" readonly />
		        			<button type="button" data-testid="Button" class="changePhone"><span class="changePhonetext">번호 변경</span></button>
		        		</div>
		        		<div class="phoneFrame">
		        			<input type="text" placeholder="인증번호를 입력해주세요." name="authCode" data-testid="Input_authCode" readonly class="phoneInput" value="">
		        		</div>
		        	</div>
		        </form>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" onclick="phoneUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- NickModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
		<div class="modal fade" id="passwdModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <!-- Modal header -->
		      <div class="modal-header">
		        <h5 class="modal-title">비밀번호 변경</h5>
		        <button type="button" class="close my_close" data-dismiss="modal">&times;</button>
		      </div>
		      
		      <!-- Modal body -->
		      <div class="modal-body">
		        <form class="passwdfrm">
		        	<div class="inputArea">
		        		<div class="pwTitleFrame">
		        			<label class="pwTitle">현재 비밀번호</label>
		        		</div>
		        			<input type="password" placeholder="비밀번호를 입력해주세요." name="oldPassword" class="pwInput" value="">
		        		<div class="pwTitleFrame">
		        			<label class="pwTitle">새 비밀번호</label>
		        		</div>
		        		<input type="password" placeholder="새 비밀번호를 입력해주세요." name="password" class="pwInput" value="">
		        		<input type="password" placeholder="새 비밀번호를 다시 한번 입력해주세요." name="passwordConfirm" class="pwInput" value="">
		        		<p class="pwText">영문 대소문자, 숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>
		        	</div>
		        </form>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel my_close" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" onclick="phoneUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>	
</body>