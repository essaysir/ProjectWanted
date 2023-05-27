<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String ctxPath = request.getContextPath(); %>   

<style type="text/css">

	body {
		background-color: #F2F4F7;
	}
	
	h3{
		width: 1300px;
		margin: 0 auto;
	}
	
	div.listForm {
		margin-top: 50px;
	}
	
	table.containerTitle {
		border: solid 1px #ddd;
		background-color: #fff;
		height: 50px;
		width: 1300px;
		margin: 20px auto;
		border-radius: 10px;
	}
	
	th.formTitle {
		font-size: 13pt;
		height: 40px;
		border-top: solid 1px #ddd;
		border-bottom: solid 1px #ddd;
		background-color: #F5F9FD;
		text-align: center;
	}
	
	td {
		height: 600px;
		text-align: center;
	}

</style>


	
	<div class="listForm">
	<h3>지원통계</h3>
		<table class="containerTitle">
		
			<tr style="height: 40px;"></tr>
			<tr>
				<th class="formTitle">지원자명</th>
				<th class="formTitle">공고명</th>
				<th class="formTitle">지원일자</th>
				<th class="formTitle">현재상태</th>
			</tr>
			<tr>
				<td colspan="4">지원자 목록이 없습니다.</td>
			</tr>
		</table>
	</div>


