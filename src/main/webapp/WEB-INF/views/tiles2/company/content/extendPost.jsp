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
	
	.content_bottom{
		display: flex;
		justify-content: center;
  		align-items: center;
	}
	
	.payment{
		background-color: #184CED;
		color: #FFF;
		cursor: pointer;
		border: none;
		width: 500px;
	    height: 100px;
	    font-size: 20pt;
	    border-radius: 10px;
	}
	
	.payment:hover{
		border: solid 1px #3366FF;
		background-color: #ECF1FE !important; 
		color: #184CED;
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
	.deadline,
	.updateDeadline{
		width: 750px;
		height: 90px;
		border: solid 0px gray;
	}
	
	.info{
		width: 750px;
		height: 250px;
		border: solid 0px gray;
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

	.con_title{
		color: #888;
		font-weight: bold;
	}
	
</style>

<script type="text/javascript">
	
	$(document).ready(function() {
						
		
						
	});// end of $(document).ready(function()
			
	function extend(){
		const checkbox_checked_len = $("input:checkbox[id='agree']:checked").length;
		
		if(checkbox_checked_len == 0){
			alert('공고내용을 확인하셔야합니다.');
			return; // 함수종료
		}
		
		const checkbox_checked_len1 = $("input:checkbox[id='agree1']:checked").length;
		
		if(checkbox_checked_len1 == 0){
			alert('가격확인에 체크하셔야합니다.');
			return; // 함수종료
		}
		
		const frm = document.extendPostFrm;
		frm.action = "goExtendPost";
		frm.method = "post";
		frm.submit();
		
	}			
	
</script>
<body>
	<div class="main_frame">
		<div class="main_content">
			<div class="content_header">
				<div class="cancel" onclick="javascript:history.back()"><p>취소</p></div>
				<div class="content_title"><p>공고 상세페이지</p></div>
			</div>
			<div class="content_body">				
				<c:forEach  var="map" items="${requestScope.extendPost}">
					<div class="category">
						<label class="con_title">직군선택</label><br>
						<h3>${map.job_name}</h3>
					</div>
					<div class="dcategory">
						<label class="con_title">직무선택</label><br>
						<h3>${map.duty_name}</h3>
					</div>
					<div class="subject">
						<label class="con_title">공고 제목</label>
						<h3>${map.subject}</h3>
					</div>
					<div class="career">
						<label class="con_title">최소경력선택</label><br>
						<h3>${map.career}년차 이상</h3>
					</div>
					<div class="info">
						<label class="con_title">공고 내용</label>
						<textarea class="info_textarea" id="info_textarea" name="info" disabled>${map.info}</textarea>
					</div>
					<div class="duty">
						<label class="con_title">주요 업무</label>
						<textarea class="duty_textarea" id="duty_textarea" name="mainduty" disabled>${map.mainduty}</textarea>
					</div>
					<div class="duty">
						<label class="con_title">필요 역량</label>
						<textarea class="quality_textarea" id="quality_textarea" name="quality" disabled>${map.quality}</textarea>
					</div>
					<div class="quality">
						<label class="con_title">연   봉</label><br>
						<h3>${map.salary} 만원</h3>
					</div>
					<div class="create">
						<label class="con_title">등 록 일</label><br>
						<h3>${map.createday}</h3>
					</div>
					<div class="deadline">
						<label class="con_title">기존 마 감 일</label><br>
						<h3>${map.deadline}</h3>
					</div>
					<div class="updateDeadline">
						<label class="con_title">갱신 마 감 일</label><br>
						<h3>${map.updateDeadline}</h3>
					</div>
					<span style="font-size: 15pt;">공고 내용을 확인하셨습니까?</span>&nbsp;&nbsp;<input type="checkbox" id="agree" /><br><br>
					<span style="font-size: 15pt;">공고는 30일 연장되며, 가격은 30일간 300,000원 입니다.</span>&nbsp;&nbsp;<input type="checkbox" id="agree1" /><br><br>
					<div class="content_bottom">
						<button type="button" id="payment" class="payment" onclick="extend()">결제하기</button>
					</div>
					<form name="extendPostFrm">
						<input type="hidden" name="post_code" value="${map.post_code}" readonly></input>	
					</form>	
				</c:forEach>										
			</div>
		</div>
	</div>
</body>


