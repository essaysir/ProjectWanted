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
</style>

<script type="text/javascript">

		$(document).ready(function(){
			checkResume();
			$("textarea.resume_text").on('input' , checkResume ) ;
		

		}); // END OF 	$(DOCUMENT).READY(FUNCTION()

		
		function autoResize(textarea){
			textarea.style.height = "auto";
			 textarea.style.height = textarea.scrollHeight + "px";
		}; // END OF FUNCTION AUTORESIZE 
		
		function checkResume(){
			// console.log ( $("textarea.resume_text").val().length );
			const totalLength = $("textarea.resume_text").val().length ;	
			$("span#totalLength").text(totalLength);
			const percent = totalLength / 13  ;
			$('div.progress').css('width' , percent+"%");
		}// END OF FUNCTION CHECKRESUME 

</script>

<form name="resumeFrm">
		<div class="container inform">
				<p style="margin-bottom: 0px ; "><span class="matchup">매치업 이력서 </span> 
				<svg  style="width:18px; height: 18px; "class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24"><path fill-rule="evenodd" clip-rule="evenodd" d="M10.1952 21.2854L11.8874 20.4277C11.9581 20.3919 12.0421 20.3919 12.1127 20.4277L13.805 21.2854L13.827 21.2963C14.6729 21.71 15.7018 21.3753 16.1251 20.5487L16.9783 18.8828C17.0139 18.8133 17.0819 18.7651 17.1606 18.7534L19.0455 18.4753L19.07 18.4715C20.0031 18.3204 20.6342 17.4586 20.4795 16.5467L20.1677 14.709C20.1546 14.6323 20.1806 14.5542 20.2373 14.4996L21.595 13.1919L21.6125 13.1748C22.2765 12.5165 22.2686 11.4569 21.595 10.8081L20.2373 9.50038C20.1806 9.4458 20.1546 9.3677 20.1677 9.291L20.4795 7.45324L20.4833 7.42937C20.6246 6.51542 19.9808 5.66265 19.0455 5.52466L17.1606 5.24654C17.0819 5.23493 17.0139 5.18666 16.9783 5.11713L16.1251 3.45126L16.1139 3.42973C15.6784 2.60922 14.6447 2.28905 13.805 2.71461L12.1127 3.57229C12.0421 3.60808 11.9581 3.60808 11.8874 3.57229L10.1952 2.71461L10.1731 2.70364C9.32725 2.28997 8.29835 2.62469 7.87503 3.45126L7.02185 5.11713C6.98624 5.18666 6.91826 5.23493 6.83958 5.24654L4.95461 5.52466L4.93018 5.52844C3.99702 5.67962 3.36597 6.54138 3.52069 7.45324L3.83249 9.291C3.84551 9.3677 3.81954 9.4458 3.76287 9.50038L2.40519 10.8081L2.3877 10.8252C1.7237 11.4834 1.73153 12.5431 2.40519 13.1919L3.76287 14.4996C3.81954 14.5542 3.84551 14.6323 3.83249 14.709L3.52069 16.5467L3.51682 16.5706C3.3756 17.4846 4.01932 18.3373 4.95461 18.4753L6.83958 18.7534C6.91826 18.7651 6.98624 18.8133 7.02185 18.8828L7.87503 20.5487L7.88626 20.5703C8.32176 21.3908 9.35549 21.7109 10.1952 21.2854ZM13.2557 10.1725L12.4119 8.47279C12.2388 8.12309 11.7614 8.12309 11.5883 8.47279L10.7433 10.1725C10.6763 10.3084 10.5513 10.4034 10.4085 10.4272L8.59847 10.7426C8.22837 10.8059 8.08058 11.2797 8.34458 11.5594L9.63172 12.9239C9.73403 13.0335 9.78077 13.1852 9.7593 13.337L9.48646 15.2306C9.43088 15.6199 9.81614 15.9129 10.1521 15.7374L11.7929 14.8796C11.9231 14.8123 12.0772 14.8123 12.2073 14.8796L13.8468 15.7374C14.1828 15.9129 14.5693 15.6199 14.5138 15.2306L14.2396 13.337C14.2182 13.1852 14.2662 13.0335 14.3685 12.9239L15.6556 11.5594C15.9196 11.2797 15.7718 10.8059 15.4005 10.7426L13.5917 10.4272C13.4477 10.4034 13.3239 10.3084 13.2557 10.1725Z" fill="#8958FA"></path></svg>
				채용담당자에게 면접 제안을 받을 수 있는 기본이력서 입니다. 개인정보는 공개되지 않으니 안심하세요</p>
				
		</div>
		
		<div class="container my-5">
				<div class="input-group input-group-lg input-div">
				  <input type="text" name="subject" class="form-control  resume-subject" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" 
				  placeholder="이력서 제목(필수)" >
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" name="name" class="form-control " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이름(필수)" >
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" class="form-control " aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이메일(필수)" >
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" class="form-control noborder" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="연락처(필수) EX) 000-0000-000" style="color: #3b3d40; font-size : 14px; " >
				</div>
				
				<div class="resume-header" style="margin-top:60px;">
					간단 소개글 
				</div>
				<div>
					<p class="resume-inform">• 본인의 업무 경험을 기반으로 핵심역량과 업무 스킬을 간단히 작성해주세요.
					<br /> • 3~5줄로 요약하여 작성하는 것을 추천합니다!  </p>
					
					<textarea class="resume_text" oninput="autoResize(this)"></textarea>
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
					<button class="plushtml">+추가</button>
					
					<div style="display:flex;  flex-direction: row">
							<div class="my-3"style="display:block; width:30%; margin-right : 10px;">
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM" maxlength="2"style="width:30px;"/>
								&nbsp;- &nbsp;
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM"  maxlength="2"style="width:30px;"/>
								<span style="color:#ff425f;">*</span>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" placeholder="회사명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" placeholder="부서명/직책" maxlength="255" style="width:100%;  font-size:2opx;"/>
								
								<button type="button" class="plushtml" style="border-bottom:0px; ">+주요 성과 추가</button>
								
								<ul>
									<li>
										<input type="text" placeholder="주요성과" style="width:80%;  font-size:16px;"/>
										<button class="btn-delete-detail"type="button" style="width:17%;">X</button>
										<input type="text" placeholder="YYYY" maxlength="4" style="width:36px; font-size:14px;"/>
										.
										<input type="text" placeholder="MM" maxlength="2" style="width:30px;font-size:14px;"/>
										&nbsp;- &nbsp;
										<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;font-size:14px;"/>
										.
										<input type="text" placeholder="MM" maxlength="2" style="width:30px;font-size:14px;"/>
										<textarea class="resume_text" oninput="autoResize(this)" placeholder="상세 업무 내용과 성과를 기입해주세요" style="font-size:14px;"></textarea>
									</li>
									
									<li>
										<input type="text" placeholder="주요성과" style="width:80%;  font-size:16px;"/>
										<button class="btn-delete-detail"type="button" style="width:17%;">X</button>
										<input type="text" placeholder="YYYY" maxlength="4" style="width:36px; font-size:14px;"/>
										.
										<input type="text" placeholder="MM" maxlength="2" style="width:30px;font-size:14px;"/>
										&nbsp;- &nbsp;
										<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;font-size:14px;"/>
										.
										<input type="text" placeholder="MM" maxlength="2" style="width:30px;font-size:14px;"/>
										<textarea class="resume_text" oninput="autoResize(this)" placeholder="상세 업무 내용과 성과를 기입해주세요" style="font-size:14px;"></textarea>
									</li>
								</ul>
							</div>
					</div>	
					<!--  경력 끝 -->								
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
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM" maxlength="2"style="width:30px;"/>
								&nbsp;- &nbsp;
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM"  maxlength="2"style="width:30px;"/>
								<span style="color:#ff425f;">*</span>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" placeholder="학교명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" placeholder="전공 및 학위 (ex: 경영학과 학사)" maxlength="255" style="width:100%;  font-size:2opx;"/>
								<input type="text" placeholder="이수과목 또는 연구내용" maxlength="255" style="width:100%;  font-size:14px;"/>
							</div>
					</div>	
							
					<div style="display:flex;  flex-direction: row">
							<div class="my-3"style="display:block; width:30%; margin-right : 10px;">
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM" maxlength="2"style="width:30px;"/>
								&nbsp;- &nbsp;
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM"  maxlength="2"style="width:30px;"/>
								<span style="color:#ff425f;">*</span>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" placeholder="학교명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" placeholder="전공 및 학위 (ex: 경영학과 학사)" maxlength="255" style="width:100%;  font-size:2opx;"/>
								<input type="text" placeholder="이수과목 또는 연구내용" maxlength="255" style="width:100%;  font-size:14px;"/>
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
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM" maxlength="2"style="width:30px;"/>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" placeholder="활동명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" placeholder="세부사항" maxlength="255" style="width:100%;  font-size:2opx;"/>
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
								<input type="text" placeholder="YYYY" maxlength="4" style="width:36px;"/>
								.
								<input type="text" placeholder="MM" maxlength="2"style="width:30px;"/>
							</div>
							
							<div class="my-3" style="display:block; width : 60%">
								<input type="text" placeholder="활동명" style="width:80%;  font-size:2opx;"/>
								<button class="btn-delete"type="button" style="width:17%;">X</button>
								<input type="text" placeholder="세부사항" maxlength="255" style="width:100%;  font-size:2opx;"/>
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
				<p style="margin: 20px 20px  20px 10px; ">😊개발 직군, 신입 지원자들은 평균 1300자 정도 작성했어요</p>
				<button type="button" class="btn-blue save-temporary">임시 저장</button>
				<button type="button" class="btn-blue save" >작성 완료</button>
			</div>
		</div>



</form>