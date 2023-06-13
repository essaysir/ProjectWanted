<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
    
<style type="text/css">
	.exitOutLine{
		border: solid 1px black;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.exitFrame{
		width: 630px;
		border: solid 1px #e1e2e3;
		border-radius:5px;
		margin-top: 30px;
	}
	
	.exitContent{
		overflow: auto;
    	position: relative;
    	padding: 20px;
	}
	
	.exitItem{
		flex-direction: column;
    	margin-bottom: 45px;
    	margin-top: 30px;
    	
    -webkit-box-pack: center;
    -webkit-box-align: center;
	}
	
	.exitTitle{
		color: black;
	    font-weight: 600;
	    text-align: center;
	    letter-spacing: -0.0195em;
	    font-size: 22px;
	    line-height: 28px;
	    margin: 15px 0 ;
	}
	
	.pSubject{
		color: black;
	    font-weight: 600;
	    text-align: left;
	    letter-spacing: 0.01456em;
	    font-size: 14px;
	    line-height: 20px;
	    margin:30px 0 15px;
	}
	
	.pContent{
	    color: black;
	    font-weight: 400;
	    text-align: left;
	    letter-spacing: 0.0145em;
	    font-size: 14px;
	    line-height: 20px;
	    text-indent: -8px;
	    margin-left: 8px;
	}
	
	.scTitle{
		color: black;
	    font-weight: 600;
	    text-align: left;
	    letter-spacing: -0.002em;
	    font-size: 18px;
	    line-height: 26px;
	    margin: 18px 0;	
	}
	
	.scContent{
		padding: 9px 12px;
    	height: 50px;
    	width: 100%;
    	display: flex;
    	-webkit-align-items: center;
    	-webkit-box-align: center;
    	align-items: center;
    	border-radius: 6px;
    	border: #e1e2e3;
    	margin-bottom: 30px;
    	flex-direction: row;
	}
	
	.scProfile{
		border-radius: 50%;
	    border: #e1e2e3;
	    background-color: #fff;
	    position: relative;
	    width: 32px;
	    height: 32px;
	}
	
	.scProfile > img {
	    border-radius: 50%;
	}
	
	.scUserid{
		color: black;
	    font-weight: 400;
	    text-align: left;
	    letter-spacing: 0.0056em;
	    font-size: 16px;
	    line-height: 24px;
	    margin-top: 0px;
	    margin-bottom: 0px;
	    margin-left: 8px;
	}
	
	.trContent{
		display: flex;
	    -webkit-box-align: center;
	    align-items: center;	
	}
	
	.trImage{
	    display: flex;
	    flex-direction: column;
	    -webkit-box-align: center;
	    align-items: center;
	    min-width: 80px;
	    width: 60px;
	}
	
	.imageArea{
		height: 60px;
	    width: 60px;
	    border-radius: 12px;
	    border: 1px solid #e1e2e3;
	    background-color: #fff;
	    position: relative;
	    overflow: hidden;
	}
	
	.imageArea > img {
	    position: absolute;
	    max-width: 100%;
	    max-height: 100%;
	    top: 50%;
	    right: 50%;
	    transform: translate(50%, -50%);
	}
	
	.wantedName{
	    color: black;
	    font-weight: 600;
	    text-align: left;
	    letter-spacing: 0.0056em;
	    font-size: 16px;
	    line-height: 24px;
	    min-width: 120px;
	    margin: 0px 12px;
	}
	
	.css-19fyzk7{
	    display: flex;
	    flex-direction: row;
	    -webkit-box-align: center;
	    align-items: center;
	    position: relative;
	    min-height: 25px;
	    width: 100%;
	    margin: 10px 0px;
	}
	
	.css-slacj2{
	    width: 18px;
	    height: 18px;
	    font-size: 11px;
	    display: flex;
	    -webkit-box-pack: center;
	    justify-content: center;
	    -webkit-box-align: center;
	    align-items: center;
	    border-radius: 3px;
	    border: #ececec;
	}
		
	.css-1nizjn9{
    	color: #888;
	    font-weight: 400;
	    text-align: left;
	    letter-spacing: 0.0096em;
	    font-size: 15px;
	    line-height: 22px;
	    margin: 0px 0px 0px 7px;
	    word-break: keep-all;
	}
	
	.memberExit{
	    width: 100%;
	    height: 50px;
	    min-height: 50px;
	    border-radius: 25px;
	    font-size: 16px;
	    margin-bottom: 10px;
	    cursor: pointer;
	    background-color: #36f;
	    border: none;
	}
	
	.memberExit:disabled{
	    color: #ccc;
	    background-color: #f2f4f7;
	    border: none;
	    cursor: default;
	}
	
	.memberExit:disabled > .lastSpan{
	    color: #ccc;
	    background-color: #f2f4f7;
	    border: none;
	    cursor: default;
	}
	
	
	.lastSpan{
	    font-weight: 600;
	    text-align: left;
	    letter-spacing: 0.0056em;
	    font-size: 16px;
	    line-height: 24px;
	    color: #fff;
	}
	
	.cancelButton{
	    width: 100%;
	    height: 50px;
	    min-height: 50px;
	    border-radius: 25px;
	    font-size: 16px;
	    margin-bottom: 10px;
	    cursor: pointer;
	    background-color: #fff;
	    border: none;
	}
	
	.lastCancel{
		 font-weight: 600;
	    text-align: left;
	    letter-spacing: 0.0056em;
	    font-size: 16px;
	    line-height: 24px;
	    color: #939393;
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
	
	
</style>

<script type="text/javascript">
	
	$(document).ready(function(){

		// 체크박스 요소 가져오기
		var checkbox1 = document.getElementById('agree');
		var checkbox2 = document.getElementById('agree1');

		// 버튼 요소 가져오기
		var button = document.getElementById('exitSubmit');
		
		button.disabled = true;
		
		// 체크박스 클릭 이벤트 핸들러
		function handleCheckboxClick() {
		  // 두 개의 체크박스가 모두 선택되었는지 확인
		  if (checkbox1.checked && checkbox2.checked) {
		    // 버튼 활성화
		    button.disabled = false;
		  } else {
		    // 버튼 비활성화
		    button.disabled = true;
		  }
		}

		// 체크박스 클릭 이벤트 리스너 등록
		checkbox1.addEventListener('click', handleCheckboxClick);
		checkbox2.addEventListener('click', handleCheckboxClick);
		
		$('input#inputPwd1').on('input',pwdCheck);
		$('input.pwInput').on('input', checkInputValues);
		checkInputValues();
		
	});
	
	function pwdCheck(e){
		
		const target_val = $(e.target).val();
		var userid = $("input#userid").val();
		
		if(target_val.length == 0){
			$('p#error_pwd1').hide();
			$('p#error_pwd1').text("");
		}
		else{
			$.ajax({
				url: "pwdCheck",
				data: {"inputPwd": $(e.target).val(), "userid": userid},
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
	
	function checkInputValues() {
		  const inputPwd1 = $('input#inputPwd1').val();
		  const btnSubmit = $('button#pwdsubmit');
	
		  if (inputPwd1 === '') {
			btnSubmit.css("bakcground-color","gray")  
		    btnSubmit.prop('disabled', true); // 버튼 비활성화
		  } else {
		    btnSubmit.prop('disabled', false); // 버튼 활성화
		  }
	}// end of function checkInputValues()
	
	function exitMember(){
		
		var userid = $("input#userid").val();
		
		$.ajax({
			url:"memberExit",
			data:{"userid": userid},
			type:"post",
			success: function(result) {
				
				if (result == "success") {
	                alert("성공적으로 탈퇴되었습니다.");
	                window.location.href = "/wanted";
	            } else {
	                alert("실패했습니다.");
	            }
	        },
	        error: function(request, status, error) {
	            alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
	        }
		});
	}
	
	
 
</script>

<body>
	<div class="exitOutLine">
		<div class="exitFrame">
			<div class="exitContent">
				<c:forEach  var="map" items="${requestScope.memberinfo}">
					<div class="exitItem">
						<h1 class="exitTitle">회원 탈퇴 시 주의사항</h1>
						<input type="hidden" name="userid" id="userid" value="${map.userid}" readonly></input>	
						<div>
							<p class="pSubject">탈퇴하기 전에</p>
							<p class="pContent">· 탈퇴 시 OneID를 통해 등록한 서비스의 모든 정보가 영구적으로 삭제되며, 다시는 복구할 수 없습니다.</p>
						</div>
						<div>
							<p class="pSubject">미리 백업하기</p>
							<p class="pContent">· OneID로 등록한 서비스에서 정보 백업을 원하실 경우, 탈퇴 이전에 해당 서비스에서 백업을 진행해 주세요.</p>
						</div>
						<div>
							<p class="pSubject">미리 관리하기</p>
							<p class="pContent">· 서비스 이용 중 본인의 OneID 계정에 귀속되지 않은 정보는 자동으로 삭제되지 않으며, 탈퇴 시 수정이나 삭제가 불가능합니다. 
							OneID 계정에 귀속되지 않은 정보를 수정하거나 삭제하려는 경우, 회원 탈퇴 이전에 해당 서비스에서 수정 또는 삭제를 진행해 주세요.</p>
						</div>
						<hr style="margin: 20px 0;">
						<div>
							<p class="scTitle">탈퇴하려는 계정</p>
							<div class="scContent">
								<div class="scProfile">
									<img width="32" height="32" src="/images/profile_image/${map.profile_image}">
								</div>
								<p class="scUserid" id="scUserid">${map.userid}</p>
							</div>	
						</div>
						<div>
							<p class="scTitle">삭제되는 정보</p>
							<div class="trContent">
								<div class="trImage">
									<div class="imageArea">
										<img src="https://static.wanted.co.kr/images/wantedoneid/wanted_logo.png">
									</div>
								</div>
								<p class="wantedName">wanted</p>
								<div>
									<p class="pContent">· 활동 데이터</p>
									<p class="pContent" style="margin-bottom: 0px;">· 미지급된 채용 보상금 및 포인트 데이터</p>
								</div>
							</div>
							<hr style="margin: 20px 0;">
							<div>
								<div class="css-19fyzk7">
									<div class="css-slacj2"></div>
									<input type="checkbox" id="agree" class="css-31p8kg">
									<div class="css-1smbjja">
										<p class="css-1nizjn9">회원 탈퇴 이후 미결된 금액을 받을 수 없음을 이해했으며 동의합니다.</p>
									</div>
								</div>
								<div class="css-19fyzk7">
									<div class="css-slacj2"></div>
									<input type="checkbox" id="agree1" class="css-31p8kg">
									<div class="css-1smbjja">
										<p class="css-1nizjn9">회원 탈퇴를 진행하여 해당 OneID 계정에 귀속된 모든 정보를 삭제하는 데 동의합니다.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<button type="button" class="memberExit" id="exitSubmit" data-toggle="modal" data-target="#passwdModal">
					<span class="lastSpan">회원 탈퇴</span>
				</button>
				<button type="button" class="cancelButton" id="exitCancel">
					<span class="lastCancel">회원 탈퇴 취소</span>
				</button>
			</div>
		</div>	
	</div>
	<!-- PasswdModal 구성 요소는 현재 페이지 상단에 표시되는 대화 상자/팝업 창입니다. -->
		<div class="modal fade" id="passwdModal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      
		      <!-- Modal header -->
		      <div class="modal-header">
		        <h5 class="modal-title">회원탈퇴</h5>
		        <button type="button" class="close my_close" data-dismiss="modal">&times;</button>
		      </div>
		      
		      <!-- Modal body -->
		      <div class="modal-body">
		        	<div class="inputArea">
		        	<form class="passwdfrm">
		        		<div class="pwTitleFrame">
		        			<label class="pwTitle">현재 비밀번호</label>
		        		</div>
		        			<input type="password" placeholder="비밀번호를 입력해주세요." name="oldPassword" class="pwInput" id="inputPwd1" value="">
		        			<p id="error_pwd1" class="error-msg"></p>
		        		</form>
		        	</div>
		      </div>
		      
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn_cancel my_close" data-dismiss="modal">취소</button>
		        <button type="button" class="btn_submit" id="pwdsubmit" onclick="exitMember()">탈퇴</button>
		      </div>
		    </div>
		  </div>
		</div>
</body>