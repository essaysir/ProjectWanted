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
		margin: 60px 50px 0 0;
		height: 40px;
		font-size: 12pt;
	}
	
	div.listForm {
		margin-top: 50px;
	}
	
	table.containerTitle {
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
	
	td.tabcontent {
		height: 600px;
		text-align: center;
	}
	
	button.tablinks {
	    background-color: inherit;
	    float: left;
	    border: none;
	    outline: none;
	    cursor: pointer;
	    padding: 14px 16px;
	    transition: 0.3s;
	    font-size: 20px;
	    width: 498.2px;
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
	    	   
	    	   if(result.trim() == 'false') {
                    $("#candidateList").html('<td class="formList" colspan="5" style="font-weight: bold; text-align: center;">지원자가 존재하지 않습니다.</td>');
               } 
               else {
            	    $("#candidateList").html(result);
               }

	       },
	       error: function(request, status, error){
	           alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	        }
	       
   		 }); // end of $.ajax({}) ----
	}; 
	<%-- 지원자List 불러오기 끝 --%>
	
	
	$(document).ready(function(){

	     $("input#searchWord").keyup(function(e){
			if(e.keyCode == 13){ // 엔터를 했을경우
				goSearch();
			}
	     });
	     
	     // 검색시 검색조건 및 검색어 유지시키기
	     if( ${not empty requestScope.paraMap} ){
	    	 $("select#searchType").val("${requestScope.paraMap.searchType}");
	    	 $("input#searchWord").val("${requestScope.paraMap.searchWord}");
	     }
	     
	     
	     <%-- === #107. 검색어 입력시 자동글 완성하기 2 === 
	     $("div#displayList").hide();
	     
	     $("input#searchWord").keyup(function(){ 
	    	 
	    	 const wordLength = $(this).val().trim().length;
	    	 
	    	 if(wordLength == 0){
	    		 $("div#displayList").hide();
	    	 }
	    	 else{
	    		 $.ajax({
	    			 url:"/wanted/wordSearchShow",
	    			 type:"get",
	    			 data:{"searchType":$("select#searchType").val(),
	    				   "searchWord":$("input#searchWord").val()},
	    			 dataType:"json",
	    			 success:function(json){
	    				 console.log(JSON.stringify(json));
	    				 /* json ==> [{"word":"java가 재미 있나요?"},{"word":"JSP 가 뭔가요?"},{"word":"Korea VS Japan 라이벌 축구대결"},{"word":"오라클 JAVA 를 배우고 싶어요"},{"word":"java가 쉽나요?"},{"word":"JAVAScript 가 뭔가요?"}]
	    				 	또는
	    				 	json ==> []
	    				 */ 

	    			 	if(json.length > 0){
	    			 		// 검색된 데이터가 있는 경우
	    			 		
	    			 		let html = "";
	    			 		
	    			 		$.each(json, function(index, item){
	    			 			const word = item.word;
	    			 			
	    			 			const idx = word.toLowerCase().indexOf($("input#searchWord").val().toLowerCase());
	    			 			
	    			 			const len = $("input#searchWord").val().length;
	    			 			// 검색어(JaVa)의 길이 len 은 4 가 된다.
	    			 	/*		
	    			 			console.log("~~~~~ 시작 ~~~~~");
	    			 			console.log(word.substring(0, idx)); 	  // 검색어(JaVa) 앞까지의 글자 ==> "오라클 "
	    			 			console.log(word.substring(idx, idx+len)); // 검색어(JaVa) 글자 ==> "JAVA"
	    			 			console.log(word.substring(idx+len)); 	  // 검색어(JaVa) 글자 ==> " 를 배우고 싶어요"
	    			 			console.log("~~~~~ 끝 ~~~~~");
						*/
	    			 			
	    			 			const result = word.substring(0, idx) + "<span style='color:blue;'>" + word.substring(idx, idx+len)+"</span>"+word.substring(idx+len);
	    			 			
	    			 			html += "<span style='cursor:pointer;' class='result'>" + result + "</span><br>";
	    			 			
	    			 		});// end of $.each(json, function(index, item){})-----------------------
	    			 		
	    			 		const input_width = $("input#searchWord").css("width"); // 검색결과 div 의 width 크기를 검색어 입력 input 태그의 width 와 일치시키기  
	    			 		
	    			 		$("div#displayList").css({"width":input_width});
	    			 		
	    			 		$("div#displayList").html(html);
	    			 		$("div#displayList").show();
	    			 	}
	    				 
	    			 },
	    			 error: function(request, status, error){
	                     alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	                 }
	    		 });
	    	 }
	    	 
	     });// end of $("input#searchWord").keyup(function(){})---------------------
	     --%>
	     
	     <%-- === #113. 검색어 입력시 자동글 완성하기 8 === 
	     $(document).on("click", "span.result", function(){
	    	 const word = $(this).text();
	    	 $("input#searchWord").val(word); // 텍스트박스에 검색된 결과의 문자열을 입력해준다. 
	    	 $("div#displayList").hide();
	    	 goSearch();
	     });
	     --%>
	     
	  });// end of $(document).ready(function(){})-------------------------------

	  
	  // Function Declaration
	  function goSearch(){
	/*	  
		    var searchType = document.getElementById("searchType").value;
		    
		    // 입력된 값을 가져옴
		    var searchWord = document.getElementById("searchWord").value;
	*/	  
		  const frm = document.searchFrm;
		  frm.method = "get";
		  frm.action = "/wanted/getCandidateList";
		  frm.submit();
	  }// end of function goSearch()--------------------- 
	
	
</script>

<body>

	<button type="button" class="btn btn-success btn-sm" id="btnExcel">Excel파일로저장</button>
	
	<div class="listForm">
	<h3>전체 지원자 목록</h3>

	<div class="tab">
		  <button class="tablinks" id="defaultOpen" onclick="getCandidateList('0')">지원서 접수</button>
		  <button class="tablinks" onclick="getCandidateList('1')" style="border-left: solid 2px #ddd; border-right: solid 2px #ddd;">합격</button>
		  <button class="tablinks" onclick="getCandidateList('2')">불합격</button>
	
		<table class="containerTitle">

		<thead>
			<tr>
				<div style="display: flex; padding: 10px; border-top: solid 2px #ddd; width: 100%; justify-content: space-between;">
					<%-- 정렬Frm 시작 --%>
					<div class="col-auto">
					     <button class="btn btn-primary" type="button" id="defaultOpen" onclick="sortNew">지원 최신 순</button>
					     <button class="btn btn-primary" type="button" onclick="sortPast">지원 과거 순</button>
					     <button class="btn btn-primary" type="button" onclick="sortSubject">공고명 순</button>
					</div>
				    <%-- 정렬Frm 끝 --%>
					<%-- 검색 Frm 시작 --%>
					<div>
					<form name="searchFrm" style="display: flex; font-size: 13pt;">
				      <select name="searchType" id="searchType">
				         <option value="subject">공고명</option>
				         <option value="name">지원자명</option>
				      </select>
				      <input type="text" name="searchWord" id="searchWord" size="30" autocomplete="off" style="height: 35px;" /> 
				      <input type="text" style="display: none;"/>
				      <button type="button" id="search" class="btn btn-secondary btn-sm" onclick="goSearch()">검색</button>
				   </form>
				   <%-- 
				      <div id="displayList" style="border:solid 1px gray; border-top:0px; height:100px; margin-left:75px; margin-top:-1px; overflow:auto;">
   					  </div>
   					--%>  
				   </div>
				   <%-- 검색 Frm 끝 --%>
				</div>	
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
		
		<%-- === #122. 페이지바 보여주기 === --%>  
	    <div align="center" style="border: solid 0px gray; width: 70%; margin: 20px auto; ">
	       <%= request.getAttribute("pageBar") %>
	    </div>
		
	</div>
	</div>
	


</body>



