<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
	
	.miMain_frame{
		border: solid 1px black;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.miMain_content{
		width: 630px;
		border: solid 1px red;
		padding: 0 15px;
	}
	
	.scnum1{
		width: 600px;
		height: 135px;
		margin: 60px 0;
	}
	
	.scnum2{
		width: 600px;
		height: 350px;
		margin-bottom: 30px;
		padding: 0 20px;
		border: solid 1px #999;
		border-radius: 8px;
	}
	
	.scnum3{
		width: 600px;
		height: 245px;
		margin-bottom: 30px;
		padding: 0 20px;
		border: solid 1px #999;
		border-radius: 8px;
	}
	
	.scnum4{
		width: 600px;
		height: 280px;
		margin-bottom: 30px;
		padding: 0 20px;
		border: solid 1px #999;
		border-radius: 8px;
	}
	
	.sctitle{
		font-size: 22px;
		text-align: left;
		margin: 22px 0;
		font-weight: bold;
	}
	
	.scsub{
		font-size: 16px;
		text-align: left;
		margin: 16px 0;
		color: #999;
	}
	
	.memin_ul {
		padding: 0px;
    	margin-top: 15px;
    	margin-bottom: 15px;
	}
	
	.memin_fli {
		display: flex;
    	-webkit-box-align: center;
    	align-items: center;
    	cursor: inherit;
	}
	
	.memin_li:not(:first-child) {
		 border-top: 1px solid #999;
	}
	
	.memin_li {
		display: flex;
    	-webkit-box-align: center;
    	align-items: center;
    	cursor: pointer;
	}
	
	.p_detail {
		color: black;
	    font-weight: 500;
	    text-align: left;
	    letter-spacing: 0.0056em;
	    font-size: 16px;
	    line-height: 24px;
	    min-width: 120px;
	    margin-right: 15px;
	    margin : 16px 15px 16px 0px;
	}
	
	.p_email{
		color: black;
    	font-weight: 400;
    	text-align: left;
    	letter-spacing: 0.0056em;
    	font-size: 16px;
    	line-height: 24px;
    	flex: 1 1 0%;
    	margin-right: 10px;
    	word-break: break-all;
    	margin : 16px 10px 16px 0px;
	}
	
	.p_item{
		color: #888;
    	font-weight: 400;
    	text-align: left;
    	letter-spacing: 0.0056em;
    	font-size: 16px;
    	line-height: 24px;
    	flex: 1 1 0%;
    	margin-right: 10px;
    	word-break: break-all;
    	margin : 16px 10px 16px 0px;
	}
	
</style>

<script type="text/javascript">
	
</script>

<body>
	<div class="miMain_frame">
		<div class="miMain_content">
			<section class="scnum1">
				
			</section>
			<section class="scnum2">
				<p class="sctitle">계정 관리</p>
				<p class="scsub">서비스에서 사용하는 내 계정 정보를 관리할 수 있습니다.</p>
				<ul class="memin_ul">
					<li class="memin_fli">
						<p class="p_detail">이메일</p><p class="p_email">ricetable05@gmail.com</p>
					</li>
					<li class="memin_li">
						<p class="p_detail">이름</p><p class="p_item">박상준</p><span><i class="fa-solid fa-chevron-right"></i></span>
					</li>
					<li class="memin_li">
						<p class="p_detail">닉네임</p><p class="p_item">밥상밥상</p><span><i class="fa-solid fa-chevron-right"></i></span>
					</li>
					<li class="memin_li">
						<p class="p_detail">휴대폰 번호</p><p class="p_item">010-5555-3333</p><span><i class="fa-solid fa-chevron-right"></i></span>
					</li>
				</ul>
			</section>
			<section class="scnum3">
				<p class="sctitle">개인 정보 보호</p>
				<p class="scsub">내 계정을 안전하게 보호하기 위한 정보를 관리할 수 있습니다.</p>
				<ul class="memin_ul">
					<li class="memin_li">
						<p class="p_detail">비밀번호 변경</p><p class="p_item"></p><span><i class="fa-solid fa-chevron-right"></i></span>
					</li>
					<li class="memin_li">
						<p class="p_detail">회원탈퇴</p><p class="p_item"></p><span><i class="fa-solid fa-chevron-right"></i></span>
					</li>
				</ul>
			</section>
			<section class="scnum4">
			</section>
		</div>
	</div>
</body>