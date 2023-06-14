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

<!-- Pie chart -->
<script src="/Highcharts-10.3.1/code/highcharts.js"></script>
<script src="/Highcharts-10.3.1/code/modules/exporting.js"></script>
<script src="/Highcharts-10.3.1/code/modules/export-data.js"></script>
<script src="/Highcharts-10.3.1/code/modules/accessibility.js"></script>

<!-- Basic line Chart -->
<script src="/Highcharts-10.3.1/code/modules/series-label.js"></script>

<!-- column-drilldown Chart -->
<script src="/Highcharts-10.3.1/code/modules/data.js"></script>
<script src="/Highcharts-10.3.1/code/modules/drilldown.js"></script>
 
<figure>
</figure>

<script type="text/javascript">

</script>

	
	<div class="listForm">
	<h3>지원통계</h3>
		<table class="containerTitle">
		
			<tr style="height: 40px;"></tr>
			<tr>
				<th class="formTitle"></th>
				<th class="formTitle"></th>
				<th class="formTitle"></th>
				<th class="formTitle"></th>
			</tr>
			<tr>
				<td colspan="4"></td>
			</tr>
		</table>
	</div>


