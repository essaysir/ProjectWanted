<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<% 
	String ctxPath = request.getContextPath(); 
%>


<style>
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
    	
    		
	}); // END OF DOCUMENT.READY(FUNCTION)
	
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
	

	
</script>

</head>
<body>
<!-- 버튼을 누르면, DIV 가 생기게 하는 것 -->
<div style="margin:auto; text-align: center; ">
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

                        
</body>


