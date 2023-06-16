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
		height: 80px;
		text-align: center;
	}
	
	
	.highcharts-figure,
	.highcharts-data-table table {
	    min-width: 320px;
	    max-width: 800px;
	    margin: 1em auto;
	}
	
	.highcharts-data-table table {
	    font-family: Verdana, sans-serif;
	    border-collapse: collapse;
	    border: 1px solid #ebebeb;
	    margin: 10px auto;
	    text-align: center;
	    width: 100%;
	    max-width: 500px;
	}
	
	.highcharts-data-table caption {
	    padding: 1em 0;
	    font-size: 1.2em;
	    color: #555;
	}
	
	.highcharts-data-table th {
	    font-weight: 600;
	    padding: 0.5em;
	}
	
	.highcharts-data-table td,
	.highcharts-data-table th,
	.highcharts-data-table caption {
	    padding: 0.5em;
	}
	
	.highcharts-data-table thead tr,
	.highcharts-data-table tr:nth-child(even) {
	    background: #f8f8f8;
	}
	
	.highcharts-data-table tr:hover {
	    background: #f1f7ff;
	}
	
	input[type="number"] {
	    min-width: 50px;
	}
	
	
	div#table_container table {width: 100%; height: 30%}
    div#table_container th, div#table_container td {border: solid 1px gray; text-align: center;} 
    div#table_container th {background-color: #595959; color: white;} 
	

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

	<h3 style="margin-top: 50px;">지원 통계 현황</h3>
	<form name="searchFrm" style="margin: 20px 0 50px 0; ">
      <select name="searchType" id="searchType" style="height: 30px;">
         <option value="">항목을 선택하세요</option>
         <option value="job_post">직군별 진행중인 공고 비율</option>
         <option value="salary">직군별 경력별 평균연봉</option>
      </select>
   </form>
   
   <div id="chart_container"></div>
   <div id="table_container" style="margin: 40px 0 0 0;"></div>
</div>	
</div>


<script type="text/javascript">

	$(document).ready(function(){
		
		$("select#searchType").change(function(){
			func_choice($(this).val());
			// $(this).val() 은 "" 또는 "deptname" 또는 "gender" 또는 "genderHireYear" 또는 "deptnameGender" 이다.
		});
		
	});// end of $(document).ready(function(){})-----------------
	
	
	// Function Declaration
	function func_choice(searchTypeVal){
		
		switch (searchTypeVal) {
			case "":
				$("div#chart_container").empty();
				$("div#table_container").empty();
				$("div.highcharts-data-table").empty();
				
				break;
				
			case "job_post": // 직군별 진행중인 공고 비율
				$.ajax({
					url:"/wanted/company/getPostCntChart",
					dataType:"json",
					success:function(json){
						
						$("div#chart_container").empty();
						$("div#table_container").empty();
						$("div.highcharts-data-table").empty();
						
						let resultArr = [];
						
						for(let i=0; i<json.length; i++){
							let obj;
							
							if(i==0){
								obj = {name : json[i].job_name, 
										   y : Number(json[i].percentage), 
										   sliced : true,
										   selected: true};
							}
							else {
								obj = {name : json[i].job_name, 
										   y : Number(json[i].percentage)};
							}
							
							resultArr.push(obj);
						}// end of for------------------------------
						
						////////////////////////////////////////////
						Highcharts.chart('chart_container', {
						    chart: {
						        plotBackgroundColor: null,
						        plotBorderWidth: null,
						        plotShadow: false,
						        type: 'pie'
						    },
						    title: {
						        text: '직군별 채용 진행중 공고',
						        align: 'center'
						    },
						    tooltip: {
						        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
						    },
						    accessibility: {
						        point: {
						            valueSuffix: '%'
						        }
						    },
						    plotOptions: {
						        pie: {
						            allowPointSelect: true,
						            cursor: 'pointer',
						            dataLabels: {
						                enabled: true,
						                format: '<b>{point.name}</b>: {point.percentage:.2f} %'
						            }
						        }
						    },
						    series: [{
						        name: '비율',
						        colorByPoint: true,
						        data: resultArr
						    }]
						});
						////////////////////////////////////////////
						
						let html =  "<table>";
                        html += "<tr>" +
                                  "<th>직군명</th>" +
                                  "<th>개수</th>" +
                                  "<th>퍼센티지</th>" +
                                "</tr>";
                                
                        $.each(json, function(index, item){
                        	html += "<tr>" +
                        				"<td>"+item.job_name+"</td>" +
                        				"<td>"+item.cnt+"</td>" +
                        				"<td>"+item.percentage+"</td>" +                        				
                        			"</tr>";
                        });        
                        
                        html += "</table>";
                        
                        $("div#table_container").html(html);
						
					},
					error: function(request, status, error){
	                  alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	               }
				});

				break;
				
				
			case "salary":	// 직군별 연차별 연봉
			      
				$.ajax({
		               url:"/wanted/company/getSalaryChart",
		               dataType:"json",
		               success:function(json1){
		                  
		                  $("div#chart_container").empty();
		  				  $("div#table_container").empty();
		  				  $("div.highcharts-data-table").empty();
		  				  
		                  let jobNameArr = [];   // 직군별 객체 배열
		                  
		                  $.each(json1, function(index, item){
		                	  jobNameArr.push({ name: item.job_name,
		                                           y: item.salary,
		                                           cnt: item.cnt,
		                                   drilldown: item.job_name});
		                  }); // end of $.each(json,function(index,item){})----
		                        
		                        
		                        
		                  let careerArr = [];      // 직군
		                  
		                  $.each(json1, function(index1, item1){
		               
		                	  $.ajax({
		                		  url:"/wanted/company/getPostCntChart",
		                		  type:"get",
		                		  data:{"jobName":item1.job_name},
		                		  dataType:"json",
		                		  success:function(json2){
		               
		                			  let salaryArr = []; 
		                			  
		                			  $.each(json2, function(index2, item2){
		                				  salaryArr.push([ 
		                					  			item2.career + item2.salary,
		                					  			Number(item2.percentage) 
		                					  		 ]);
		                			  });// end of $.each(json2, function(index, item){})----
		                			  
		                			  careerArr.push({
					                	                name: item1.job_name,
					                	                id: item1.job_name,
					                	                data: salaryArr
		                	          				});
		                		  },
		                		  error: function(request, status, error){
		 		                     alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
		 		                  }
		                	  });
		                	  
		                  }); // end of  $.each(json, function(index, item){})----
		                  
		                  ////////////////////////////////////////////////////////
		                  
		                  // Create the chart
		                  Highcharts.chart('chart_container', {
		                      chart: {
		                          type: 'column'
		                      },
		                      title: {
		                          align: 'center',
		                          text: '직군별 연차별 연봉평균'
		                      },
		                      subtitle: {
		                          align: 'left',
		                          text: 'Click the columns to view versions. Source: <a href="http://localhost:7070/wanted/company/candidateList" target="_blank">candidateList</a>'
		                      },
		                      accessibility: {
		                          announceNewData: {
		                              enabled: true
		                          }
		                      },
		                      xAxis: {
		                          type: 'category'
		                      },
		                      yAxis: {
		                          title: {
		                              text: '연차(최소경력)'
		                          }
		                  
		                      },
		                      legend: {
		                          enabled: false
		                      },
		                      plotOptions: {
		                          series: {
		                              borderWidth: 0,
		                              dataLabels: {
		                                  enabled: true,
		                                  format: '{point.y:.1f}%'
		                              }
		                          }
		                      },
		                  
		                      tooltip: {
		                          headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
		                          pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total, <br/>'
		                      },
		                  
		                      series: [
		                          {
		                              name: '직군',
		                              colorByPoint: true,
		                              data: careerArr   // **** 위에서 구한 값을 대입시킴. 부서명별 인원수 퍼센티지 객체 배열  ****
		                          }
		                      ],
		                      drilldown: {
		                          breadcrumbs: {
		                              position: {
		                                 align: 'right'
		                              }
		                          },
		                          series: careerArr   // **** 위에서 구한 값을 대입시킴. 특정 부서명에 근무하는 직원들의 성별 인원수 퍼센티지 객체 배열  ****
		                      }
		                  });
		                  ////////////////////////////////////////////////////////
		               },
		               error: function(request, status, error){
		                     alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
		                  }
		            });
		         
		            break; 
		}
		
	};
	
</script>


