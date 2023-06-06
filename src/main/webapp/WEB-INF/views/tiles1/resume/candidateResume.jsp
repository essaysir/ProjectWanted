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
	
	.status_button1 {
		background-color: #3366FF; 
		color: #FFF;
	}
	
	.status_button2, .status_button3 {
		background-color: #FFF; 
		color: #3366FF; 
	}
	
	.status_button1, .status_button2, .status_button3 {
	 	position:relative;
		width: 170px;
		height: 50px;
		border-radius: 50px;
		line-height: 45px;
		font-weight: bold;
		font-size: 14pt;
		margin: 5px;
		border: solid 1px #3366FF;
	}
	
	.status_button1:hover {
		background-color: #184CED !important;
		cursor: pointer;
		border: none;
	}
	
	.status_button2:hover {
		color: gray;
		border: solid 1px gray; 
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
			
			
		    
		}); // END OF $(DOCUMENT).READY(FUNCTION()---------------------------

		
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		  
		
		// DB에 데이터를 넘기기 위해 입력 받은 년월 합쳐주는 함수 (경력, 주요성과, 수상 및 기타, 외국)
		function updateHiddenYears() {
		   
			for (var i = 1; i <= career_count; i++) {
		        var hiddenYearInput1 = document.getElementsByName('hiddenYear1' + i)[0];
		        var hiddenYearInput2 = document.getElementsByName('hiddenYear2' + i)[0];

		        var year1Input = document.getElementsByName('year1' + i)[0];
		        var month1Input = document.getElementsByName('month1' + i)[0];
		        hiddenYearInput1.value = year1Input.value + month1Input.value;

		        var year2Input = document.getElementsByName('year2' + i)[0];
		        var month2Input = document.getElementsByName('month2' + i)[0];
		        hiddenYearInput2.value = year2Input.value + month2Input.value;
		    }// end of for (var i = 1; i <= career_count; i++)--------------------------
		  
		    for (var i = 1; i <= achievementsDel_count; i++) {
		        var hiddenYearInput3 = document.getElementsByName('hiddenYear3' + i)[0];
		        var hiddenYearInput4 = document.getElementsByName('hiddenYear4' + i)[0];

		        var year3Input = document.getElementsByName('year3' + i)[0];
		        var month3Input = document.getElementsByName('month3' + i)[0];
		        hiddenYearInput3.value = year3Input.value + month3Input.value;

		        var year4Input = document.getElementsByName('year4' + i)[0];
		        var month4Input = document.getElementsByName('month4' + i)[0];
		        hiddenYearInput4.value = year4Input.value + month4Input.value;
		      } // end of for (var i = 1; i <= achievementsDel_count; i++)--------------
		  
		  
		    for (var i = 1; i <= schoolDel_count; i++) {
		        var hiddenYearInput5 = document.getElementsByName('hiddenYear5' + i)[0];
		        var hiddenYearInput6= document.getElementsByName('hiddenYear6' + i)[0];

		        var year5Input = document.getElementsByName('year5' + i)[0];
		        var month5Input = document.getElementsByName('month5' + i)[0];
		        hiddenYearInput5.value = year5Input.value + month5Input.value;

		        var year6Input = document.getElementsByName('year6' + i)[0];
		        var month6Input = document.getElementsByName('month6' + i)[0];
		        hiddenYearInput6.value = year6Input.value + month6Input.value;
		      } // end of for (var i = 1; i <= schoolDel_count; i++)---------------------
		  
		    for (var i = 1; i <= rewardDel_count; i++) {
		        var hiddenYearInput7 = document.getElementsByName('hiddenYear7' + i)[0];

		        var year7Input = document.getElementsByName('year7' + i)[0];
		        var month7Input = document.getElementsByName('month7' + i)[0];
		        hiddenYearInput7.value = year7Input.value + month7Input.value;
		      } // end of for (var i = 1; i <= rewardDel_count; i++)---------------------
		    
		      for (var i = 1; i <= languageDel_count; i++) {
			        var hiddenYearInput7 = document.getElementsByName('hiddenYear8' + i)[0];

			        var year8Input = document.getElementsByName('year8' + i)[0];
			        var month8Input = document.getElementsByName('month8' + i)[0];
			        hiddenYearInput8.value = year8Input.value + month8Input.value;
			      } // end of for (var i = 1; i <= languageDel_count; i++)---------------------
			      
		};// end of function updateHiddenYears()--------------------------------------------------

		 

		
		

		
		
		
		
		


		
		
</script>

<form class="resumeFrm">
		
		<div class="container my-5">
				<div class="input-group input-group-lg input-div">
				  <div name="subject" class="required_input form-control resume-subject"></div>
				  <span style="margin-top: 35px; display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <div type="text" name="name" class="required_input form-control" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이름(필수)" ></div>
				  <span class="error_comment" id="name_error" style="display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <div type="text" name="email" class="required_input form-control" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이메일(필수) EX) wanted@wanted.com" ></div>
				  <span class="error_comment" id="email_error" style="display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <div type="text" name="contact" class="required_input form-control noborder" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="연락처(필수) EX) 01012345678" style="color: #3b3d40; font-size : 14px; " ></div>
				  <span class="error_comment" id="contact_error" style="display: none;"></span>
				</div>
				
				<div class="resume-header" style="margin-top:60px;">
					간단 소개글 
				</div>
				<div>
					<p class="resume-inform">${candidateResume.introduce}</p>
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
				<ul id="addCareer"></ul>
					<!--  경력 끝 -->	
					
					<!--   학력 시작 -->
					<div class="resume-header" style="margin-top:60px;">
						학력 
					</div>
					<div>
						<p class="resume-inform">• 최신순으로 작성해주세요. </p>
					</div>		
					<button class="plushtml" id="addSchool_btn" type="button" >+추가</button>
					
					<div class="addSchool"></div>
					<!--  학력 끝 -->
					
					<!--  스킬  시작 -->
					<div class="resume-header" style="margin-top:60px;">
						스킬
					</div>
					<div>
						<p class="resume-inform">• 개발 스택, 디자인 툴, 마케팅 툴 등 가지고 있는 직무와 관련된 스킬을 추가해보세요.
						<br />• 데이터 분석 툴이나 협업 툴 등의 사용해본 경험이 있으신 툴들도 추가해보세요.</p>
						<div type="text" id="searchWord" name="searchWord" placeholder="보유하신 스킬을 입력하세요"></div>
						<button type="button" onclick="searchData()">검색</button>
						
						<div class="resume_text" name="skill" oninput="autoResize(this)" placeholder="검색으로 대체할 예정"></div>
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
					<button class="plushtml" id="addReward_btn" type="button">+추가</button>
					
					<div class="addReward"></div>
					<!--  수상 및 기타 끝 -->
					
					<!--  외국어 시작 -->
					<div class="resume-header" style="margin-top:60px;">
						외국어
					</div>
					<div>
						<p class="resume-inform">• 외국어 자격증을 보유한 경우 작성해주세요. 
						<br />• 활용 가능한 외국어가 있다면, 어느정도 수준인지 레벨을 선택해주세요.</p>
					</div>
					<button class="plushtml" id="addLanguage_btn" type="button">+추가</button>
					
					<div class="addLanguage"></div>
					<!--  외국어 끝  -->
					
					<!--  링크 시작 -->
					<div class="resume-header" style="margin-top:60px;">
						링크
					</div>
					<div>
						<p class="resume-inform">• 깃헙, 노션으로 작성한 포트폴리오, 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는 링크가 있다면 작성해주세요.</p>
					</div>
					<div class="addUploadLink">
						<div name="uploadLink" oninput="autoResize(this)" maxlength= "2000" placeholder="ex) wanted.tistory.com" style="border: none; width: 100%;"></div>
					</div>
					
					<!--  링크 끝  -->
		</div>

		<div class="container-fluid border-top fixed-bottom" style="padding: 5px 0;">
			
			<div class="container" style="display:flex; width: 600px;">		
				<button class="status_button3" type="button" onclick="gobackURL()"><span>지원자 목록</span></button>
				<button class="status_button1" type="button" onclick="updateStatus_1()"><span>합 격</span></button>
				<button class="status_button2" type="button" onclick="updateStatus_2()"><span>불 합 격</span></button>
				
			</div>
		</div>



</form>