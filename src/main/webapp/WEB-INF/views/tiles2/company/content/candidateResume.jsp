<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<style type="text/css">

	div#mySide {
		border-right: solid 1px #ddd;
	}
	
	.resumeFrm {
		margin-bottom: 100px;
	}
	
	.form-control {
		 border: solid 3px #D6EAFE;
		 margin: 10px 0;
	}
	
	div.resume-header{
	    padding: 20px 0 6px;
	    font-size: 18px;
	    font-weight: bold;
	    color: #184CED;
	    border-bottom: 1px solid #bababa;
	}
	
	.content{
	    padding: 20px;
	    background-color: #f3f9fe;
	    font-size: 15px;
	    line-height: 1.42;
	    letter-spacing: normal;
	    color: #666;
	    margin-top: 10px;	
	}

	#date {
		float: left;
		display: flex; 
		width: 300px;
	}
	
	.skillList {
	  display: flex;
	  height: 45px;
	  border-radius: 50px;
	  font-weight: bold;
	  font-size: 14pt;
	  margin: 5px;
	  font-style: none;
	  display: flex;
	  justify-content: center;
	  background-color: #184CED;
	  color: #fff;
	  flex-wrap: wrap;
	  width: max-content;
	  padding: 10px;
	  min-width: 100px;
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
		width: 150px;
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
	
	
	button#myBtn {
		position: fixed;
		top: 800px;
		left: 92%;
		background-color: #91DFDA;
		outline: none;
		border: none;
		width: 3%;
		height: 6%;
		border-radius: 10px;
		font-size: 15pt;
	}  
	
	button:hover {
		cursor: pointer;
	}
	
	.fail {
		position:relative;
		width: 250px;
		height: 55px;
		border-radius: 10px;
		line-height: 45px;
		font-weight: bold;
		font-size: 15pt;
		border: solid 1px #67A0FF;
		background-color: #E0F1FE;  
		color: #67A0FF;
		display: flex;
	    justify-content: center;
	    align-items: center;
	    margin-top: 20px;
	}

	.resultPass {
		width: 300px;
		border: solid 1px red;
		font-weight: bold;
		font-size: 16pt;
		line-height: 60px;
		border: solid 1px #67A0FF;
		background-color: #E0F1FE;  
		color: #67A0FF;
		border-radius: 10px;
		text-align: center;
	}
	
	.resultFail {
		width: 300px;
		border: solid 1px red;
		font-weight: bold;
		font-size: 16pt;
		line-height: 60px;
		border: solid 1px #ddd;
		background-color: #ddd;  
		color: balck;
		border-radius: 10px;
		text-align: center;
	}

	
</style>

<script type="text/javascript">

	function updatePass(applyCode) {
		
	  if (confirm("정말 합격 처리 하시겠습니까?")) {
		
		  $.ajax({
		    url: "updateStatus",
		    type: "GET",
		    data: { status: 1,
		    		applyCode: applyCode },
		    success: function(response) {
		        alert("합격 처리 되었습니다.");
		    },
		    error: function(request, status, error) {
		    	alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
		      	console.log("합격 상태 업데이트 실패");
		    }
		  });
	  }
	}
	
	

	function updateFail(applyCode) {
		
		if (confirm("정말 불합격 처리 하시겠습니까?")) {
			
		  $.ajax({
		    url: "updateStatus",
		    type: "GET",
		    data: { status: 2,
		    		applyCode: applyCode },
		    success: function(response) {
		        console.log("불합격 처리 되었습니다.");
		    },
		    error: function(request, status, error) {
		    	alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
		      	console.log("불합격 상태 업데이트 실패");
		    }
		  });
		}
	}

</script>


<form class="resumeFrm">
		
		<div class="container my-5">
			<h2 id="subject" class="form-control" style="margin: 50px 0 !important; height: 70px; font-size: 28pt;">
			${resume.subject}
			</h2>

			<h4 id="name" class="form-control" style="font-size: 15pt; font-weight: bold;">
			${resume.name}
			</h4>

			<h4 id="email" class="form-control" style="font-size: 15pt; font-weight: bold;">
			${resume.fk_userid}
			</h4>

			<h4 id="mobile" class="form-control" style="font-size: 15pt; font-weight: bold;">
			${resume.mobile}
			</h4>
			
			
			<div class="resume-header" style="margin-top:40px;">
				간단 소개글 
			</div>
			<div>
				<p id="introduce" class="content" style="font-size: 13pt;">${resume.introduce}</p>
			</div>
			
			
			<div class="resume-header" style="margin-top:60px;">
				경력
			</div>
			<c:forEach var="career" items="${career}"  varStatus="status">
				<div id="career" class="content">
				<table>
					<tr style="display: flex;">
						<td id="date"><h6>${career.start_date}</h6>&nbsp;-&nbsp;<h6>${career.end_date}</h6></td>
						<td id="company" style="display: block !important;">
							<h5>${career.company}</h5><h6>${career.department}</h6>
							
							<c:forEach var="performance" items="${performance}"  varStatus="status">
							<div id="performance" class="content">
							<h6 style="margin: 20px;"><i class="fa-solid fa-user-tie"></i> 주요성과  </h6>
							<div id="date" style="margin-left: 20px; height: 100px;"><h6>${performance.start_date}</h6>&nbsp;-&nbsp;<h6>${performance.end_date}</h6></div>
							<h6>${performance.perfrom_content}</h6>
							</div>
							</c:forEach>
							
						</td>
					</tr>
				</table>	
				</div>
		</c:forEach>							

				
			<div class="resume-header" style="margin-top:60px;">
				학력 
			</div>
			<c:forEach items="${school}" var="school" varStatus="status">
		        <div id="school" class="content">
		            <table>
		                <tr style="display: flex;">
		                    <td id="date"><h6>${school.start_date}</h6>&nbsp;-&nbsp;<h6>${school.end_date}</h6></td>
		                    <td id="company" style="display: block !important;">
		                        <h5>${school.school}</h5><h6>${school.major}</h6>
		                        <h6 style="margin: 20px;"><i class="fa-solid fa-graduation-cap"></i> 이수과목 또는 연구내용</h6>
		                        <p style="margin-left: 20px;">${school.content}</p>
		                    </td>
		                </tr>
		            </table>
		        </div>
			</c:forEach>
			
			
			<div class="resume-header" style="margin-top:60px;">
				스킬
			</div>
			<div id="memberTech" class="content" style="display: flex;">
			<c:forEach items="${memberTech}" var="memberTech" varStatus="status">
					<div class="skillList" id="memberTech" >${memberTech.fk_tech_name}</div>
			</c:forEach>	
			</div>

			
			<div class="resume-header" style="margin-top:60px;">
				수상 및 기타
			</div>
			<c:forEach items="${reward}" var="reward" varStatus="status">
				<div id="award" class="content">
					<table>
					<tr style="display: flex;">
						<td id="date"><h6>${reward.reward_date}</h6></td>
						<td id="company" style="display: block !important;">
							<h5>${reward.reward}</h5>
							<h6 style="margin: 20px;"><i class="fa-solid fa-medal"></i> 세부사항</h6>
							<p style="margin-left: 20px;">${reward.content}</p>
						</td>
					</tr>
				</table>
				</div>
			</c:forEach>	
			

			<div class="resume-header" style="margin-top:60px;">
				외국어
			</div>
			<c:forEach items="${language}" var="language" varStatus="status">
				<div id="language" class="content">
					<table>
					<tr style="display: flex;">
						<td id="date"><h6>${language.lang_date}</h6></td>
						<td id="company" style="display: block !important;">
							<h5>${language.for_lang}</h5>
							<h6 style="margin: 20px;"><i class="fa-solid fa-comment"></i> 세부사항</h6>
							<p style="margin-left: 20px;">${language.lang_content}</p>
						</td>
					</tr>
				</table>
				</div>
			</c:forEach>	

			
			<div class="resume-header" style="margin-top:60px;">
				링크 
			</div>
			<div id="link" class="content">
				<i class="fa-solid fa-desktop"></i><a style="font-size: 15pt; text-decoration: none;" href="${resume.uploadLink}">&nbsp;&nbsp;${resume.uploadLink}</a>
			</div>

		</div>

		<div class="container-fluid border-top fixed-bottom" style="width: 100%; padding: 5px 0;">
		
			<div style="display:flex; width: 100%; float: right; justify-content: space-between;">		
				<div style="margin-left: 4%;">
				<button class="status_button3" type="button" onclick="javascript:history.back()"><span>지원자 목록</span></button>
				</div>
				
				<div style="display: flex; align-items: center; padding-top: 10px;">
				<h5 style="margin-left: 10px; width: max-content;"><i class="fa-solid fa-quote-left"></i>&nbsp;&nbsp;${resume.post_subject}&nbsp;&nbsp;<i class="fa-solid fa-quote-right"></i> 공고에 관한 지원이력서 입니다.</h5>
				</div>
		
				<div style="margin-right: 4%;">
				    <c:choose>
				        <c:when test="${apply.status eq 3}">
				            <button class="status_button1" type="button" onclick="updatePass('${applyCode}')"><span>합 격</span></button>
				            <button class="status_button2" type="button" onclick="updateFail('${applyCode}')"><span>불 합 격</span></button>
				        </c:when>
				        <c:when test="${apply.status eq 1}">
				            <div class="resultPass">합격 처리된 이력서입니다.</div>
				        </c:when>
				        <c:when test="${apply.status eq 2}">
				            <div class="resultFail">불합격 처리된 이력서입니다.</div>
				        </c:when>
				    </c:choose>
				</div>

	
				
								
			</div>
			
		</div>

</form>


	<nav>
	<!-- to Top btn 끝 -->
	<div class="myfixed div_table">
	   	<div id="div_table_cell">  
	   		<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa-solid fa-arrow-up" style="color: #ffffff;"></i></button>
	   	</div>
	</div> 
	<!-- to Top btn 끝 -->
	</nav>

<script>

	$("button#myBtn").hide();

	window.onload = function() {
		// Get the button
		let mybutton = document.getElementById("myBtn");
		window.onscroll = function() {scrollFunction()};
		function scrollFunction() {
		  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		    mybutton.style.display = "block";
		  } 
		  else {
		    mybutton.style.display = "none";
		  }
		}
	}
	// button 클릭시, 화면상단으로 스크롤
	function topFunction() {
	  window.scrollTo({top:0, behavior:'smooth'});
	};
	
</script>
	
	