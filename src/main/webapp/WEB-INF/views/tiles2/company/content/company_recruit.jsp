<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">

	.main_frame{
		border: solid 0px black;
		width:100%;
		height:100%;
		background-color: #f7f7f7;
		padding: 100px 0;
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
	.duty_select{
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
	
	
	.career_select{
	    padding-left: 12px;
	    width: 100%;
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
	
</style>

<script type="text/javascript">

$(document).ready(function() {
		
		$(function() {
			
            //모든 datepicker에 대한 공통 옵션 설정
            $.datepicker.setDefaults({
                 dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트                    
            });
 
            //input을 datepicker로 선언
            $("input#create_input").datepicker();                    
            $("input#deadline_input").datepicker();
            
            //From의 초기값을 오늘 날짜로 설정
            $('input#create_input').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, +1M:한달후, +1Y:일년후)
            
            //To의 초기값을 30일후로 설정
            $('input#deadline_input').datepicker('setDate', '+30D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, +1M:한달후, +1Y:일년후)
        });
		
	});	
	
</script>

<div class="main_frame">
	<div class="main_content">
		<div class="content_header">
			<div class="cancel"><p>취소</p></div>
			<div class="content_title"><p>공고 등록</p></div>
			<div class="submit"><p>등록</p></div>
		</div>
		<div class="content_body">
			<div class="category">
				<label class="con_title">직군선택</label><br>
				<select class="job_select">
				    <c:forEach var="map" items="${requestScope.JobList}">
				    	<option value="${map.job_code}">${map.job_name}</option>
				    </c:forEach>
				</select>
			</div>
			<div class="dcategory">
				<label class="con_title">직무선택</label><br>
				<select class="duty_select">
				    <option value="1">웹개발자</option>
				</select>
			</div>
			<div class="subject">
				<label class="con_title">공고 제목</label>
				<input class="subject_input"></input>
			</div>
			<div class="career">
				<label class="con_title">경력선택</label>
				<select class="career_select">
				    <option value="1">1년차</option>
				    <option value="2">2년차</option>
				    <option value="3">3년차</option>
				    <option value="4">5년차</option>
				    <option value="5">10년차</option>
				</select>
			</div>
			<div class="info">
				<label class="con_title">공고 내용</label>
				<textarea class="info_textarea"></textarea>
			</div>
			<div class="duty">
				<label class="con_title">주요 업무</label>
				<textarea class="duty_textarea"></textarea>
			</div>
			<div class="duty">
				<label class="con_title">필요 역량</label>
				<textarea class="quality_textarea"></textarea>
			</div>
			<div class="file">
				<label class="con_title">구직상세이미지</label><br>
				<input type="file" name="pimage1" class="infoData img_file" accept='image/*' />
			</div>
			<div class="quality">
				<label class="con_title">연   봉</label><br>
				<input class="sal_input"></input><span>&nbsp;만 원</span>
			</div>
			<div class="create">
				<label class="con_title">등 록 일</label><br>
				<input  type="text" id="create_input" name="create_input" class="create_input"></input>
			</div>
			<div class="deadline">
				<label class="con_title">마 감 일</label><br>
				<input type="text" id="deadline_input" name="deadline_input" class="deadline_input" ></input>
			</div>
		</div>
	</div>
</div>



