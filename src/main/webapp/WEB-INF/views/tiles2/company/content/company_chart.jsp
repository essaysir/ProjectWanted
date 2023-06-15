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
 
<script type="text/javascript">

</script>

	
<div class="chartFrm">
<div style="width: 80%; min-height: 1100px; margin:auto; ">

	<h3>지원 통계 현황</h3>
	<form name="searchFrm" style="margin: 20px 0 50px 0; ">
      <select name="searchType" id="searchType" style="height: 30px;">
         <option value="">항목을 선택하세요</option>
         <option value="salary">직무별 경력별 평균연봉</option>
      </select>
   </form>
   
   <div id="chart_container"></div>
   <div id="table_container" style="margin: 40px 0 0 0;"></div>
</div>	
</div>





