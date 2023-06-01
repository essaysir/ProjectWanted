<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	input[type="text"]
	, input[type="text"]:focus {
		 outline : none ; 
		 border : 0px  ; 
		 padding-left : 0px !important;  
	}
	
	input.resume-subject{
		color: #3b3d40;
		font-size: 36px !important;
   		line-height: 36px;
    	font-weight: 500;
	}
	div.inform{
		background-color: #f8f5ff ;
		padding : 20px ; 
		display : flex ; 
		justify-content: space-between;
		border-radius: 5px;
		align-items: center;
		margin-top: 60px ; 
	}
	span.matchup {
		color: #8958fa; 
		font-weight: 600 ; 
	
	}
	div.input-div{
		margin-top : 10px ; 
		color: #3b3d40;
	}
	div.resume-header{
	    padding: 20px 0 6px;
	    font-size: 16px;
	    font-weight: 500;
	    color: #3b3d40;
	    border-bottom: 1px solid #bababa;
	}
	p.resume-inform{
	    padding: 10px;
	    background-color: #f3f9fe;
	    font-size: 12px;
	    line-height: 1.42;
	    letter-spacing: normal;
	    color: #666;
	    margin-top: 10px;	
	}
	textarea.resume_text{
		white-space: pre-wrap;
	    word-break: break-all;
	    word-wrap: break-word;
	    caret-color: #000;
	    overflow: hidden;
	    line-height: 22px;
	    border: none ;
	    width: 100%; 
	}
	button.plushtml {
		color: #36f;
    	background-color: transparent;
   	 	border : 0px ; 
   	 	padding : 30px 0 ;
   	 	font-size : 18px ;
   	 	font-weight : 600 ; 
   	 	border-bottom: 1px solid #f1f1f1;
		width: 100% ;
		text-align: left ; 
	}
	button.btn-delete-detail , 
	button.btn-delete{
		background-color: transparent; 
		border : none ; 
		text-align: right ; 
		
	}
	 .progress-bar {
	    width: 200px;
	    height: 15px;
	    background-color: #e1e2e3;
	    font-weight: 600;
	    font-size: .8rem;
	    border-radius: 10px; 
	}
	
	.progress-bar .progress {
	      /* // 나타내고자 하는 퍼센트 값을 넣으면 됩니다. */
	    height: 30px;
	    padding: 0;
	    text-align: center;
	    background-color: rgb(51, 102, 255);
	    color: rgb(51, 102, 255) ;
	}
	button.save-temporary{
		color: #36f;
	    background-color: #fff;
	    border: 1px solid #36f;
		  	
	}
	button.btn-blue{
 		height: 50px;
	    font-size: 16px;
	    font-weight: 700;
	    width: 173px ; 
	    margin-right: 9px; 
	    padding: 0 27px;
	    border-radius: 25px;
	    margin-top : 7px; 
	}
	button.save{
		color: #fff;
	    background-color: #36f;
	    border: none;
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
	
	div.input-group5 {
		align-items: center;
	}
	
	span.error_comment {
		color: #8958FA;
		font-size: 11px;
		font-weight: bold;
		margin-left: 10px;
		margin-top: 5px;
	}
	
</style>

<script type="text/javascript">

		$(document).ready(function(){
			
			preventEnter(); // 엔터 전송 방지 함수 실행
			
			checkResume(); // 글자수 게이지바 함수 실행
			$("textarea.resume_text").on('input' , checkResume); // 인풋 이벤트가 발생하면, 글자수 게이지바 증가 함수를 직접 이벤트 핸들러로 전달하여 실행
			
			checkName(); // 이름 유효성 검사 함수 실행
			$("input[name='name']").on('input', checkName); // 인풋 이벤트가 발생하면, 이름 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
			$("span#name_error").hide();
			
			checkEmail(); // 이메일 유효성 검사 함수 실행
			$("input[name='email']").on('input', checkEmail); // 인풋 이벤트가 발생하면, 이메일 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
			$("span#email_error").hide();
			
			checkContact(); // 연락처 유효성 검사 함수 실행
			$("input[name='contact']").on('input', checkContact); // 인풋 이벤트가 발생하면, 연락처 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
			$("span#contact_error").hide();
			
			checkSubject() // 이력서 제목 유효성 검사 함수 실행
			$("input[name='subject']").on('input', checkSubject); // 인풋 이벤트가 발생하면, 이력서 제목 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
			$("span#subject_error").hide();
			
			addCareer(); // 경력 추가 버튼 클릭시 동적으로 html을 추가해주는 함수 호출
			$('button#career_btn').on('click', addCareer); // 경력 추가 버튼 클릭시 동적으로 html을 추가해주는 함수를 직접 이벤트 핸들러로 전달하여 실행
			
<%-- --%>			
			// 이벤트 위임으로 클릭 이벤트를 처리.
			$(document).on('click', '#achievements_btn', addAchievements); // 주요 성과 추가 버튼 클릭시 동적으로 html을 추가해주는 함수를 직접 이벤트 핸들러로 전달하여 실행
<%-- --%>			
			
		}); // END OF $(DOCUMENT).READY(FUNCTION()-----------------------------

				
				
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		function autoResize(textarea) {
			textarea.style.height = "auto";
			textarea.style.height = textarea.scrollHeight + "px";
		}; // END OF FUNCTION AUTORESIZE -----------------------------------
		
		
		// 게이지바 함수
		function checkResume() { 
			// console.log ( $("textarea.resume_text").val().length );
			const totalLength = $("textarea.resume_text").val().length ;	
			$("span#totalLength").text(totalLength);
			
			const percent = totalLength / 13  ;
			$('div.progress').css('width' , percent+"%");
			
			if(totalLength > 0 && totalLength < 400) {
				$("p#message_bar").text("💪 개발 직군, 신입 지원자들은 최소 400자 정도 작성했어요.");
			}
			else if(totalLength >= 400 && totalLength < 450) {
				$("p#message_bar").text("👏 이제 기본 이력서로 설정이 가능해요.");
			}
			else if(totalLength >= 450 && totalLength < 1300) {
				$("p#message_bar").text("😊 개발 직군, 신입 지원자들은 평균 1300자 정도 작성했어요.");
			}
			else if(totalLength >= 1300) {
				$("p#message_bar").text("👍 훌륭한 이력서를 보유하고 계시는군요!");
			}
			else {
				$("p#message_bar").text("🙌 이력서 작성을 시작해볼까요?");
			}
				
		}; // END OF FUNCTION CHECKRESUME ---------------------------------------

		
		// 이력서 제목 유효성 검사
		function checkSubject() {
			
			const subject = $("input[name='subject']").val();
			
			if(subject.trim() === "") {
				$("span#subject_error").text("제목을 입력해주세요.").show();
				$("input[name='subject']").focus();
				return false;
			}
			else {
				$("span#subject_error").hide();
			}
			
		}// end of function checkSubject()----------------------------------------
		
		
		// input 요소에서 Enter키를 누르면 데이터가 전송되어지는 것을 방지
		function preventEnter() {
			
			$(document).on("keydown", "input", function(e) {
				  if (e.keyCode == 13) {
				    e.preventDefault();
				    return false;
				  }
				});
		} // end of function preventEnter()----------------------------------------

		
		// 이름 유효성 검사
		function checkName() {
			
			const regExp = /^[가-힣a-zA-Z]{2,20}$/;
			const name = $("input[name='name']").val();
			
			if(name.trim() === "") {
				$("span#name_error").text("이름을 입력해주세요.").show();
				$("input[name='name']").focus();
				return false;
			}
			else if (!regExp.test(name)) {
				$("span#name_error").text("올바른 형식의 이름을 입력해주세요.").show();
				$("input[name='name']").focus();
				return false;
			}
			else {
			    $("span#name_error").hide();
			}
			
		}; // end of checkName()-------------------------------------------------
		
		
		// 이메일 유효성 검사
		function checkEmail() {
			
			const regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
			const email = $("input[name='email']").val();

			if(email.trim() === "") {
				$("span#email_error").text("이메일을 입력해주세요.").show();
			    $("input[name='email']").focus();
			    return false;
			}
			else if(!regExp.test(email)) {
				$("span#email_error").text("올바른 형식의 이메일을 입력해주세요.").show();
			    $("input[name='email']").focus();
			    return false;
			}
			else {
			    $("span#email_error").hide();
			}
			
		}; // end of function checkEmail()---------------------------------------
		
		
		// 연락처 유효성 검사 함수
		function checkContact() {
			
			const regExp = /^(010|011|016|017|018|019)\d{7,8}$/;
			const contact = $("input[name='contact']").val();
			
			if(contact.trim() === "") {
				$("span#contact_error").text("연락처를 입력해주세요.").show();
				$("input[name='contact']").focus();
				return false;
			}
			else if(!regExp.test(contact)) {  
				$("span#contact_error").text("올바른 형식의 연락처를 입력해주세요.").show();
				$("input[name='contact']").focus();
				return false;
			}
			else {
				$("span#contact_error").hide();
			}

		}// end of function checkContact()---------------------------------------
		
		// 경력의 추가버튼 클릭시 입력란 동적 생성해주는 함수
		function addCareer() {
			
			    var html = '<li>\n' +
			               '  <div style="display:flex; flex-direction: row">\n' +
			               '    <div style="width: 20%; display: flex; flex-direction: row;">\n' +
			               '      <div class="my-3" style="display: block; width: 100%; margin-right: 10px; flex-grow: 1;">\n' +
			               '        <input type="text" placeholder="YYYY" maxlength="4" style="width: 36px;" />\n' +
			               '        .\n' +
			               '        <input type="text" placeholder="MM" maxlength="2" style="width: 30px;" />\n' +
			               '        &nbsp;- &nbsp;\n' +
			               '        <input type="text" placeholder="YYYY" maxlength="4" style="width: 36px;" />\n' +
			               '        .\n' +
			               '        <input type="text" placeholder="MM" maxlength="2" style="width: 30px;" />\n' +
			               '        <span style="color:#ff425f;">*</span>\n' +
			               '      </div>\n' +
			               '    </div>\n' +
			               '    <div class="my-3" style="display:block; width : 60%; margin-left: auto;">\n' +
			               '      <input type="text" placeholder="회사명" style="width:80%; font-size:2opx;" />\n' +
			               '      <button class="btn-delete" type="button" style="width:17%;">X</button>\n' +
			               '      <input type="text" placeholder="부서명/직책" maxlength="255" style="width:100%; font-size:2opx;" />\n' +
			               '      <button type="button" class="plushtml" style="border-bottom:0px;" id="achievements_btn">+주요 성과 추가</button>\n' +
			               '	  <ul id="addAchievements"></ul>\n' +	
			               '    </div>\n' +
			               '  </div>\n' +
			               '</li>';

			    // HTML 코드를 <ul> 태그에 추가합니다.
			    $('ul#addCarrer').append(html);
			  
		}; // end of function addCareer()------------------------------------
		
		
		// 주요 성과 추가 추가버튼 클릭시 입력란 동적 생성해주는 함수(이벤트 위임 받아서 생성)
		function addAchievements() {

		  var html = '<li>\n' +
		    '  <input type="text" autocomplete="off" placeholder="주요성과" style="width:80%; font-size:16px;"/>\n' +
		    '  <button class="btn-delete-detail" type="button" style="width:17%;">X</button>\n' +
		    '  <input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px; font-size:14px;"/>\n' +
		    '  .\n' +
		    '  <input type="text" autocomplete="off" placeholder="MM" maxlength="2" style="width:30px; font-size:14px;"/>\n' +
		    '  &nbsp;- &nbsp;\n' +
		    '  <input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px; font-size:14px;"/>\n' +
		    '  .\n' +
		    '  <input type="text" autocomplete="off" placeholder="MM" maxlength="2" style="width:30px; font-size:14px;"/>\n' +
		    '  <div style="display:flex;"><textarea placeholder="상세 업무 내용과 성과를 기입해주세요." style="border:none; flex-grow:1;"></textarea></div>\n' +
		    '</li>';

		  // HTML 코드를 <ul> 태그에 추가합니다.
		  $('ul#addAchievements').append(html);

		}; // end of function addAchievements()-----------------------------------
		
		
		// 작성 완료 버튼 클릭시 필수입력항목 유효성검사(공백 및 미작성만) 함수 
		function insertResume() {

			// 필수입력사항이 모두 입력 됐는지 검사
			$("input.required_input").each( (index, elmt) => {
				if($(elmt).val().trim() == "") {
					alert("필수 입력사항을 모두 입력해주세요.");
					return false;
				}
			});
			
			// 이력서 글자수 및 공백 유효성 검사
	        const totalLength = $("textarea.resume_text").val().length;
			const resume_text = $("textarea.resume_text").val().trim().length;
			const requiredLength = 400; // 최소 글자 수
			
			if (totalLength < requiredLength) {
			    alert("최소 " + requiredLength + "자를 입력하셔야 이력서 등록이 가능합니다.");
			    $("textarea.resume_text").focus(); // 포커스 이동
			    return false;
			}
			else if(resume_text.length === 0) {
				alert("공백만 입력하는 것은 불가능합니다.");
				$("textarea.resume_text").focus(); // 포커스 이동
		           return false;
			}
			else {
			    $("span.error_comment").hide();
			}
			
		    
		 // 유효성 검사 후 최종 전송 확정
			const frm = document.resumeFrm;
			frm.action = "myresume";
			frm.method = "post";
			frm.submit();
		    
		} // end of function insertResume()------------------------------
		
</script>

<form name="resumeFrm">
		<div class="container inform">
				<p style="margin-bottom: 0px ; "><span class="matchup">매치업 이력서 </span> 
				<svg  style="width:18px; height: 18px; "class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24"><path fill-rule="evenodd" clip-rule="evenodd" d="M10.1952 21.2854L11.8874 20.4277C11.9581 20.3919 12.0421 20.3919 12.1127 20.4277L13.805 21.2854L13.827 21.2963C14.6729 21.71 15.7018 21.3753 16.1251 20.5487L16.9783 18.8828C17.0139 18.8133 17.0819 18.7651 17.1606 18.7534L19.0455 18.4753L19.07 18.4715C20.0031 18.3204 20.6342 17.4586 20.4795 16.5467L20.1677 14.709C20.1546 14.6323 20.1806 14.5542 20.2373 14.4996L21.595 13.1919L21.6125 13.1748C22.2765 12.5165 22.2686 11.4569 21.595 10.8081L20.2373 9.50038C20.1806 9.4458 20.1546 9.3677 20.1677 9.291L20.4795 7.45324L20.4833 7.42937C20.6246 6.51542 19.9808 5.66265 19.0455 5.52466L17.1606 5.24654C17.0819 5.23493 17.0139 5.18666 16.9783 5.11713L16.1251 3.45126L16.1139 3.42973C15.6784 2.60922 14.6447 2.28905 13.805 2.71461L12.1127 3.57229C12.0421 3.60808 11.9581 3.60808 11.8874 3.57229L10.1952 2.71461L10.1731 2.70364C9.32725 2.28997 8.29835 2.62469 7.87503 3.45126L7.02185 5.11713C6.98624 5.18666 6.91826 5.23493 6.83958 5.24654L4.95461 5.52466L4.93018 5.52844C3.99702 5.67962 3.36597 6.54138 3.52069 7.45324L3.83249 9.291C3.84551 9.3677 3.81954 9.4458 3.76287 9.50038L2.40519 10.8081L2.3877 10.8252C1.7237 11.4834 1.73153 12.5431 2.40519 13.1919L3.76287 14.4996C3.81954 14.5542 3.84551 14.6323 3.83249 14.709L3.52069 16.5467L3.51682 16.5706C3.3756 17.4846 4.01932 18.3373 4.95461 18.4753L6.83958 18.7534C6.91826 18.7651 6.98624 18.8133 7.02185 18.8828L7.87503 20.5487L7.88626 20.5703C8.32176 21.3908 9.35549 21.7109 10.1952 21.2854ZM13.2557 10.1725L12.4119 8.47279C12.2388 8.12309 11.7614 8.12309 11.5883 8.47279L10.7433 10.1725C10.6763 10.3084 10.5513 10.4034 10.4085 10.4272L8.59847 10.7426C8.22837 10.8059 8.08058 11.2797 8.34458 11.5594L9.63172 12.9239C9.73403 13.0335 9.78077 13.1852 9.7593 13.337L9.48646 15.2306C9.43088 15.6199 9.81614 15.9129 10.1521 15.7374L11.7929 14.8796C11.9231 14.8123 12.0772 14.8123 12.2073 14.8796L13.8468 15.7374C14.1828 15.9129 14.5693 15.6199 14.5138 15.2306L14.2396 13.337C14.2182 13.1852 14.2662 13.0335 14.3685 12.9239L15.6556 11.5594C15.9196 11.2797 15.7718 10.8059 15.4005 10.7426L13.5917 10.4272C13.4477 10.4034 13.3239 10.3084 13.2557 10.1725Z" fill="#8958FA"></path></svg>
				채용담당자에게 면접 제안을 받을 수 있는 기본이력서 입니다. 개인정보는 공개되지 않으니 안심하세요</p>
				
		</div>
		
		<div class="container my-5">
				<div class="input-group input-group-lg input-div">
				  <input type="text" name="subject" class="required_input form-control resume-subject" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" 
				  placeholder="이력서 제목(필수)" >
				  <span class="error_comment" id="subject_error" style="margin-top: 35px; display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" name="name" class="required_input form-control" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이름(필수)" >
				  <span class="error_comment" id="name_error" style="display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" name="email" class="required_input form-control" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이메일(필수) EX) wanted@wanted.com" >
				  <span class="error_comment" id="email_error" style="display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" name="contact" class="required_input form-control noborder" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="연락처(필수) EX) 01012345678" style="color: #3b3d40; font-size : 14px; " >
				  <span class="error_comment" id="contact_error" style="display: none;"></span>
				</div>
				
				<div class="resume-header" style="margin-top:60px;">
					간단 소개글 
				</div>
				<div>
					<p class="resume-inform">• 본인의 업무 경험을 기반으로 핵심역량과 업무 스킬을 간단히 작성해주세요.
					<br /> • 3~5줄로 요약하여 작성하는 것을 추천합니다!  </p>
					
					<textarea class="resume_text" placeholder="간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요. (3~5줄 권장)" oninput="autoResize(this)" maxlength= "2000"></textarea>
				</div>
				
				<div class="resume-header" style="margin-top:60px;">
					경력
				</div>
				<div>
					<p class="resume-inform">
						• 담당하신 업무 중 우선순위가 높은 업무를 선별하여 최신순으로 작성해주세요. 
						<br />• 신입의 경우, 직무와 관련된 대외활동, 인턴, 계약직 경력 등이 있다면 작성해주세요. 
						<br/>• 업무 또는 활동 시 담당했던 역할과 과정, 성과에 대해 자세히 작성해주세요. 
						<br/>• 업무 성과는 되도록 구체적인 숫자 혹은 [%]로 표현해주세요!
						<br/>• 커리어 조회 후 기업명이 실제와 다른 경우, 부서명/직책 란에 원하시는 기업명을 작성해주세요.
					 </p>
				</div>						
					<button type="button" class="plushtml" id="career_btn">+추가</button>
					<!-- 경력 추가 시작 -->
				<ul id="addCarrer"></ul>
					<!--  경력 끝 -->	
					
					<!-- samaple -->	
				
					<!-- samaple -->	
					
										
					<!--   학력 시작 -->
					<div class="resume-header" style="margin-top:60px;">
						학력 
					</div>
					<div>
						<p class="resume-inform">• 최신순으로 작성해주세요. </p>
					</div>		
					<button class="plushtml">+추가</button>
					
					<div style="display:flex;  flex-direction: row">
							<div class="my-3"style="display:block; width:30%; margin-right : 10px;">
								<input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" autocomplete="off" placeholder="MM" maxlength="2"style="width:30px;"/>
								&nbsp;- &nbsp;
								<input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" autocomplete="off" placeholder="MM"  maxlength="2"style="width:30px;"/>
								<span style="color:#ff425f;">*</span>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" autocomplete="off" placeholder="학교명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" autocomplete="off" placeholder="전공 및 학위 (ex: 경영학과 학사)" maxlength="255" style="width:100%;  font-size:2opx;"/>
								<input type="text" autocomplete="off" placeholder="이수과목 또는 연구내용" maxlength="255" style="width:100%;  font-size:14px;"/>
							</div>
					</div>	
							
					<div style="display:flex;  flex-direction: row">
							<div class="my-3"style="display:block; width:30%; margin-right : 10px;">
								<input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" autocomplete="off" placeholder="MM" maxlength="2"style="width:30px;"/>
								&nbsp;- &nbsp;
								<input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" autocomplete="off" placeholder="MM"  maxlength="2"style="width:30px;"/>
								<span style="color:#ff425f;">*</span>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" autocomplete="off" placeholder="학교명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" autocomplete="off" placeholder="전공 및 학위 (ex: 경영학과 학사)" maxlength="255" style="width:100%;  font-size:2opx;"/>
								<input type="text" autocomplete="off" placeholder="이수과목 또는 연구내용" maxlength="255" style="width:100%;  font-size:14px;"/>
							</div>
					</div>	
					<!--  학력 끝 -->
				
					<!--  스킬  시작 -->
					<div class="resume-header" style="margin-top:60px;">
						스킬
					</div>
					<div>
						<p class="resume-inform">• 개발 스택, 디자인 툴, 마케팅 툴 등 가지고 있는 직무와 관련된 스킬을 추가해보세요.
						<br />• 데이터 분석 툴이나 협업 툴 등의 사용해본 경험이 있으신 툴들도 추가해보세요.</p>
						
						<textarea class="resume_text" oninput="autoResize(this)"></textarea>
					</div>
					<!--  스킬 끝-->
					
					<!--  수상 및 기타  시작 -->
					<div class="resume-header" style="margin-top:60px;">
						수상 및 기타
					</div>
					<div>
						<p class="resume-inform">• 수상 이력, 직무 관련 자격증, 수료한 교육이나 참석한 외부활동 등이 있다면 간략히 작성해주세요.
						<br />• 지원하는 회사에서 요구하는 경우가 아니라면 운전면허증과 같은 자격증은 생략하는 것이 좋습니다!</p>
					</div>
					<button class="plushtml">+추가</button>
					
					<div style="display:flex;  flex-direction: row">
							<div class="my-3"style="display:block; width:30%; margin-right : 10px;">
								<input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" autocomplete="off" placeholder="MM" maxlength="2"style="width:30px;"/>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" autocomplete="off" placeholder="활동명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" autocomplete="off" placeholder="세부사항" maxlength="255" style="width:100%;  font-size:2opx;"/>
							</div>
					</div>	
					<!--  수상 및 기타 끝 -->
					
					<!--  외국어 시작 -->
					<div class="resume-header" style="margin-top:60px;">
						외국어
					</div>
					<div>
						<p class="resume-inform">• 외국어 자격증을 보유한 경우 작성해주세요. 
						<br />• 활용 가능한 외국어가 있다면, 어느정도 수준인지 레벨을 선택해주세요.</p>
					</div>
					<button class="plushtml">+추가</button>
					
					<div style="display:flex;  flex-direction: row">
							<div class="my-3"style="display:block; width:30%; margin-right : 10px;">
								<input type="text" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" autocomplete="off" placeholder="MM" maxlength="2"style="width:30px;"/>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" autocomplete="off" placeholder="활동명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" autocomplete="off" placeholder="세부사항" maxlength="255" style="width:100%;  font-size:2opx;"/>
							</div>
					</div>	
					<!--  외국어 끝  -->
					
					<!--  링크 시작 -->
					<div class="resume-header" style="margin-top:60px;">
						링크
					</div>
					<div>
						<p class="resume-inform">• 깃헙, 노션으로 작성한 포트폴리오, 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는 링크가 있다면 작성해주세요.</p>
					</div>
					<button class="plushtml">+추가</button>
					
					<div style="display:flex;  flex-direction: row">
							
					</div>	
					<!--  링크 끝  -->
					
		</div>

		<div class="container-fluid border-top fixed-bottom">
			
			<div class="container" style="display:flex;">	
				<div class="progress-bar" style="margin: 24px 0px  20px 0px; ">           
		   				<div class="progress"> </div>
				</div>	
				<p style="margin: 20px 20px  20px 5px; "><span id="totalLength"></span>/1300</p>
				<p style="margin: 20px 20px  20px 10px; font-size: 13px; font-weight: bold;" id="message_bar"></p>
				<button type="button" class="btn-blue save-temporary">임시 저장</button>
				<button type="button" id="btn_resumeOk" class="btn-blue save" onclick="insertResume()" >작성 완료</button>
			</div>
		</div>



</form>