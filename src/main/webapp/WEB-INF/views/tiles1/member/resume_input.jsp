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
	
	section#skillSearch {
		     display: none; 
		     position: relative;
		    left: 586px;
		    top: 6px;
		    width: 584px;
		    height: 446px;
		    border: 1px solid #e1e2e4;
		    border-radius: 5px;
		    background-color: #fff;
    }
    div.search-wrapper{
    	padding: 26px 20px 20px 20px ; 
        height: 396px;
  		overflow: auto;
    }
    
    input#search-skill:not(:focus) { /* 커서 올라가기 전 */
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-radius: 25px;
	    font-size: 14px;
    	font-weight: 400;
	}
	input#search-skill::placeholder { /* 커서 올라가기 전 placeholder 색상 변경 */
		color: #e1e2e3;
	}
	
	input#search-skill:focus { /* 커서 올라간 후 */
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-color: blue;
	    border-radius: 25px;
	    font-size: 14px;
    	font-weight: 400;
	}
    h4.recommend{
        font-size: 14px;
   		font-weight: 500;
   		 line-height: 17px;
    	margin: 0px 0px 14px;
    	color: rgb(51, 51, 51) ;
    }
    
    div.div_skill{
        display: inline-flex;
	    align-items: center;
	    justify-content: center;
	    height: 32px;
	    padding: 8px 14px;
	    border: 1px solid #f2f4f7;
	    border-radius: 16px;
	    margin: 0;
	    background: #f2f4f7;
	    color: #333;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 16px;
	    cursor: pointer;
    }
    
    button.btn-skill{
	    margin: 0 !important ; 
	    padding: 0 !important;
	    border: 0 !important;
	    background: none !important;
	    cursor: pointer !important;
        border: 0px !important;
    	border-radius: 20px !important;
    }
     button.btn-delete{
	    margin: 0  ; 
	    padding: 0 ;
	    border: 0 ;
	    background: none ;
	    cursor: pointer ;
        border: 0px ;
    	border-radius: 20px ;
    }
    
    
    ul#recommendList , ul#resultList {
    	list-style-type: none ; 
    	display : flex; 
    	 flex-wrap: wrap; /*  ul 을 감싸고 있는 Div 범위를 초과하면 다음 줄로 내리기 위한 설정*/
    
    
    }
    li.li-skill{
    	margin : 0px 10px 10px 0px ; 
    }
    
    div.data-input{
    		width: 100%;
		    min-height: 102px;
		    padding: 14px;
		    border-radius: 5px;
		    background-color: #f8f8f8;
    }
    p.recommend{
        width: 100%;
	    margin-top: 10px;
    	font-size: 12px;
    	font-weight: 400;
    	line-height: 14px;
    	color: #939393;
    }
	button#section-cancle{
		color: #767676;
	    font-weight: 600;
	    padding-right: 10px;
	    min-width: 0;
	    font-size: 14px;
		display: inline-flex;
	    align-items: center;
	    background-color : #fff ;
	    justify-content: center;
	    vertical-align: middle;
	    box-sizing: border-box;
	    line-height: normal;
	    border: none;
	    cursor: pointer;
	}
	button#section-adjust{
	    margin: 0;
    	padding: 0;
    	border: 0;
		color:#36f;
		background-color: #fff ;
		font-size: 14px;
    	font-weight: 600;
	}
	div.search-result{
		  position : absolute;  
		  top: 85px; /* 혹은 다른 원하는 위치로 조정 */
		  left: 17px ;
		  
		  z-index: 1; /* 다른 요소들보다 위에 표시되도록 설정 */
		  background-color: white;
		    border: 1px solid #f2f4f7;
		  /* 추가적인 스타일링을 원하는 경우 여기에 작성해주세요. */
			height: 170px ;
			width:  530px ; 
			/* justify-content: center;
  			align-items: center;
	    	display: flex; */
		
	}
	p.search-answer-none{
			text-align: center ;
			font-size: 14px;
			color: #767676;
	    	font-weight: 600;
	}
	ul.search-answer{
		list-style-type: none ; 
		padding-left : 0px ; 
	
	}
	.search-answer li:hover , .search-answer li:focus {
  		background-color: lightgray;
	}
	li.search-answer-li{
		height: 42px ;
	    padding-left: 17px;
    	padding-top: 8px;
	}
	ul#insertList{
		list-style-type: none ; 
    	display : flex; 
    	flex-wrap: wrap; /*  ul 을 감싸고 있는 Div 범위를 초과하면 다음 줄로 내리기 위한 설정*/
	}
	div.div_insert_skill{
		border: 1px solid #36f;
	    background: #fff;
	    color: #36f;
	    font-weight: 600;
	    display: inline-flex;
   		 align-items: center;
	    justify-content: center;
    	height: 32px;
    	padding: 8px 14px;
    	border-radius: 16px;
   		 margin: 0;
    	font-size: 13px;
    	line-height: 16px;
    	cursor: pointer;
	}
	
</style>

<script type="text/javascript">

		$(document).ready(function(){
			
			preventEnter(); // 엔터 전송 방지 함수 실행
		    
		    checkResume(); // 글자수 게이지바 함수 실행
		    $("textarea.resume_text").on('input', checkResume); // 인풋 이벤트가 발생하면, 글자수 게이지바 증가 함수를 직접 이벤트 핸들러로 전달하여 실행
		    
		    checkName(); // 이름 유효성 검사 함수 실행
		    $("input[name='name']").on('input', checkName); // 인풋 이벤트가 발생하면, 이름 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
		    $("span#name_error").hide();
		    
		    checkEmail(); // 이메일 유효성 검사 함수 실행
		    $("input[name='email']").on('input', checkEmail); // 인풋 이벤트가 발생하면, 이메일 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
		    $("span#email_error").hide();
		    
		    checkContact(); // 연락처 유효성 검사 함수 실행
		    $("input[name='contact']").on('input', checkContact); // 인풋 이벤트가 발생하면, 연락처 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
		    $("span#contact_error").hide();
		    
		    checkSubject(); // 이력서 제목 유효성 검사 함수 실행
		    $("input[name='subject']").on('input', checkSubject); // 인풋 이벤트가 발생하면, 이력서 제목 유효성 검사 함수를 직접 이벤트 핸들러로 전달하여 실행
		    $("span#subject_error").hide();
		    
		    addCareer(); // 경력 추가 버튼 클릭시 동적으로 html을 추가해주는 함수 호출
		    $('button#career_btn').on('click', addCareer); // 경력 추가 버튼 클릭시 동적으로 html을 추가해주는 함수를 직접 이벤트 핸들러로 전달하여 실행
		    
		    $('button#addSchool_btn').on('click', addSchool); // 학력 추가 버튼 클릭시 동적으로 html을 추가해주는 함수를 직접 이벤트 핸들러로 전달하여 실행
		    
		    $('button#addReward_btn').on('click', addReward); // 수상 및 기타 추가 버튼 클릭시 동적으로 html을 추가해주는 함수를 직접 이벤트 핸들러로 전달하여 실행
		    
		    $('button#addLanguage_btn').on('click', addLanguage); // 외국어 추가 버튼 클릭시 동적으로 html을 추가해주는 함수를 직접 이벤트 핸들러로 전달하여 실행
		    
		    $(document).on('input', '[name^="year1"], [name^="year2"], [name^="month1"], [name^="month2"], [name^="hiddenYear1"], [name^="hiddenYear2"]', updateHiddenYears);
		    
		    settingSearchSkill(); 	
    		// 해당 기능 사용법 
    		// 1. 우선 모든 Javascript 를 복사해서 붙여 넣는다. 또한, HTML 태그도 복사 붙여넣는다.
    		// CSS 도 모두 복사 붙여넣는다. 
    		// 그 후, 기능 테스트를 한다. 
    		
    		// 2. 기능이 확인되면 이제 CSS 를 조정해야한다. 
    		// 처음에 복붙하면 , 버튼의 위치와 검색창의 위치가 맞지 않을 것이다.
    		//  section#skillSearch 여기 CSS 를 가서 TOP, LEFT 를 조정하면서 버튼 밑으로 내려오도록 위치를 조정한다.
    		
    		// 3. 버튼의 경우 , 따로 디자인을 해주지 않았음. 원하는 경우에는 따로 지정해주면 된다. 
    		//  현재 ,       '<input type="hidden" class="tech_code" value=" '+tech_code+' "/> '  다음과 같이 본문에 추가되기 때문에
    		
    		// @RequestParam(value="tech_code", required=true) List<String> tech_code)
    		// 스프링 에서 다음과 같이 불러주면 될 것이다. 
    		
    		// 디자인을 변경하고 싶은 부분은 각자 고쳐서 사용하면 된다. 
    		// btn-delete, btn-skill 클래스를 만들거나 건들면 해당 기능의 오류가 생길 수 있으니 주의 할 필요가 있다. 
		    
		}); // END OF $(DOCUMENT).READY(FUNCTION()---------------------------

		let career_count = 0; 
		let achievementsDel_count = 0;
		let schoolDel_count = 0;	
		let rewardDel_count = 0;	
		let languageDel_count = 0;	
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		
		
		let insert_count = 0 ;  // 최대 다섯개까지만 선택할 수 있게 해주는 COUNT
		function settingSearchSkill(){
			buttonActive();
		 	getSkil();
		 	$("p.search-answer-none").hide();
		 	$("div.search-result").hide();
			$("input#search-skill").on('input', searchSkill );
			
			/// 밑의 방식과 같이 되어있는 이유는 밑의 함수에서 
			// $(this) 를 사용하기 위해서 다음과 같이 실행중이다. 
			$(document).on('click', 'li.search-answer-li', function(){
				insertSkill.call(this, "list")
			});
			$(document).on('click' , 'button.btn-skill' , function(){
				 insertSkill.call(this, "button")
			});
			
			$(document).on('click' , 'button.btn-delete' , function(){
				deleteSkill.call(this)
			});
			
			$(document).on('click', 'button#section-cancle' , function(){
				sectionClose.call(this)				
			})
			
			$(document).on('click', 'button#section-adjust' , function(){
				sectionAdjust.call(this)				
			})
			
		} // END OF FUNCTION
		
		
		function buttonActive(){
			$("#skill").click(function() {
			    $("section#skillSearch").toggle();
			  }); 	
		
		} // END OF FUNCTION buttonActive 
		
		function getSkil(){
			let html = "" ;
			$.ajax({
				url: "/wanted/getSkill",
				type: "get",
				dataType:"json",
				success: function (result) {
				   //  console.log(JSON.stringify(result));
					// 버튼 추가를 위한 반복문
				    $.each(result, function(index, skill) {
				        html += '<li class="li-skill">' +
				                        '<button type="button" class="btn-skill" id="btn-skill-'+skill.tech_code+ '">' +
				                            '<div class="div_skill">' +
				                                skill.tech_name +
				                                '<input type="hidden" class="tech_code" value=" '+skill.tech_code+' "/> '+
				                                '<span style="margin-left:4px; margin-bottom:2px; ">' +
				                                    '<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">' +
				                                        '<path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path>' +
				                                    '</svg>' +
				                                '</span>' +
				                            '</div>' +
				                        '</button>' +
				                    '</li>';
				    });
					
				    // 생성한 것들을 HTML 에 추가
				    $("ul#recommendList").html(html); 
				},
				error: function (request, status, error) {
					alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});
			
		}// END OF FUCNTION GETSKILL
		
		function searchSkill(){
			$("div.search-result").show();
			let html = "";
			const input_val = $("input#search-skill").val();
			if ( input_val.trim() == ""   ){
				$("ul.search-answer").empty();
				$("div.search-result").hide();
				return false ; 
			}// end of if 
			
			else{
				$("p.search-answer-none").hide();
				$.ajax({
					url: "/wanted/searchSkill",
					type: "get",
					data: {"input_val": input_val } ,
					dataType:"json",
					success: function (result) {
					   	//console.log(JSON.stringify(result));
					    // console.log(result.length);
						// 버튼 추가를 위한 반복문
						if ( result.length == 0 ){
							$("p.search-answer-none").show();
						}
						
						else{
							$.each(result, function(index, skill) {
						    	html += "<li class=\"border-bottom search-answer-li\">"+skill.tech_name+"<input type='hidden'  class='tech_code' value='"+skill.tech_code+"' /></li>" 
							});
						}
						$("ul.search-answer").html(html); // 생성한 것들을 HTML 에 추가
					
					},
					error: function (request, status, error) {
						alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
					}
				});// END OF AJAX 
				
				
			}// end of else
		}// END OF FUNCTION SEARCHSKILL 
		
		function insertSkill(type){
			let tech_name = ""; 
			let tech_code = ""; 
			
			tech_name = $(this).text();
			tech_code = $(this).find('input.tech_code').val();
			// console.log(tech_name);  // PYTHON 
			// console.log(tech_code);  //  1000 		
		
			if ( type == "list" ){
				$("input#search-skill").val("");
				$("ul.search-answer").empty();
				$("div.search-result").hide();
				
				 $("button.btn-skill").each(function() {
					
					 	let buttonText = $(this).text(); // 각 button의 텍스트를 가져옵니다.
					    if (buttonText.includes(tech_name)) {
					      // 해당 button에 특정 단어가 포함되어 있다면 원하는 동작을 수행합니다.
					      // 예를 들어, 해당 button을 스타일링하거나 클릭 이벤트를 트리거할 수 있습니다.
					      // console.log($(this).html());
					      $(this).removeClass("btn-skill").addClass("btn-delete");
					      
					      // 버튼 내부의 span 요소를 선택합니다.
						    var spanElement = $(this).find('span');
	
						    // span 요소의 내용을 변경합니다.
						    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="8" viewBox="0 0 10 8" fill="none"><path d="M0.826019 3.33516C0.637056 3.1462 0.330686 3.1462 0.141723 3.33516C-0.0472409 3.52412 -0.0472409 3.83049 0.141723 4.01946L3.36753 7.24526C3.55649 7.43423 3.86286 7.43423 4.05183 7.24526L9.85828 1.43881C10.0472 1.24985 10.0472 0.943479 9.85828 0.754515C9.66931 0.565552 9.36294 0.565552 9.17398 0.754515L3.70968 6.21882L0.826019 3.33516Z" fill="currentColor"></path></svg>');
						    let div_element = $(this).parent().find("div.div_skill");
						    div_element.css("color" , "#36f"); 
					      
					    }
					    
				 });
				
			} // END OF if ( type == "list" ) 
	
			else if ( type == "button"){
				// 버튼을 클릭했을 시, 클래스를 바꿔줌을 통해 기존의 function 이 작동되지 않고
				// delete 함수를 작동시킬 수 있도록 설정
				let  element = $(this);
				element.removeClass("btn-skill").addClass("btn-delete");
				
			    // 버튼 내부의 span 요소를 선택합니다.
			    var spanElement = $(this).find('span');
	
			    // span 요소의 내용을 변경합니다.
			    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="8" viewBox="0 0 10 8" fill="none"><path d="M0.826019 3.33516C0.637056 3.1462 0.330686 3.1462 0.141723 3.33516C-0.0472409 3.52412 -0.0472409 3.83049 0.141723 4.01946L3.36753 7.24526C3.55649 7.43423 3.86286 7.43423 4.05183 7.24526L9.85828 1.43881C10.0472 1.24985 10.0472 0.943479 9.85828 0.754515C9.66931 0.565552 9.36294 0.565552 9.17398 0.754515L3.70968 6.21882L0.826019 3.33516Z" fill="currentColor"></path></svg>');
				
			    let div_element = $(this).parent().find("div.div_skill");
			    div_element.css("color" , "#36f"); 
				
			} // END OF else if ( type == "button" )
			
			else{
				alert("잘못된 경로입니다. 하지마세요");
				return false; 
			}
	
			if  ( insert_count >= 5 ){
				alert(" 최대 5개의 기술스택만 선택할 수 있습니다.");
				return false ; 
			} // end of if 
			
			let html = ""; 
		
			html += '<li class="li-skill">' +
						        '<button type="button" class="btn-delete">' +
						          '<div class="div_insert_skill">' +
						            tech_name +
						            '<input type="hidden" id="insert-tech-code" value="'+tech_code+'"/>'+
						            '<span style="margin-left:4px; margin-bottom:2px;">' +
						              '<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">' +
						                '<path d="M0.882988 0.151497L5.00001 4.26852L9.11705 0.151497C9.31905 -0.0504989 9.6465 -0.0504989 9.8485 0.151497C10.0505 0.35349 10.0505 0.680994 9.8485 0.882988L5.7315 5.00001L9.8485 9.11705C10.0505 9.31905 10.0505 9.6465 9.8485 9.8485C9.6465 10.0505 9.31905 10.0505 9.11705 9.8485L5.00001 5.7315L0.882988 9.8485C0.680994 10.0505 0.35349 10.0505 0.151497 9.8485C-0.0504989 9.6465 -0.0504989 9.31905 0.151497 9.11705L4.26852 5.00001L0.151497 0.882988C-0.0504989 0.680994 -0.0504989 0.35349 0.151497 0.151497C0.35349 -0.0504989 0.680994 -0.0504989 0.882988 0.151497Z" fill="currentColor"></path>' +
						              '</svg>' +
						            '</span>' +
						          '</div>' +
						        '</button>' +
						      '</li>';
				
			$("ul#insertList").append(html) ;
			insert_count ++ ; 
			
		}// END OF FUNCTION INSERTSKILL 
		
		function deleteSkill (){
			// console.log( $(this).html() );
			// console.log( $(this).text());  EX : Spring Framework 
			let tech_name = $(this).text() ;
			 $("div.data-input button.btn-delete").each(function() {
					// console.log($(this).html());
					// console.log($(this).text());
					if ( $(this).text().includes(tech_name) ){
						// console.log($(this).parent().html());
						// console.log($(this).parent().parent().html() ) ;
						// $(this).parent().parent().remove(); => ul 태그 까지 사라져서 사용 불가능
						$(this).closest('li').remove(); //  다음과 같이 하면 , li 까지만 지워지게 된다.
						
						insert_count -- ; 
					} // end of if 
					
					
			 });// end of each.function
			
			 $("ul#recommendList button.btn-delete").each(function(){
				 if ( $(this).text().includes(tech_name)){
					  $(this).closest('button').removeClass("btn-delete").addClass("btn-skill");
					  // 버튼 내부의 span 요소를 선택합니다.
					   var spanElement = $(this).find('span');
	
					    // span 요소의 내용을 변경합니다.
					    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none"><path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path></svg>');
						
					    let div_element = $(this).parent().find("div.div_skill");
					    div_element.css("color" , "#333"); 
				 
				 }
				 
			 });
		} // END OF FUNCTION DELETESKILL 
		
		function sectionClose(){
			$("section#skillSearch").hide();
			$("ul#insertList").empty();
			insert_count = 0 ; 
			 $("ul#recommendList button.btn-delete").each(function(){
					
				  $(this).closest('button').removeClass("btn-delete").addClass("btn-skill");
				  // 버튼 내부의 span 요소를 선택합니다.
				   var spanElement = $(this).find('span');
	
				    // span 요소의 내용을 변경합니다.
				    spanElement.html('<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none"><path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path></svg>');
					
				    let div_element = $(this).parent().find("div.div_skill");
				    div_element.css("color" , "#333"); 
			 
			 });
			 
		}// END OF FUNCTION SECTIONCLOSE 
		
		function sectionAdjust(){
			let html ="" ;
			$("ul#insertList button.btn-delete").each(function(){
				let tech_name = $(this).text();
				// console.log($(this).text());
				let tech_code= $(this).find("input").val();
				// console.log(tech_code); // 1000 1002 1003
				  
				html += '<li class="li-skill">' +
	                   '<div class="div_skill">' +
	                   tech_name+
	                       '<input type="hidden" class="tech_code" value=" '+tech_code+' "/> '+
	                       '<span style="margin-left:4px; margin-bottom:2px; ">' +
	                           '<svg xmlns="https://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10" fill="none">' +
	                               '<path d="M4.59459 4.59459V0.405405C4.59459 0.181506 4.7761 0 5 0C5.2239 0 5.40541 0.181506 5.40541 0.405405V4.59459H9.59459C9.81849 4.59459 10 4.7761 10 5C10 5.2239 9.81849 5.40541 9.59459 5.40541H5.40541V9.59459C5.40541 9.81849 5.2239 10 5 10C4.7761 10 4.59459 9.81849 4.59459 9.59459V5.40541H0.405405C0.181506 5.40541 0 5.2239 0 5C0 4.7761 0.181506 4.59459 0.405405 4.59459H4.59459Z" fill="#bbbbbb"></path>' +
	                           '</svg>' +
	                       '</span>' +
	                   '</div>' +
	           '</li>';
			});
			$("ul#resultList").html(html); 
			$("section#skillSearch").hide();
		}// END OF FUNCTION SECTIONADJUST
		
		  
		
		  
		// #0. 
		// DB에 데이터를 넘기기 위해 입력 받은 년월 합쳐주는 함수 (경력, 주요성과, 수상 및 기타, 외국)
		function updateHiddenYears() {
		   
			for (var i = 1; i <= career_count; i++) {
		        var hiddenYearInput1 = document.getElementsByClassName('hiddenYear1' + i)[0];
		        var hiddenYearInput2 = document.getElementsByClassName('hiddenYear2' + i)[0];
			
		        var year1Input = document.getElementsByName('year1' + i)[0];
		        var month1Input = document.getElementsByName('month1' + i)[0];
		        hiddenYearInput1.value = year1Input.value + month1Input.value;

		        var year2Input = document.getElementsByName('year2' + i)[0];
		        var month2Input = document.getElementsByName('month2' + i)[0];
		        hiddenYearInput2.value = year2Input.value + month2Input.value;
		    }// end of for (var i = 1; i <= career_count; i++)--------------------------
		  
		    for (var i = 1; i <= achievementsDel_count; i++) {
		        var hiddenYearInput3 = document.getElementsByClassName('hiddenYear3' + i)[0];
		        var hiddenYearInput4 = document.getElementsByClassName('hiddenYear4' + i)[0];

		        var year3Input = document.getElementsByName('year3' + i)[0];
		        var month3Input = document.getElementsByName('month3' + i)[0];
		        hiddenYearInput3.value = year3Input.value + month3Input.value;

		        var year4Input = document.getElementsByName('year4' + i)[0];
		        var month4Input = document.getElementsByName('month4' + i)[0];
		        hiddenYearInput4.value = year4Input.value + month4Input.value;
		    } // end of for (var i = 1; i <= achievementsDel_count; i++)--------------
		  
		  
		    for (var i = 1; i <= schoolDel_count; i++) {
		        var hiddenYearInput5 = document.getElementsByClassName('hiddenYear5' + i)[0];
		        var hiddenYearInput6= document.getElementsByClassName('hiddenYear6' + i)[0];

		        var year5Input = document.getElementsByName('year5' + i)[0];
		        var month5Input = document.getElementsByName('month5' + i)[0];
		        hiddenYearInput5.value = year5Input.value + month5Input.value;

		        var year6Input = document.getElementsByName('year6' + i)[0];
		        var month6Input = document.getElementsByName('month6' + i)[0];
		        hiddenYearInput6.value = year6Input.value + month6Input.value;
		    } // end of for (var i = 1; i <= schoolDel_count; i++)---------------------
		  
		    for (var i = 1; i <= rewardDel_count; i++) {
		        var hiddenYearInput7 = document.getElementsByClassName('hiddenYear7' + i)[0];

		        var year7Input = document.getElementsByName('year7' + i)[0];
		        var month7Input = document.getElementsByName('month7' + i)[0];
		        hiddenYearInput7.value = year7Input.value + month7Input.value;
		    } // end of for (var i = 1; i <= rewardDel_count; i++)---------------------
		    
	        for (var i = 1; i <= languageDel_count; i++) {
		        var hiddenYearInput8 = document.getElementsByClassName('hiddenYear8' + i)[0];

		        var year8Input = document.getElementsByName('year8' + i)[0];
		        var month8Input = document.getElementsByName('month8' + i)[0];
		        hiddenYearInput8.value = year8Input.value + month8Input.value;
	        } // end of for (var i = 1; i <= languageDel_count; i++)---------------------
			      
		};// end of function updateHiddenYears()--------------------------------------------------

		 
		
		
		// 기타 기능 및 유효성 검사 함수 모음 //
		
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
			
		}; // end of function checkSubject()----------------------------------------
		
		
		// input 요소에서 Enter키를 누르면 데이터가 전송되어지는 것을 방지
		function preventEnter() {
			
			$(document).on("keydown", "input", function(e) {
				  if (e.keyCode == 13) {
				    e.preventDefault();
				    return false;
				  }
				});
		}; // end of function preventEnter()----------------------------------------

		
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

		}; // end of function checkContact()---------------------------------------
		
		
		// 작성 완료 버튼 클릭시 필수입력항목 유효성검사(공백 및 미작성만) 함수 
		function insertResume() {

/* 			// 필수입력사항이 모두 입력 됐는지 검사
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
			} */
			
			/* const formData = $("form[name='resumeForm']").serialize();
			console.log(formData); */
			// 입력된 값들을 담을 빈 배열 생성
			var languageList = [];

			// 입력된 input 태그들을 선택
			var dateInputs = document.getElementsByName("lang_Date");
			var contentInputs = document.getElementsByName("lang_content");
			var forLangInputs = document.getElementsByName("for_Lang");

			// 입력된 값들을 반복하여 JSON 객체로 생성
			for (var i = 0; i < dateInputs.length; i++) {
			  // 각 input 태그에서 값 가져오기
			  var dateValue = dateInputs[i].value;
			  var contentValue = contentInputs[i].value;
			  var forLangValue = forLangInputs[i].value;

			  // LanguageVO 객체 생성
			  var languageVO = {
			    lang_Date: dateValue,
			    lang_content: contentValue,
			    for_Lang: forLangValue
			  };

			  // LanguageVO 객체를 배열에 추가
			  languageList.push(languageVO);
			}

			// 생성된 JSON 객체 확인
			console.log(languageList);

			// 입력된 값들을 담을 빈 배열 생성
			var rewardList = [];

			// 입력된 input 태그들을 선택
			var dateInputs = document.getElementsByName("reward_Date");
			var rewardInputs = document.getElementsByName("reward");
			var contentInputs = document.getElementsByName("content");

			// 입력된 값들을 반복하여 JSON 객체로 생성
			for (var i = 0; i < dateInputs.length; i++) {
			  // 각 input 태그에서 값 가져오기
			  var dateValue = dateInputs[i].value;
			  var rewardValue = rewardInputs[i].value;
			  var contentValue = contentInputs[i].value;

			  // RewardVO 객체 생성
			  var rewardVO = {
			    reward_Date: dateValue,
			    reward: rewardValue,
			    content: contentValue
			  };

			  // RewardVO 객체를 배열에 추가
			  rewardList.push(rewardVO);
			}

			// 생성된 JSON 객체 확인
			console.log(rewardList);

			// #5.
			var ResumeVO= 
				  { 
					  fk_UserId :  "한오열" , 
					  subject : $("input[name='subject']").val() , 
					  introduce : $("input[name='introduce']").val(),
					  uploadLink : $("textarea[name='uploadLink']").val(), 
					  languageList :  languageList ,
					  rewardList : rewardList , 
					  // schoolvo : schoolvoList , 
					  //carrervo : carrervoList , 
					  // member_Techvo  : member_TechvoList 
				  }  ;
				  
			$.ajax({
				url: "/wanted/myresume",
				type: "post",
				async:"false",
				contentType: "application/json; charset=utf-8", 
				data: JSON.stringify(ResumeVO),
				success: function (result) {
					
				},
				error: function (request, status, error) {
					alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
				}
			});
			
			
			
			
		 	// 유효성 검사 후 최종 전송 확정
/* 			const frm = document.resumeFrm;
			frm.action = "/wanted/myresume";
			frm.method = "post";
			frm.submit(); */
		    
		}; // end of function insertResume()------------------------------
		
		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		
		
		
		// 버튼 클릭 이벤트 발생 -> 입력란 동적생성 함수 모음//
		
		// 경력의 추가버튼 클릭시 입력란 동적 생성해주는 함수
		// #1.
		function addCareer() {
			
			career_count ++;
			
			    var html = '<li id="careerDel_range'+career_count+'" style="list-style-type: none;">\n' +
			               '  <div style="display:flex; flex-direction: row">\n' +
			               '    <div style="width: 20%; display: flex; flex-direction: row;">\n' +
			               '      <div class="my-3" style="display: block; width: 100%; margin-right: 10px; flex-grow: 1;">\n' +
			               '        <input type="text" name="year1'+career_count+'" value="" placeholder="YYYY" maxlength="4" style="width: 41px;">${fk_userid}</input>\n' +
			               '        .\n' +
			               '        <input type="text" name="month1'+career_count+'" value="" placeholder="MM" maxlength="2" style="width: 28px;" />\n' +
			               '		<input type="hidden" name="start_Date" class="hiddenYear1'+career_count+'" value="">' +		
			               '        &nbsp;- &nbsp;\n' +
			               '        <input type="text" name="year2'+career_count+'" value="" placeholder="YYYY" maxlength="4" style="width: 41px;" />\n' +
			               '        .\n' +
			               '        <input type="text" name="month2'+career_count+'" value="" placeholder="MM" maxlength="2" style="width: 28px;" />\n' +
			               '		<input type="hidden" name="end_Date" class="hiddenYear2'+career_count+'" value="">' +
			               '        <span style="color:#ff425f;">*</span>\n' + 
			               '      </div>\n' +
			               '    </div>\n' +
			               '    <div class="my-3" style="display:block; width : 60%; margin-left: auto;">\n' +
			               '      <input type="text" name="company" placeholder="회사명" value="" style="width:80%; font-size:2opx;" />\n' +
			               '      <button id="careerDel_btn'+career_count+'" class="btn-delete" type="button" style="width:17%;">X</button>\n' +
			               '      <input type="text" name="department" placeholder="부서명/직책" value="" maxlength="255" style="width:100%; font-size:2opx;" />\n' +
			               '      <button type="button" class="plushtml" style="border-bottom:0px;" onclick="addAchievements('+career_count+')" id="achievements_btn'+career_count+'">+주요 성과 추가</button>\n' +
			               '	  <ul id="addAchievements'+career_count+'"></ul>\n' +	
			               '    </div>\n' +
			               '  </div>\n' +
			               '</li>';

			    // HTML 코드를 <ul> 태그에 추가합니다.
			    $('ul#addCareer').append(html);
			    
			    delCareer(career_count);
			    
			    updateHiddenYears();
			    
		}; // end of function addCareer()------------------------------------
		
		
		// 경력입력란 삭제함수
		function delCareer(career_count) {
			
			$("button#careerDel_btn"+career_count).on('click', function() {
	     	   $("#careerDel_range"+career_count).remove();
	     	});
			
		}; // end of function delCareer()-------------------------------------------------------
		
		
		// 주요 성과 추가 추가버튼 클릭시 입력란 동적 생성해주는 함수(이벤트 위임 받아서 생성)
		// #2.
		function addAchievements(count) {

			achievementsDel_count ++;
			
		  var html = '<li id="achievementsDel_range'+achievementsDel_count+'">\n' +
				     '  <input type="text" name="content" autocomplete="off" value="" placeholder="주요성과" style="width:80%; font-size:16px;"/>\n' +
				     '  <button id="achievementsDel_btn'+achievementsDel_count+'" class="btn-delete-detail" type="button" style="width:17%;">X</button>\n' +
				     '  <input type="text" name="year3'+achievementsDel_count+'" value="" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:38px; font-size:14px;"/>\n' +
				     '  .\n' +
				     '  <input type="text" name="month3'+achievementsDel_count+'" value="" autocomplete="off" placeholder="MM" maxlength="2" style="width:25px; font-size:14px;"/>\n' +
				     '	<input type="hidden" name="start_date_detail" class="hiddenYear3'+achievementsDel_count+'" value="">' +	
				     '  &nbsp;- &nbsp;\n' +
				     '  <input type="text" name="year4'+achievementsDel_count+'" value="" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:38px; font-size:14px;"/>\n' +
				     '  .\n' +
				     '  <input type="text" name="month4'+achievementsDel_count+'" value="" autocomplete="off" placeholder="MM" maxlength="2" style="width:25px; font-size:14px;"/>\n' +
				     '	<input type="hidden" name="end_date_detail" class="hiddenYear4'+achievementsDel_count+'" value="">' +	
				     '  <div style="display:flex;"><textarea name="perform_content" placeholder="상세 업무 내용과 성과를 기입해주세요." style="border:none; flex-grow:1;"></textarea></div>\n' +
				     '</li>';

		  // HTML 코드를 <ul> 태그에 추가합니다.
		  $('ul#addAchievements'+count).append(html);
		  
		  delAchievements(achievementsDel_count);
			
		  updateHiddenYears();
		  
		}; // end of function addAchievements()-----------------------------------
		
		
		// 주요 성과 입력란 삭제함수
		function delAchievements(achievementsDel_count) {
			
			$("button#achievementsDel_btn"+achievementsDel_count).on('click', function() {
	     	   $("#achievementsDel_range"+achievementsDel_count).remove();
	     	});
			
		}; // end of function delCareer()-------------------------------------------------------
		
		
		// 학력 추가 버튼 클릭시 학력입력란 동적 생성해주는 함수
		function addSchool() {
			
			schoolDel_count ++;
			
			var html = '  <div id="schoolDel_range'+schoolDel_count+'" style="display:flex; flex-direction: row">' +
			           '    <div style="display:flex; flex-direction: row; width: 100%; padding-left: 40px;">' +
			           '      <div class="my-3" style="display:block; width:36%; margin-right: 10px;">' +
			           '        <input type="text" name="year5'+schoolDel_count+'" value="" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:43px;"/>' +
			           '        .' +
			           '        <input type="text" name="month5'+schoolDel_count+'" value="" autocomplete="off" placeholder="MM" maxlength="2" style="width:30px;"/>' +
			           '		<input type="hidden" name="start_Date" class="hiddenYear5'+schoolDel_count+'" value="">' +
			           '        &nbsp;- &nbsp;' +
			           '        <input type="text" name="year6'+schoolDel_count+'" value="" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:43px;"/>' +
			           '        .' +
			           '        <input type="text" name="month6'+schoolDel_count+'" value="" autocomplete="off" placeholder="MM" maxlength="2" style="width:30px;"/>' +
			           '		<input type="hidden" name="end_Date" class="hiddenYear6'+schoolDel_count+'" value="">' +
			           '        <span style="color:#ff425f;">*</span>' +
			           '      </div>' +
			           '      <div class="my-3" style="display:block; width : 70%">' +
			           '        <input type="text" name="end_Date" autocomplete="off" value="" placeholder="학교명" style="width:80%; font-size:20px;"/>' +
			           '        <button id="schoolDel_btn'+schoolDel_count+'" value="" class="btn-delete" type="button" style="width:17%;">X</button>' +
			           '        <input type="text" name="major"  autocomplete="off" value="" placeholder="전공 및 학위 (ex: 경영학과 학사)" maxlength="255" style="width:100%; font-size:20px;"/>' +
			           '        <input type="text" name="content" autocomplete="off" value="" placeholder="이수과목 또는 연구내용" maxlength="255" style="width:100%; font-size:14px;"/>' +
			           '      </div>' +
			           '    </div>' +
			           '  </div>';

	           $('div.addSchool').append(html);
	           
	           delSchool(schoolDel_count); // addSchool()가 클릭을 통해 호출이 되면 카운트가 1이 증가된 상태.
	           							   // 하지만 별도의 함수인 delSchool의 클릭이벤트는 개별적으로 동작하기 때문에 각각의 schoolDel_count값이 다를 수 있는 경우가 있음,
	           							   // 그러므로 addSchool() 선언 내부에 호출되어있는 delSchool() 파라미터에 addSchool()의 schoolDel_count 를 전달
	           							   // 그래야 동일하게 schoolDel_count 값을 가질 수 있음.
	           
	           updateHiddenYears();
	           							   
		}; // end of function addSchool()-------------------------------------------------- 

		
		// 학력입력란 삭제함수
		function delSchool(schoolDel_count) {
			
			$("button#schoolDel_btn"+schoolDel_count).on('click', function() {
	     	   $("#schoolDel_range"+schoolDel_count).remove();
	     	});
			
		}; // end of function delSchool()-------------------------------------------------------
		
		
		// 수상 및 기타 추가 버튼 클릭시 입력란 동적 생성해주는 함수
		function addReward() {
			
			rewardDel_count ++;
			
			var html = '<div id="rewardDel_range'+rewardDel_count+'" style="display:flex; flex-direction: row">' +
					   '  <div class="my-3" style="display:block; width:30%; margin-right : 10px;">' +
					   '    <input type="text" name="year7'+rewardDel_count+'" value="" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:42px;"/>' +
					   '    .' +
					   '    <input type="text" name="month7'+rewardDel_count+'" value="" autocomplete="off" placeholder="MM" maxlength="2" style="width:36px;"/>' +
					   '	<input type="hidden" name="reward_Date" class="hiddenYear7'+rewardDel_count+'" value="">' +
					   '  </div>' +
					   '  <div class="my-3" style="display:block; width : 70%">' +
					   '    <input type="text" name="reward" autocomplete="off" value="" placeholder="활동명" style="width:80%; font-size:2opx;"/>' +
					   '    <button id="rewardDel_btn'+rewardDel_count+'" class="btn-delete" type="button" style="width:17%;">X</button>' +
					   '    <input type="text" name="content"autocomplete="off" value="" placeholder="세부사항" maxlength="255" style="width:100%; font-size:2opx;"/>' +
					   '  </div>' +
					   '</div>';
			
			$('div.addReward').append(html);
			
			delReward(rewardDel_count);
			
			updateHiddenYears();
			
		}; // end of function addReward()-------------------------------------------------
		
		
		// 수상 및 기타 입력란 삭제함수
		function delReward(rewardDel_count) {
			
			$("button#rewardDel_btn"+rewardDel_count).on('click', function() {
	     	   $("#rewardDel_range"+rewardDel_count).remove();
	     	});
			
		}; // end of delReward(rewardDel_count)------------------------------------------
		
		
		// 외국어 추가 버튼 클릭시 입력란 동적 생성해주는 함수
		function addLanguage() {
			
			languageDel_count ++;
			
			var html = '<div id="languageDel_range'+languageDel_count+'" style="display:flex; flex-direction: row">' +
			  		   '  <div class="my-3" style="display:block; width:30%; margin-right : 10px;">' +
					   '    <input type="text" name="year8'+languageDel_count+'" value="" autocomplete="off" placeholder="YYYY" maxlength="4" style="width:43px;"/>' +
					   '    .' +
					   '    <input type="text" name="month8'+languageDel_count+'" value="" autocomplete="off" placeholder="MM" maxlength="2" style="width:30px;"/>' +
	   				   '	<input type="hidden" name="lang_Date" class="hiddenYear8'+languageDel_count+'" value="">' +
					   '  </div>' +
					   '  <div class="my-3" style="display:block; width : 60%">' +
					   '    <input type="text" name="for_Lang" autocomplete="off" value="" placeholder="언어" style="width:80%; font-size:20px;"/>' +
					   '    <button id="languageDel_btn'+languageDel_count+'" class="btn-delete" type="button" style="width:17%;">X</button>' +
					   '    <input type="text" name="lang_content" value="" autocomplete="off" placeholder="세부사항" maxlength="255" style="width:100%; font-size:2opx;"/>' +
					   '  </div>';
			
			$('div.addLanguage').append(html);
			
			delLanguage(languageDel_count);
			
			updateHiddenYears();
			
		}; // end of function addLanguage()----------------------------------------------------------------------
		
		
		// 외국어입력란 삭제함수
		function delLanguage(languageDel_count) {
			
			$("button#languageDel_btn"+languageDel_count).on('click', function() {
	     	   $("#languageDel_range"+languageDel_count).remove();
	     	});
			
		}; // end of delLanguage(languageDel_count)------------------------------------------
		
</script>

<form name="resumeFrm" id="resumeForm" method="post">
		<div class="container inform">
				<p style="margin-bottom: 0px ; "><span class="matchup">매치업 이력서 </span> 
				<svg  style="width:18px; height: 18px; "class="SvgIcon_SvgIcon__root__svg__DKYBi" viewBox="0 0 24 24"><path fill-rule="evenodd" clip-rule="evenodd" d="M10.1952 21.2854L11.8874 20.4277C11.9581 20.3919 12.0421 20.3919 12.1127 20.4277L13.805 21.2854L13.827 21.2963C14.6729 21.71 15.7018 21.3753 16.1251 20.5487L16.9783 18.8828C17.0139 18.8133 17.0819 18.7651 17.1606 18.7534L19.0455 18.4753L19.07 18.4715C20.0031 18.3204 20.6342 17.4586 20.4795 16.5467L20.1677 14.709C20.1546 14.6323 20.1806 14.5542 20.2373 14.4996L21.595 13.1919L21.6125 13.1748C22.2765 12.5165 22.2686 11.4569 21.595 10.8081L20.2373 9.50038C20.1806 9.4458 20.1546 9.3677 20.1677 9.291L20.4795 7.45324L20.4833 7.42937C20.6246 6.51542 19.9808 5.66265 19.0455 5.52466L17.1606 5.24654C17.0819 5.23493 17.0139 5.18666 16.9783 5.11713L16.1251 3.45126L16.1139 3.42973C15.6784 2.60922 14.6447 2.28905 13.805 2.71461L12.1127 3.57229C12.0421 3.60808 11.9581 3.60808 11.8874 3.57229L10.1952 2.71461L10.1731 2.70364C9.32725 2.28997 8.29835 2.62469 7.87503 3.45126L7.02185 5.11713C6.98624 5.18666 6.91826 5.23493 6.83958 5.24654L4.95461 5.52466L4.93018 5.52844C3.99702 5.67962 3.36597 6.54138 3.52069 7.45324L3.83249 9.291C3.84551 9.3677 3.81954 9.4458 3.76287 9.50038L2.40519 10.8081L2.3877 10.8252C1.7237 11.4834 1.73153 12.5431 2.40519 13.1919L3.76287 14.4996C3.81954 14.5542 3.84551 14.6323 3.83249 14.709L3.52069 16.5467L3.51682 16.5706C3.3756 17.4846 4.01932 18.3373 4.95461 18.4753L6.83958 18.7534C6.91826 18.7651 6.98624 18.8133 7.02185 18.8828L7.87503 20.5487L7.88626 20.5703C8.32176 21.3908 9.35549 21.7109 10.1952 21.2854ZM13.2557 10.1725L12.4119 8.47279C12.2388 8.12309 11.7614 8.12309 11.5883 8.47279L10.7433 10.1725C10.6763 10.3084 10.5513 10.4034 10.4085 10.4272L8.59847 10.7426C8.22837 10.8059 8.08058 11.2797 8.34458 11.5594L9.63172 12.9239C9.73403 13.0335 9.78077 13.1852 9.7593 13.337L9.48646 15.2306C9.43088 15.6199 9.81614 15.9129 10.1521 15.7374L11.7929 14.8796C11.9231 14.8123 12.0772 14.8123 12.2073 14.8796L13.8468 15.7374C14.1828 15.9129 14.5693 15.6199 14.5138 15.2306L14.2396 13.337C14.2182 13.1852 14.2662 13.0335 14.3685 12.9239L15.6556 11.5594C15.9196 11.2797 15.7718 10.8059 15.4005 10.7426L13.5917 10.4272C13.4477 10.4034 13.3239 10.3084 13.2557 10.1725Z" fill="#8958FA"></path></svg>
				채용담당자에게 면접 제안을 받을 수 있는 기본이력서 입니다. 개인정보는 공개되지 않으니 안심하세요</p>
		</div>
		
		<div class="container my-5">
				<div class="input-group input-group-lg input-div">
				  <input type="text" value="" name="subject" class="required_input form-control resume-subject" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" 
				  placeholder="이력서 제목(필수)" >
				  <span class="error_comment" id="subject_error" style="margin-top: 35px; display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" value="" name="name" class="required_input form-control" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이름(필수)" >
				  <span class="error_comment" id="name_error" style="display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" value="" name="email" class="required_input form-control" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="이메일(필수) EX) wanted@wanted.com" >
				  <span class="error_comment" id="email_error" style="display: none;"></span>
				</div>
				
				<div class="input-group input-group-sm input-div">
				  <input type="text" value="" name="contact" class="required_input form-control noborder" autocomplete="off" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" 
				  placeholder="연락처(필수) EX) 01012345678" style="color: #3b3d40; font-size : 14px; " >
				  <span class="error_comment" id="contact_error" style="display: none;"></span>
				</div>
				
				<div class="resume-header" style="margin-top:60px;">
					간단 소개글 
				</div>
				<div>
					<p class="resume-inform">• 본인의 업무 경험을 기반으로 핵심역량과 업무 스킬을 간단히 작성해주세요.
					<br /> • 3~5줄로 요약하여 작성하는 것을 추천합니다!  </p>
					
					<textarea class="resume_text" name="introduce" placeholder="간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요. (3~5줄 권장)" oninput="autoResize(this)" maxlength= "2000"></textarea>
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
					<!-- 버튼을 누르면, DIV 가 생기게 하는 것 -->
					<div style="margin:auto; ">
					 	<button type="button" id="skill" class="btn btn-primary"  >
							 기술스택	
						</button>
					</div>	
					
					
					<section id="skillSearch">
								<div class="search-wrapper">
									<input type="text" id="search-skill"  placeholder=" 보유 기술 스택을 검색해주세요" style=""/>
									<button class="btn-search border-left" style="position : relative; top: -46px;  right: -482px;"><i class="fa-solid fa-magnifying-glass"></i></button>
									<!-- 검색시 결과가 뜨도록 하는 곳 -->
									
									<div class="search-result">
											<p class="search-answer-none"> 검색 결과가 없습니다.<br/>
											한글 검색결과가 없는 경우 영어로 검색해보세요</p>	
											<ul class="search-answer">
											
											</ul>
											
									</div>
									
									<h4 class="recommend">많이 쓰는 인기 기술스택을 추천해드려요</h4>
									<!-- 버튼들이 들어가는 ul -->
									<ul id="recommendList" style="padding-left:0px;"> 
									</ul>
					
									<!--  선택한 것들이 들어가는 곳-->
									<div class="data-input">
										<ul id="insertList" style="padding-left:0px;"> 
					
										</ul>
										
									</div>
									
									<p class="recommend">·기술 스택은 최대 5개까지만 선택가능합니다.</p>
								</div>
								
								<footer style="padding:10px;" class="border-top">
								
									<div style="text-align: right; margin-right: 10px; ">
										<button type="button" id="section-cancle">취소</button>
										<button type="button" id="section-adjust">적용하기</button>
									</div>
								
								</footer>
							
					</section>
					                         
					<!--  적용하기 클릭 후 선택했던 값들이 들어가는 공간 -->                         
					 <div class="data-result">
						<ul id="resultList" style="padding-left:0px;"> 
	
						</ul>
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
						<textarea name="uploadLink" oninput="autoResize(this)" maxlength= "2000" placeholder="ex) wanted.tistory.com" style="border: none; width: 100%;"></textarea>
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