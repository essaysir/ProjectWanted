<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<style type="text/css">
	
	body{
		background-color: #F2F4F7;
	}
	.jpMain_frame{
		margin: 0 auto;
		margin-top: 50px;
		border: solid 2px red;
	}
	
	.jptop_content{
		border: solid 2px black;
		margin-bottom: 20px;
	}
	
	.plus {
	 	position:relative;
		width: 250px;
		height: 55px;
		border-radius: 10px;
		line-height: 45px;
		font-weight: bold;
		font-size: 15pt;
		border: solid 1px #3366FF;
		background-color: #ECF1FE; 
		color: #184CED;
		display: flex;
	    justify-content: center;
	    align-items: center;
	}
	
	.plus:hover {
		background-color: #184CED !important;
		color: #FFF;
		cursor: pointer;
		border: none;
	}
	
	.jp_content{
		border: solid 2px black;
	}

	.jcard{
		width: 470px;
		height: 200px;
		border-radius: 10px;
		background-color: #fff;
		margin: 10px 0px 10px 20px;
		display: inline-block;
		padding: 30px;
	}
	
	.jcard_topL{
		display: inline-block;
		float: left;
      	clear: left;
	}
	
	.jcard_topR{
		display: inline-block;
		float: right;
      	clear: right;
	}
	
	.jcard_topR > .jpPay {
		background-color: #184CED;
		color: #FFF;
		cursor: pointer;
		border: none;
		width: 110px;
	    height: 50px;
	    font-size: 16pt;
	    border-radius: 10px;
	    float: right;
      	clear: right;
	}
	
	.jcard_topR > .jpPay:hover{
		border: solid 1px #3366FF;
		background-color: #ECF1FE !important; 
		color: #184CED;
	}
	
	.jcard_topR > .jpEnd {
		background-color: #f69c1e;
		color: #FFF;
		cursor: pointer;
		border: none;
		width: 110px;
	    height: 50px;
	    font-size: 16pt;
	    border-radius: 10px;
	    float: right;
      	clear: right;
	}
	
	.jcard_topR > .jpEnd:hover{
		border: solid 1px #f69c1e;
		background-color: #f9deb8 !important; 
		color: #f69c1e;
	}
	
	.jcard_topR > .jpAnd {
		background-color: #e13737;
		color: #FFF;
		cursor: pointer;
		border: none;
		width: 110px;
	    height: 50px;
	    font-size: 16pt;
	    border-radius: 10px;
	    float: right;
      	clear: right;
	}
	
	.jcard_topR > .jpAnd:hover{
		border: solid 1px #e13737;
		background-color: #f0c6c6 !important; 
		color: #e13737;
	}
	
	.jcard_topR > .jpFin {
		background-color: #999;
		color: #FFF;
		border: none;
		width: 110px;
	    height: 50px;
	    font-size: 16pt;
	    border-radius: 10px;
	    float: right;
      	clear: right;
	}
	
	.dropbtn {
	  border: none;
	  cursor: pointer;
	  background-color: #fff;
	  font-size: 15pt; 
	}
	
	.dropdown {
	  position: relative;
	  display: inline-block;
	  float: right; 
	  clear: right;
	}
	
	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f1f1f1;
	  min-width: 160px;
	  overflow: auto;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}
	
	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}
	
	.dropdown a:hover {background-color: #ddd;}
	
	.show {display: block;}
	
	

</style>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		displayPost("1");
		
		$("button#btnPost").click(function(){
			
			displayPost($(this).val());
	         
		});
		
		
	});// end of $(document).ready(function()
	
	let lenPost = 6;
	
	function displayPost(start){
		
		$.ajax({
			url: "getPost",
			type: "post",
			data:{ "fk_company_id":"test_wanted",
				   "start":start,
				   "len":lenPost},
			dataType:"json",
			async:true,
			success:function(json){
				
				let html = "";
				
				// 처음부터 데이터가 존재하지 않는 경우
				if(start == "1" && json.length == 0){
					html += "공고를 등록하세요";
					
					// 공고출력하기
					$("div#jp_content").html(html);
				}
				else if(json.length > 0){
										
					$.each(json, function(index, item){
												
						    html += "<div class='jcard'>"
								 	+ "<div class='jcard_topL'>"
								 		+ "<h5>"+item.subject+"</h5>"
								 		+ "<p>신규지원서 0건<span style='color: gray;'>/전체 0건</span></p>"
								 		+ "<p style='color: gray;'>#"+item.job_name+"</p>"
								 		+ "<p>결제 상태&nbsp;&nbsp;";
							if(item.pay_status == "0"){
								html += "<span style='color: orange;'>결제 대기</span></p>";
							  } else {
								html += "<span style='color: green;'>결제 완료</span></p>"; 
							  }
							html += "</div>"
								 	+"<div class='jcard_topR'>";
								 	
					 		if(item.pay_status == "0"){
					 			html += "<button type='button' class='jpPay' onclick='test()'><span>결제 하기</span></button>";
					 		}else if(item.pay_status == "1" && item.dateDiff < 0){
					 			html += "<button type='button' class='jpFin' disabled onclick=''><span>공고 마감</span></button>";
					 		}else if(item.pay_status == "1" && item.dateDiff < 5){
					 			html += "<button type='button' class='jpAnd' onclick='test3()'><span>공고 연장</span></button>";
					 		}else if(item.pay_status == "1" && item.dateDiff > 0){
					 			html += "<button type='button' class='jpEnd' onclick='test2()'><span>공고 중단</span></button>";
					 		}
					 			html += "<br><br><br>"
					 					+"<p>공고시작일 : "+item.createday+"<br>공고마감일 : "+item.deadline+"</p>"
					 					+"<div class='dropdown'>"
								 			+"<button onclick='myFunction("+item.post_code+")' class='dropbtn'><i class='fa-solid fa-gear'></i></button>"
								 			+"<div id='"+item.post_code+"' class='dropdown-content'>";
								 				if(item.dateDiff < 0){
								 					html += "<a href=''>삭제하기</a>";
								 				} else {
								 					html += "<a href=''>수정하기</a>";
								 				}
								 	html +="</div>"
								 		+"</div>"
								 	+"</div>"
								 +"</div>";
					}); // end of $.each(json, function(index, item)
							
					// Post출력하기
					$("div#jp_content").append(html);
					
					// >>> !!! 중요 !!! 더보기... 버튼의 value 속성에 값을 지정하기 <<< //
					$("button#btnPost").val( Number(start)+lenPost );
					
					// span#countPost 에 지금까지 출력된 상품의 개수를 누적해서 기록한다.
					$("span#countPost").text(Number($("span#countPost").text())+json.length );
					
					// 더보기... 버튼을 계속해서 클릭하여 countHIT 값과 totalHITCount 값이 일치하는 경우 
					if( $("span#totalPost").text() == $("span#countPost").text() ){
						
						$("button#btnPost").hide();
						
					}
				}// end of else if(json.length > 0)
			},//end of success  function(json)
			error: function (request, status, error) {
				alert("code: " + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
			}
		});	
	}
			
		
	
	function test(){
		alert("결제하기버튼");
	}
	
	function test2(){
		alert("공고중단버튼");
	}
	
	function test3(){
		alert("공고연장버튼");
	}
	
	function myFunction(dropdownId) {
		var dropdown = document.getElementById(dropdownId);
		dropdown.classList.toggle("show");
	}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
		if (!event.target.matches('.fa-gear')) {
			var dropdowns = document.getElementsByClassName("dropdown-content");
			for (var i = 0; i < dropdowns.length; i++) {
				var openDropdown = dropdowns[i];
				if (openDropdown.classList.contains('show')) {
					openDropdown.classList.remove('show');
				}
			}
		}
	}
		
	
		
	

</script>
<body>

<div class="jpMain_frame">
	<div class="jptop_content">
		<button class="plus" type="button" onclick="location.href='/wanted/company_recruit'"><span><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;채용공고 등록</span></button>
	</div>
	<div class="jp_content" id="jp_content">
	</div>
	<button class="btnPost" id="btnPost" type="button">더보기</button>
	<span id="totalPost">${requestScope.totalPost}</span>
	<span id="countPost">0</span>
</div>

</body>
