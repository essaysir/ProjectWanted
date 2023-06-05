<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
	
	body{
		background-color: #F2F4F7;
	}
	
	.main_frame{
		border: solid 0px black;
		width:100%;
		height:100%;
	}
	
	.main_content{
		width: 800px;
		margin:0 auto;
		border-radius: 4px;
		border: solid 0px black;
		background-color: #fff;
	}
	
	.content_header{
		padding: 0 20px;
		border: solid 0px blue;
		width:100%;
		height: 70px;
	}
	
	.cancel{
		width:100px;
		height: 60px;
		float: left;
      	clear: left;
		display: inline;
		text-align: center;
		font-weight: bold;
		font-size: 19px;
		margin-top:10px;
		padding-top: 15px;
		border: solid 1px #f7f7f7;
		border-radius: 4px;
	}
	
	.content_title{
		width: 555px;
    	height: 70px;
		display: inline-block;
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		margin-top: 20px;
	}
	
	.submit{
		width:100px;
		height: 60px;
		float: right;
      	clear: right;
		display: inline;
		text-align: center;
		font-size: 19px;
		font-weight: bold;
		padding-top: 15px;
		border: solid 1px #f7f7f7;
		border-radius: 4px;
		margin-top:10px;
	}
	
	.cancel:hover,
	.submit:hover{
		border: solid 1px black;
		cursor: pointer;
	}
	
	.content_body{
		width: 800px;
		border: solid 0px;
		padding: 20px;
	}
	
	.category,
	.dcategory,
	.subject,
	.career,
	.file,
	.create,
	.deadline{
		width: 750px;
		height: 90px;
		border: solid 0px gray;
	}
	
	.info{
		width: 750px;
		height: 250px;
		border: solid 0px gray;
	}
	
	.subject_input{
		width: 100%;
	    height: 50px;
	    padding: 0px 12px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid gray;
	    border-radius: 5px;
	    font-size: 16px;
	    font-weight: 400;
	    margin-bottom: 8px;
	}
	
	.sal_input{
		width: 50%;
	    height: 50px;
	    padding: 0px 12px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid gray;
	    border-radius: 5px;
	    font-size: 16px;
	    font-weight: 400;
	    margin-bottom: 8px;
	    text-align: right;
	}
	
	.info_textarea,
	.duty_textarea,
	.quality_textarea{
		width: 100%;
	    height: 200px;
	    padding: 12px 12px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid gray;
	    border-radius: 5px;
	    font-size: 16px;
	    font-weight: 400;
	    margin-bottom: 8px;
	    
	}
	
	.job_select,
	.duty_select,
	.career_select{
	    padding-left: 12px;
	    width: 45%;
	    left: 0;
	    height: 50px;
	    border: solid 1px gray;
	    border-radius: 4px;
	    background: none;
	    z-index: 1;
	    font-size: 16px;
	    color: gray;
	    font-weight: 400;
	}

	.con_title{
		color: #888;
		font-weight: bold;
	}
	
	.subject_input:focus,
	.info_textarea:focus,
	.sal_input:focus,
	.duty_textarea:focus,
	.quality_textarea:focus{
		border: 1px solid #184CED;
	}
	
	.job_select:focus,
	.career_select:focus,
	.create_input:focus,
	.deadline_input:focus{
		border: 2px solid black;
	}
	
	span.error,
	span.error2,
	span.error3{
		color: red;
	}
	
</style>

<script type="text/javascript">
	
	$(document).ready(function() {
		
		$("span.error").hide();
		$("span.error2").hide();
		
		$(function() {
	        //모든 datepicker에 대한 공통 옵션 설정
	        $.datepicker.setDefaults({
	             dateFormat: 'yy-mm-dd',
	             showOtherMonths: true,
	             showMonthAfterYear: true,
	             changeYear: true,
	             changeMonth: true,
	             yearSuffix: "년",
	             monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	             dayNamesMin: ['일','월','화','수','목','금','토'],
	             dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일']
	        });
			
	        var today = new Date(); // 오늘 날짜
	        var maxCreate = new Date();
	        var maxDeadline = new Date();
	        maxCreate.setDate(today.getDate() + 30); // 오늘 날짜에서 30일 후
	        maxDeadline.setDate(maxCreate.getDate()+30); // create 선택된 날짜에서 60일 후

	        $("input#create_input").datepicker({
	            minDate: today,
	            maxDate: maxCreate,
	            onSelect: function(selectedDate) {
	                // create 선택된 날짜 변경 시 deadline 날짜 업데이트
	                var selected = new Date(selectedDate);
	                var newMaxCreate = new Date(selected);
	                var newMaxDeadline = new Date(selected);
	                newMaxCreate.setDate(selected.getDate() + 30);
	                newMaxDeadline.setDate(newMaxCreate.getDate()+30);
	                $("input#create_input").datepicker("option", "maxDate", newMaxCreate);
	                $("input#deadline_input").datepicker("option", "minDate", newMaxCreate);
	                $("input#deadline_input").datepicker("option", "maxDate", newMaxDeadline);
	                $("input#deadline_input").datepicker("setDate", newMaxCreate);
	            }
	        });

	        $("input#deadline_input").datepicker({
	            minDate: maxCreate,
	            maxDate: maxDeadline
	        });

	        $('input#create_input').datepicker('setDate', 'today');
	        $('input#deadline_input').datepicker('setDate', '+30D');
	    
	    });
		
		$("input:text[id='create_input']").keyup(function(){
			
			alert("등록일은 마우스클릭으로만 지정할수 있습니다.");
			$(this).val("");
		});
		
		$("input:text[id='deadline_input']").keyup(function(){
			
			alert("마감일은 마우스클릭으로만 지정할수 있습니다.");
			$(this).val("");
		});
					
		$("div#submit").click(function(){
			const job_select = $("select#job_select").val();
			if (job_select == 999) {
				$("#job_select").parent().find(".error").show();
  				alert("제출에 실패했습니다.");
  				return;
			} else {
				$("#job_select").parent().find(".error").hide();
			}
			
			const duty_select = $("select#duty_select").val();
			if (duty_select == 999) {
				$("#duty_select").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
				return;
			} else {
				$("#duty_select").parent().find(".error").hide();
			}
			
			const subject_input = $("input#subject_input").val();
			if (subject_input.trim() == "") {
			    $(".subject_input").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$(".subject_input").parent().find(".error").hide();
			}
			
			var career_select = $("select#career_select").val();
			if (career_select == 999) {
			    $("#career_select").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$("#career_select").parent().find(".error").hide();
			}
			
			let info_textarea = $("textarea#info_textarea").val();
			info_textarea = info_textarea.replace(/&nbsp;/gi, "");
			if (info_textarea.trim() == "") {
			    $(".info_textarea").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$(".info_textarea").parent().find(".error").hide();
			}
			
			let duty_textarea = $("textarea#duty_textarea").val();
			duty_textarea = duty_textarea.replace(/&nbsp;/gi, "");
			if (duty_textarea.trim() == "") {
			    $(".duty_textarea").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$(".duty_textarea").parent().find(".error").hide();
			}
			
			let quality_textarea = $("textarea#quality_textarea").val();
			quality_textarea = quality_textarea.replace(/&nbsp;/gi, "");
			if (quality_textarea.trim() == "") {
			    $(".quality_textarea").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$(".quality_textarea").parent().find(".error").hide();
			}
			
			var sal_input = $("input#sal_input").val();
			if (sal_input.trim() == "") {
			    $(".sal_input").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				  if (isNaN(sal_input)) {
				      
				      $(this).val('');
				      $(".sal_input").parent().find(".error").hide();
				      $(".sal_input").parent().find(".error2").show();
				      alert("제출에 실패했습니다.");
				      return;
				  }
				  else{
					  $(".sal_input").parent().find(".error").hide();
					  $(".sal_input").parent().find(".error2").hide();
				  }
			    
			}
			
			var create_input = $(".create_input").val();
			if (create_input.trim() == "") {
			    $(".create_input").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$(".create_input").parent().find(".error").hide();
			}
			
			var deadline_input = $(".deadline_input").val();
			if (deadline_input.trim() == "") {
			    $(".deadline_input").parent().find(".error").show();
			    alert("제출에 실패했습니다.");
			    return;
			} else {
				$(".deadline_input").parent().find(".error").hide();
			}
			
			const checkbox_checked_len = $("input:checkbox[id='agree']:checked").length;
			
			if(checkbox_checked_len == 0){
				alert('공고시작일을 확인하셔야 합니다.');
				return; // 함수종료
			}
			
			const frm = document.editRecruitFrm;
			frm.action = "getEditRecruit";
			frm.method = "post";
			frm.submit();
			
		});// end of $("div#submit").click(function()		
						
	});// end of $(document).ready(function()
	
	
</script>
<body>
	<div class="main_frame">
		<div class="main_content">
			<div class="content_header">
				<div class="cancel" onclick="javascript:history.back()"><p>취소</p></div>
				<div class="content_title"><p>공고 수정</p></div>
				<div class="submit" id="submit"><p>수정</p></div>
			</div>
			<div class="content_body">
				<form name="editRecruitFrm">
				<c:forEach  var="map" items="${requestScope.editRecruit}">
					<div class="category">
						<label class="con_title">직군선택</label>&nbsp;&nbsp;<span class="error3">수정이 불가한 사항입니다.</span><br>
						<select class="job_select" id="job_select" disabled>
						    <option value="${map.job_code}">${map.job_name}</option>
						</select>
					</div>
					<div class="dcategory">
						<label class="con_title">직무선택</label>&nbsp;&nbsp;<span class="error3">수정이 불가한 사항입니다.</span><br>
						<select class="duty_select" id="duty_select" name="fk_duty_code" disabled>
							<option value="${map.duty_code}">${map.duty_name}</option>
						</select>
					</div>
					<div class="subject">
						<label class="con_title">공고 제목</label>&nbsp;&nbsp;<span class="error">공고 제목 입력은 필수입력 사항입니다.</span>
						<input class="subject_input" id="subject_input" name="subject" value="${map.subject}"></input>
					</div>
					<div class="career">
						<label class="con_title">최소경력선택</label>&nbsp;&nbsp;<span class="error">경력선택은 필수선택 사항입니다.</span><br>
						<select class="career_select" id="career_select" name="career">
							<option value="999">:::선택하세요:::</option>
							<option value="0">신입</option>
						    <option value="1">1년차</option>
						    <option value="2">2년차</option>
						    <option value="3">3년차</option>
						    <option value="4">4년차</option>
						    <option value="5">5년차</option>
						    <option value="6">6년차</option>
						    <option value="7">7년차</option>
						    <option value="8">8년차</option>
						    <option value="9">9년차</option>
						    <option value="10">10년차</option>
						</select>
					</div>
					<div class="info">
						<label class="con_title">공고 내용</label>&nbsp;&nbsp;<span class="error">공고 내용 입력은 필수입력 사항입니다.</span>
						<textarea class="info_textarea" id="info_textarea" name="info" >${map.info}</textarea>
					</div>
					<div class="duty">
						<label class="con_title">주요 업무</label>&nbsp;&nbsp;<span class="error">주요 업무 입력은 필수입력 사항입니다.</span>
						<textarea class="duty_textarea" id="duty_textarea" name="mainduty">${map.mainduty}</textarea>
					</div>
					<div class="duty">
						<label class="con_title">필요 역량</label>&nbsp;&nbsp;<span class="error">필요 역량 입력은 필수입력 사항입니다.</span>
						<textarea class="quality_textarea" id="quality_textarea" name="quality">${map.quality}</textarea>
					</div>
					<div class="quality">
						<label class="con_title">연   봉</label>&nbsp;&nbsp;<span class="error">연봉 입력은 필수입력 사항입니다.</span><span class="error2">연봉 입력은 숫자만 가능합니다.</span><br>
						<input class="sal_input" id="sal_input" name="salary" value="${map.salary}"></input><span>&nbsp;만 원</span>
					</div>
					<div class="create">
						<label class="con_title">등 록 일</label>&nbsp;&nbsp;<span class="error3">공고시작일을 확인해주세요.</span>&nbsp;&nbsp;<input type="checkbox" id="agree" /><br>
						<input  type="text" id="create_input" name="createday" class="create_input"></input>
					</div>
					<div class="deadline">
						<label class="con_title">마 감 일</label><br>
						<input type="text" id="deadline_input" name="deadline" class="deadline_input" ></input>
					</div>
					<input type="hidden" name="post_code" value="${map.post_code}" readonly></input>
				</c:forEach>	
				</form>
			</div>
		</div>
	</div>
</body>


