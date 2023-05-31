<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>  
    
<!DOCTYPE html>
<html>
<head>
<title>Company Page</title>
  <!-- Required meta tags -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" type="text/css" href="/bootstrap-4.6.0-dist/css/bootstrap.min.css" > 
  
  <!-- Font Awesome 5 Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <!-- Font Awesome 6 Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- 직접 만든 CSS -->
  

  <!-- Optional JavaScript -->
  <script type="text/javascript" src="/js/jquery-3.6.4.min.js"></script>
  <script type="text/javascript" src="/bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js" ></script>
  <script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script> 
  
  <%--  ===== 스피너 및 datepicker 를 사용하기 위해  jquery-ui 사용하기 ===== --%>
  <link rel="stylesheet" type="text/css" href="/jquery-ui-1.13.1.custom/jquery-ui.css" /> 
  <script type="text/javascript" src="/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
    
  <%-- *** ajax로 파일을 업로드할때 가장 널리 사용하는 방법 ==> ajaxForm *** --%>
  <script type="text/javascript" src="/js/jquery.form.min.js"></script>
  
  <%-- 폰트 --%>
  <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css" /> 

  <style type="text/css">
	@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css");
	
	*{
		font-family: -apple-system, BlinkMacSystemFont, "Apple SD Gothic Neo", "Pretendard Variable", Pretendard, Roboto, "Noto Sans KR", "Segoe UI", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
	}
	
	#myContent {
		min-height: 100%;
	}
	
	#mySide {
		min-height: 1200px;
		background-color: #FFF;
		padding-top: 4%;
	}
	
	#mySide a {
		color: black;
	}
	
	#mySide .navbar-nav {
		margin-left: 10%;
	}
	
	#mySide ul {
		list-style-type: none;
	}
	
	#mySide nav li {
		font-size: 12.5pt;
	}
	
	#mySide nav li li {
		font-size: 11.5pt;
	}
	
	.badge {
		vertical-align: middle;
	}
	
	
	html, body {
	  height: 100%;
	  margin: 0;
	  padding: 0;
	}
	
	#myContainer {
	  height: 100%;
	}
	
	.row {
	  margin-right: 0;
	  margin-left: 0;
	}

	
  </style>
</head>

<body>
	<div id="myContainer">

		<div class="row">
			<div class="col col-2 container" id="mySide">
				<tiles:insertAttribute name="side" />
			</div>

			<div class="col m-4 pl-3 pr-3" id="myContent">
				<tiles:insertAttribute name="content" />
			</div>
		</div>
	</div>
</body>
</html>