<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

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
	
	.profile_img > img {
		border-radius: 50%;
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
	
	.btn_submit:disabled {
  		background-color: #f2f4f7;
  		color: #ccc;
  		cursor: inherit;
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
    	border: solid 1px #e1e2e3;
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
	
	.error-msg{
		display:none;
		color:red;
	}
	
	.imginput{
		display: flex;
		justify-content: center;
		align-items: center;
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
		
	    $('input#inputPwd1').on('input',pwdCheck);
	    $('input#inputPwd2').on('input',pwdChangeCheck);
		$('input#inputPwd3').on('input',pwdSame);
		
		$('input.pwInput').on('input', checkInputValues);

		checkInputValues();
		
	});
	
	function pwdCheck(e){
		
		const target_val = $(e.target).val();
				
		if(target_val.length == 0){
			$('p#error_pwd1').hide();
			$('p#error_pwd1').text("");
		}
		else{
			$.ajax({
				url: "pwdCheck",
				data: {"inputPwd": $(e.target).val(), "userid": "leess"},
				type: "get",
				success: function(result) {
					
					if (result == "success") {
						$('p#error_pwd1').hide();
						$('p#error_pwd1').text("");
		            } else {
		            	$('p#error_pwd1').show();
		            	$('p#error_pwd1').text("비밀번호가 일치하지 않습니다.");
		            }
					
				},
		        error: function(request, status, error) {
		            alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
		        }
			});
			
		}
		
		
		
	}
	
	function pwdChangeCheck(e){
		
		$("input#inputPwd3").val('');
		
		const regExp= /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{6,16}$/;
		// console.log($('input#inputPwd1').val().length);
		// console.log($(e.target).val().length);
		const target_val = $(e.target).val();
		const bool = regExp.test(target_val);
		
		if(target_val.length == 0 ){
			$('p#error_pwd2').hide();
			$('p#error_pwd2').text("");
		}		
		else if ( target_val.length < 6 || target_val.length > 16  ){
			// $(e.target).parent().find("span#error_pwd").text("6 ~ 16자 영문,숫자,특수문자 1개 이상씩 혼용 필수");
			$('p#error_pwd2').show();
			$('p#error_pwd2').text("6 ~ 16자 사이이어야 합니다.");
		}
		else if ( !bool ){ // 정규표현식 조건에 맞지 않는 경우
			$('p#error_pwd2').show();
			$('p#error_pwd2').text("6 ~ 16자 영문,숫자,특수문자 1개 이상씩 혼용 필수");
		}
		else{
			$('p#error_pwd2').hide();
			$('p#error_pwd2').text("");
		}
	
	} // END OF FUNCTION PWDCHANGECHECK()
	
	function pwdSame(e){
		
		const pwd1 = $('input#inputPwd2').val(); // 비밀번호
		const pwd2 = $(this).val(); // 비밀번호 확인 
		
		if(pwd2.length == 0){
			$('p#error_pwd_check').hide();
			$('p#error_pwd_check').text("");
		}
		else{			
			if ( pwd1 == pwd2 ){
				$('p#error_pwd_check').hide();
				$('p#error_pwd_check').text("");
			}
			else{
				$('p#error_pwd_check').show();
				$('p#error_pwd_check').text("비밀번호가 서로 일치하지 않습니다.");
			}			
		}
			
		
		
	}// END OF FUNCTION PWDSAME()
	
	function checkInputValues() {
	  const inputPwd1 = $('input#inputPwd1').val();
	  const inputPwd2 = $('input#inputPwd2').val();
	  const inputPwd3 = $('input#inputPwd3').val();
	  const btnSubmit = $('button#pwdsubmit');

	  if (inputPwd1 === '' || inputPwd2 === '' || inputPwd3 === '') {
		btnSubmit.css("bakcground-color","gray")  
	    btnSubmit.prop('disabled', true); // 버튼 비활성화
	  } else {
	    btnSubmit.prop('disabled', false); // 버튼 활성화
	  }
	}// end of function checkInputValues()
	
	function nameUpdate(){
		var newName = $('#name').val();
					
		$.ajax({
			url:"nameUpdate",
			data:{"name": newName, "userid": "leess"},
			type:"get",
			success: function(result) {
				
				if (result == "success") {
	                alert("성공적으로 변경되었습니다.");
	                location.reload();
	            } else {
	                alert("실패했습니다.");
	            }
	        },
	        error: function(request, status, error) {
	            alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
	        }
		});
				
	}// end of function nameUpdate()
	
	
	
	function nickUpdate(){
		
	var newNickName = $('#nickname').val();
	
	if(newNickName.length > 10 ){
		alert("닉네임은 10글자 이내로만 만들수있습니다.")
	}else{
		$.ajax({
			url:"nickUpdate",
			data:{"nickname": newNickName, "userid": "leess"},
			type:"get",
			success: function(result) {
				
				if (result == "success") {
	                alert("성공적으로 변경되었습니다.");
	                location.reload();
	            } else {
	                alert("실패했습니다.");
	            }
	        },
	        error: function(request, status, error) {
	            alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
	        }
		});
	}
	
		
	}// end of function nickUpdate()
	
	function phoneUpdate(){
		
		alert("gg");
	}

	function passwdUpdate(){
				
		if($('p#error_pwd1').text() == "" && $('p#error_pwd2').text() == "" && $('p#error_pwd_check').text() == ""){
			
			var newPasswd = $('#inputPwd3').val();
			
			$.ajax({
				url:"passwdUpdate",
				data:{"pwd": newPasswd, "userid": "leess"},
				type:"get",
				success: function(result) {
					
					if (result == "success") {
		                alert("성공적으로 변경되었습니다.");
		                location.reload();
		            } else {
		                alert("실패했습니다.");
		            }
		        },
		        error: function(request, status, error) {
		            alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
		        }
			});
			
		}else{
			alert("양식에 맞춰서 입력해주세요!");
		}
		
	}//end of fucntion passwdUpdate
	
	function previewImage(event) {
				
	    var input = event.target;
	    
	    console.log(input);
	    
	    if (input.files && input.files[0]) {
	    	
	    	$('#profile_imageModal').modal('show');
	    	
	        var reader = new FileReader();
	        
	        reader.onload = function (e) {
	        	
	            var imgElement = document.getElementById("preview");
	            
	            imgElement.setAttribute("src", e.target.result);
	            
	        };
	        
	        reader.readAsDataURL(input.files[0]);
	    }
	}// end of function previewImage
	
	function profile_imageUpdate() {
	    const frm = document.profile_imageFrm;
	    var formData = new FormData(frm);

	    $.ajax({
	        url: "profileImageUpdate",
	        type: "POST",
	        data: formData,
	        processData: false,
	        contentType: false,
	        success: function(result) {
	            if (result === "success") {
	                alert("프로필 사진이 성공적으로 업데이트되었습니다.");
	                location.reload();
	            } else {
	                alert("프로필 사진 업데이트 실패");
	            }
	        },
	        error: function(request, status, error) {
	            alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
	        }
	    });
	}// end of function profile_imageUpdate
	
	
</script>

<body>
	<div class="miMain_frame">
		<div class="miMain_content">
			<c:forEach  var="map" items="${requestScope.memberinfo}">
				<section class="scnum1">
					<form name="profile_imageFrm" enctype="multipart/form-data">
					<div class="profile_img">
						<img width="80" height="80" src="/images/profile_image/${map.profile_image}">
						<label class="pencil_icon">						
							<input type="file" name="attach" id="attach" style="display:none;" onchange="previewImage(event)"></input>
							<input type="hidden" name="userid" value="${map.userid}" readonly></input>						
						<i class="fa-solid fa-pencil" style="color: #ffffff;"></i></label>
					</div>
					</form>
					<p class="welcom">${map.name}님, 환영해요.</p>
				</section>
				<section class="scnum2">
					<p class="sctitle">계정 관리</p>
					<p class="scsub">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
					<ul class="memin_ul">
						<li class="memin_fli">
							<p class="p_detail">이메일</p><p class="p_email">${map.userid}</p>
						</li>
						<li class="memin_li" data-toggle="modal" data-target="#nameModal">
							<p class="p_detail">이름</p><p class="p_item">${map.name}</p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
						</li>
						<li class="memin_li" data-toggle="modal" data-target="#nickModal">
							<p class="p_detail">닉네임</p><p class="p_item">${map.nickname}</p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
						</li>
						<li class="memin_li" data-toggle="modal" data-target="#phoneModal">
							<p class="p_detail">휴대폰 번호</p><p class="p_item">${map.mobile}</p><span><i class="fa-solid fa-chevron-right" style="color: #888;"></i></span>
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
			</c:forEach>
		</div>
	</div>
	
	<!-- NameModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
	<c:forEach  var="modalMap" items="${requestScope.memberinfo}">
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
		        	<div class="inputArea">
		        		<input type="text" placeholder="이름을 입력해주세요." name="name" id="name" class="modaltext" value="${modalMap.name}">
		        	</div>	
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" id="nameUpdate" onclick="nameUpdate()">저장</button>
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
		        	<div class="inputArea">
		        		<input type="text" placeholder="별명을 입력해주세요." name="nickname" id="nickname" class="modaltext" value="${modalMap.nickname}">
		        	</div>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" onclick="nickUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- PhoneModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
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
		        			<input type="text" placeholder="(예시) 01013245768" name="mobile" data-testid="Input_mobile" class="phoneInput" value="${modalMap.mobile}" readonly />
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
		
		<!-- PasswdModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
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
		        	<div class="inputArea">
		        		<div class="pwTitleFrame">
		        			<label class="pwTitle">현재 비밀번호</label>
		        		</div>
		        			<input type="password" placeholder="비밀번호를 입력해주세요." name="oldPassword" class="pwInput" id="inputPwd1" value="">
		        			<p id="error_pwd1" class="error-msg"></p>
		        		<div class="pwTitleFrame">
		        			<label class="pwTitle">새 비밀번호</label>
		        		</div>
		        		<input type="password" placeholder="새 비밀번호를 입력해주세요." name="password" class="pwInput" id="inputPwd2" value="">
		        		<p id="error_pwd2" class="error-msg"></p>
		        		<input type="password" placeholder="새 비밀번호를 다시 한번 입력해주세요." name="passwordConfirm" class="pwInput" id="inputPwd3" value="">
		        		<p id="error_pwd_check" class="error-msg"></p>
		        		<p class="pwText">영문 대소문자, 숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로 입력해주세요.</p>
		        	</div>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel my_close" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" id="pwdsubmit" onclick="passwdUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- profile_imageModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
		<div class="modal fade" id="profile_imageModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <!-- Modal header -->
		      <div class="modal-header">
		        <h5 class="modal-title">프로필 사진</h5>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      
		      <!-- Modal body -->
		      <div class="modal-body">		        
	        	<div class="inputArea">
	        		<div class="imginput">
	        			<img id="preview" width="200" height="200" src="" alt="미리보기">
	        		</div>	        		
	        	</div>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" onclick="profile_imageUpdate()">저장</button>
		      </div>
		    </div>
		  </div>
		</div>
	</c:forEach>	
</body>