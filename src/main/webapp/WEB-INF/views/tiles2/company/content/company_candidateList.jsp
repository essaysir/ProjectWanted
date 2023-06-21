<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

    
<style type="text/css">

   body {
      background-color: #F2F4F7;
   }
   
   h3{
      width: 1400px;
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
      width: 1400px;
      margin: 0 auto;
   }
   
   th.formTitle {
      font-size: 13pt;
      height: 40px;
      background-color: #F5F9FD;
      text-align: center;
   }
   
   #candidateList {
   	  border: solid 2px #ddd; 
   }
   
   
   /* 표 상단 tab */
   .tabTitle {
       overflow: hidden;
       border: solid 2px #ddd;
       background-color: #fff;
       width: 1400px;
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
       width: 465px;
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
   
   #buttonSection {
   	   display: flex; 
   	   padding: 10px; 
   	   border-right: solid 2px #ddd; 
   	   border-left: solid 2px #ddd; 
   	   background-color: #fff;
       width: 1400px;
       margin: 0 auto;
   	   justify-content: space-between;
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


   /* pageBar */
   ul#pageBar {
	  list-style:none; 
	  display:flex; 
	  padding: 0 auto;
	  justify-content: center;
	  align-items: center;
	  margin-top: 20px;
	}

   #pageNo {
   	  display:inline-block; 
   	  width: 50px; 
   	  height: 50px; 
      font-size: 16pt; 
   	  border: solid 1px #184CED; 
   	  border-radius: 50px; 
   	  color: #184CED; 
   	  padding: 8px; 
   	  margin: 6px;
   }
   
   #pageBarNo, #pageArrow {
   	  display:inline-block; 
   	  width: 50px; 
   	  height: 50px; 
   	  font-size: 16pt; 
   	  border: solid 1px gray; 
   	  border-radius: 50px; 
   	  color: gray !important; 
   	  padding: 8px; 
   	  margin: 6px;
   	  list-style: none;
   	  background-color: inherit;
   }

   #pageBarNo:hover, #pageBarNo:hover, #pageArrow:hover, #pageArrow:hover {
	  color: #184CED !important; 
	  border-color: #184CED; 
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
   function getCandidateList(status, currentShowPageNo, searchType, searchWord, pageNo, totalPage, startRno, endRno) {
	   
	   $.ajax({
	      url: "/wanted/company/getCandidateList",
	      data: { status: status,
		          searchType: searchType,
		          searchWord: searchWord,
		          currentShowPageNo: currentShowPageNo,
		          pageNo: pageNo,
		          totalPage: totalPage,
		          startRno: startRno,
		          endRno: endRno
		  		},
	      async: true,
	      type: "get",
	      success: function(result) {
	         
	    	 console.log(searchType);
	    	 console.log(searchWord);
	         console.log(result);

	         $("div.tab").html(result);
	      }, 
	      error: function(request, status, error) {
	         alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
	      }
	   });
	}
   <%-- 지원자List 불러오기 끝 --%>

   $(document).ready(function(){
	
	     $("span.resume_subject").bind("mouseover", function(event){
	    	 $(e.target).addClass("subjectStyle");    	 
	     });
	     
	     $("span.resume_subject").bind("mouseout", function(event){
	    	 $(e.target).removeClass("subjectStyle");    	 
	     });
	   
	     $(document).on("keydown", '#searchWord' ,function(e){
	    	    if (e.keyCode === 13) { // 13은 Enter 키의 keyCode입니다.
	    	    	// getCandidateList()
	    	    	// 추가로 수행할 작업을 여기에 작성합니다.
	    	    }
	    });
        
        
        // 검색시 검색조건 및 검색어 유지시키기
        $("select#searchType").val("${requestScope.searchType}");
        $("input#searchWord").val("${requestScope.searchWord}");

     });// end of $(document).ready(function(){})-------------------------------

     

 
   
</script>

<body>
	
   
   
   <div class="listForm">
   <h3>전체 지원자 목록</h3>
	<div class="tabTitle">
		<button class="tablinks" id="defaultOpen" onclick='getCandidateList(0)'>지원서 접수</button>
	    <button class="tablinks" onclick='getCandidateList(1)' style="border-left: solid 2px #ddd; border-right: solid 2px #ddd;">합격</button>
	    <button class="tablinks" onclick='getCandidateList(2)'>불합격</button>
	</div>
	
   <div class="tab">

   		
      
   
      
   </div>
   </div>

</body>


