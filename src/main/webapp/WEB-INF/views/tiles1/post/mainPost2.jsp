<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<% 
	String ctxPath = request.getContextPath(); 
%>


<style>
    section#skillSearch {
		     /*  display: none; */
		      position: relative;
		    left: 20px;
		    top: 20px;
		    width: 584px;
		    height: 446px;
		    border: 1px solid #e1e2e4;
		    border-radius: 5px;
		    background-color: #fff;
    }
    div.search-wrapper{
    	padding: 26px 20px 20px 20px ; 
    
    
    }
    input#search-skill:not(:focus) { /* 커서 올라가기 전 */
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-radius: 25px;
	    font-size: 14px;
    	font-weight: 400;
	}
	input#search-skill::placeholder { /* 커서 올라가기 전 placeholder 색상 변경 */
		color: #e1e2e3;
	}
	
	input#search-skill:focus { /* 커서 올라간 후 */
		margin: 0 0 10px;
		padding: 0 12px;
		width: 100%;
	    height: 50px;
	    min-height: 50px;
	    outline: none;
	    background-color: transparent;
	    border: 1px solid #e1e2e3;
	    border-color: blue;
	    border-radius: 25px;
	    font-size: 14px;
    	font-weight: 400;
	}
    




</style>



<script type="text/javascript">
    $(document).ready(function(){
    	 $("#skill").click(function() {
    		    $("section#skillSearch").toggle();
    		  });
    		
	}); // END OF DOCUMENT.READY(FUNCTION)
    
	
</script>

</head>
<body>
<div style="margin:auto; text-align: center; ">
 	<button type="button" id="skill" class="btn btn-primary"  >
		 기술스택	
	</button>
</div>	
	<section id="skillSearch">
			<div class="search-wrapper">
				<input type="text" id="search-skill"  placeholder=" 보유 기술 스택을 검색해주세요" style=""/>
				<button class="btn-search border-left" style="position : relative; top: -46px;  right: -496px;"><i class="fa-solid fa-magnifying-glass"></i></button>
			</div>
	</section>
                         
</body>


