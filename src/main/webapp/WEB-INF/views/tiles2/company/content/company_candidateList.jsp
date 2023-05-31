<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<style type="text/css">

	body {
		background-color: #F2F4F7;
	}
	
	h3{
		width: 1500px;
		margin: 50px auto;
	}
	
	button#btnExcel {
		float: right;
		margin: 50px 60px 0 0;
		height: 40px;
		font-size: 12pt;
	}
	
	div.listForm {
		margin-top: 50px;
	}
	
	table.containerTitle {
		border: solid 2px #ddd;
		background-color: #fff;
		height: 50px;
		width: 1500px;
		margin: 0 auto;
	}
	
	th.formTitle {
		font-size: 13pt;
		height: 40px;
		border-top: solid 2px #ddd;
		border-bottom: solid 2px #ddd;
		background-color: #F5F9FD;
		text-align: center;
	}
	
	td.tabcontent {
		height: 600px;
		text-align: center;
	}
	
	
	
	/* 표 상단 tab */
	.tab {
	    overflow: hidden;
	    border: solid 2px #ddd;
	    background-color: #fff;
	    width: 1500px;
	    margin: 0 auto;
	    border-top-left-radius: 10px;
	    border-top-right-radius: 10px; 
	}
	
	button.tablinks {
	    background-color: inherit;
	    float: left;
	    border: none;
	    border-left: solid 2px #ddd;
	    outline: none;
	    cursor: pointer;
	    padding: 14px 16px;
	    transition: 0.3s;
	    font-size: 20px;
	    width: 499px;
	}
	
	button.tablinks:hover {
	    background-color: #F5F9FD;
	    color: #184CED;
	    font-weight: bold;
	}
	
	button.tablinks.active {
	    border-top: solid 2px #184CED;
	    color: #184CED;
	    font-weight: bold;
	}
	
	.tabcontent {
	    display: none;
	    padding: 6px 12px;
	    border-top: none;
	}
	
	/* 검색 Frm */
	button#search {
		margin: 0 10px; 
		width: 60px; 
		font-size: 13pt;"
	}
	
	select#searchType {
		height: 35px; 
		margin: 0 10px;"
	}
	


</style>
 
<script>

	<%-- 표 상단 tab action 시작 --%>
	var tabButtons = document.getElementsByClassName("tablinks");
	
	function openList(evt, tabName) {
	    var i, tabcontent;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    for (i = 0; i < tabButtons.length; i++) {
	        tabButtons[i].classList.remove("active");
	    }
	    document.getElementById(tabName).style.display = "block";
	    evt.currentTarget.classList.add("active");
	}
	
	<%-- 페이지 로드 후 기본 탭 선택 --%>
	document.addEventListener("DOMContentLoaded", function() {
	    var defaultOpenBtn = document.getElementById("defaultOpen");
	    defaultOpenBtn.click();
	    defaultOpenBtn.classList.add("active");
	    for (var i = 0; i < tabButtons.length; i++) {
	        tabButtons[i].addEventListener("click", function() {
	            for (var j = 0; j < tabButtons.length; j++) {
	                tabButtons[j].classList.remove("active");
	            } 
	            this.classList.add("active");
	        });
	    }
	});
	<%-- 표 상단 tab action 끝 --%>

	
	<%-- 지원자List 불러오기 시작 --%>
	function getCandidateList(status){
    
	    $.ajax({
	       url:"/wanted/getCandidateList",
	       data:{status: status },
	       type:"get",
	       success:function(result) {
	    	   
	          $("#candidateList").html(result);

	       },
	       error: function(request, status, error){
	           alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	        }
   		 }); // end of $.ajax ----
	}; 
	<%-- 지원자List 불러오기 끝 --%>
	
</script>

<body>

	<button type="button" class="btn btn-success btn-sm" id="btnExcel">Excel파일로저장</button>
	
	<div class="listForm">
	<h3>전체 지원자 목록</h3>

	<div class="tab">
		  <button class="tablinks" id="defaultOpen" onclick="getCandidateList('0')">지원서 접수</button>
		  <button class="tablinks" onclick="getCandidateList('1')">합격</button>
		  <button class="tablinks" onclick="getCandidateList('2')">불합격</button>
	
		<table class="containerTitle">

		<thead>
			<tr style="height: 60px;">
				<th>
					<%-- 정렬 시작 --%>
					<select name="Type" id="searchType">
				         <option value="subject">공고명</option>
				         <option value="name">지원자명</option>
				    </select>
				    <%-- 정렬 끝 --%>
					<%-- 검색 Frm 시작 --%>
					<form name="searchFrm" style="display: flex; font-size: 13pt; border: solid 1px gray;">
				      <select name="searchType" id="searchType">
				         <option value="subject">공고명</option>
				         <option value="name">지원자명</option>
				      </select>
				      <input type="text" name="searchWord" id="searchWord" size="30" autocomplete="off" style="height: 35px;" /> 
				      <input type="text" style="display: none;"/>
				      <button type="button" id="search" class="btn btn-secondary btn-sm" onclick="goSearch()">검색</button>
				   </form>
				   <%-- 검색 Frm 끝 --%>
				</th>
			</tr>
			
			<tr>
				<th class="formTitle" style="width: 28%;">공고명</th>
				<th class="formTitle" style="width: 10%;">지원자명</th>
				<th class="formTitle" style="width: 27%;">이력서</th>
				<th class="formTitle" style="width: 10%;">지원일자</th>
				<th class="formTitle" style="width: 15%;">현재상태</th>
			</tr>
		</thead>
		<tbody id="candidateList" style="font-size: 13pt;">
			
		</tbody>
		</table>
	</div>
	</div>
	


</body>



