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
	
	.tab button {
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
	
	.tab button:hover {
	  background-color: #F5F9FD;
	  color: #184CED;
	}
	
	/* Create an active/current tablink class */
	.tab button.active {
	  border-top: solid 2px #184CED;
	  color: #184CED;
	  font-weight: bold;
	}
	
	.tabcontent {
	  display: none;
	  padding: 6px 12px;
	  border-top: none;
	}
	
	

</style>

<body>
	
	<div class="listForm">
	<h3>전체 지원자 목록</h3>
	
	<div class="tab">
			  <button class="tablinks" onclick="candidates(event, 'List')" id="defaultOpen">지원서 접수</button>
			  <button class="tablinks" onclick="candidates(event, 'Pass')">합격</button>
			  <button class="tablinks" onclick="candidates(event, 'Fail')">불합격</button>
	
		<table class="containerTitle">

			<tr style="height: 50px;"></tr>
			<tr>
				<th class="formTitle">지원자명</th>
				<th class="formTitle">공고명</th>
				<th class="formTitle">지원일자</th>
				<th class="formTitle">현재상태</th>
			</tr>

			<tr>
				<td id="List" class="tabcontent" colspan="4">지원자 목록이 없습니다.</td>
			</tr>
			
			<tr>
				<td id="Pass" class="tabcontent" colspan="4">합격한 지원자 목록이 없습니다.</td>
			</tr>
			
			<tr>
				<td id="Fail" class="tabcontent" colspan="4">불합격한 지원자 목록이 없습니다.</td>
			</tr>
			
		</table>
	</div>
	</div>

<script>

	<%-- 표 상단 tab --%>
	function candidates(evt, tabName) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }
	  document.getElementById(tabName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
	
	document.getElementById("defaultOpen").click();

</script>


</body>



