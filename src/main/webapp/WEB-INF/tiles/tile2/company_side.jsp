<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script type="text/javascript">



</script>


<style type="text/css">
	
	.sideBarWrapper {
	  height: 100%;
	  margin: 0;
	}

	div.name {
		height: 50px;
		font-size: 28px;
		font-weight: bold;
		position:  relative;
		left: 50px;
		padding-top: 3px;
		margin-left: 30px;
		margin-top: 0;
	}

	img#small {
		position: absolute;
		margin-left: 20px;
	}
	
	a.menu {
		display: block;
		height: 60px;
		padding: 15px 0;
		font-size: 20px;
		cursor: pointer;
		text-decoration: none;
		font-weight: bold;
	}
	
	a.menu:hover {
	  color: #184CED !important;
	  text-decoration: none;
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
	
	.goHome {
	 	position:relative;
		width: 250px;
		height: 55px;
		border-radius: 10px;
		line-height: 45px;
		font-weight: bold;
		font-size: 15pt;
		border: solid 1px #67A0FF;
		background-color: #E0F1FE;  
		color: #67A0FF;
		display: flex;
	    justify-content: center;
	    align-items: center;
	    margin-top: 20px;
	}
	
	.goHome:hover {
		background-color: #67A0FF !important;
		color: #FFF;
		cursor: pointer;
		border: none;
	}

</style>

<div class="sideBarWrapper">
    <div class="sideBar">
    	<div style="border-bottom: solid 1px #ddd;">
	        <img id="small" src="/images/company/smallLogo.png" width="50" alt="회사명" />
	        <div class="name">회사명</div>
        </div>
        
        <nav style="margin: 20px auto;">
            <ul>
                <li>
                    <a class="menu" href="/wanted/company_candidateList">전체지원자관리</a>
                    <a class="menu" href="#">채용공고관리</a>
                    <a class="menu" href="#">회사정보</a>
                    <a class="menu" href="#">계정관리</a>
                    <a class="menu" href="/wanted/company_statistics">지원통계</a>
                </li>
            </ul>
        </nav>

        <div style="display: flex; justify-content: center;">
            <button class="plus" type="button" onclick="location.href='/wanted/company_recruit'"><span><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;채용공고 등록</span></button>
        </div>
        <div style="display: flex; justify-content: center;">
            <button class="goHome" type="button" onclick="location.href='/wanted/index'"><span><i class="fas fa-home"></i>&nbsp;&nbsp;원티드 홈</span></button>
        </div>
    </div>
</div>