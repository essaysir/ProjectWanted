<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
				h2.mypage-name{
				    font-size: 20px;
			   		 font-weight: 700;
			    	color: #333;
			    	padding: 50px 0 20px;
				}
				ul.sidebarList{
					list-style-type: none ;
					padding : 0px ; 
					text-align: center ;
				}
				
				div.mypage-profile{
					display: inline-block;
				    position: relative;
				    width: 77px;
				    height: 77px;
				    border-radius: 50%;
				    background-size: cover;
				    background-position: 50%;
				    background-color : black ; 
				    margin-top: 45px; 
				}
				a.profile-name{
				  font-size: 18px; 
				  line-height: 19px;
			      font-weight: 700;
			      color: black;
				}
				a.profile-email{
				    font-size: 14px;
			   		 line-height: 16px;
					color: #767676;
				}
				div.resume-status {
				    background: #fff;
				    border: 1px solid #e1e2e3;
			    	border-radius: 5px;
			    	margin: 0 0 20px;
			    	padding: 26px 0 34px;
					height : 120px ;
					display: block ; 
				}
				
</style>    

<script type="text/javascript">


</script>    

<div class="container">
	<h2 class="mypage-name">MY 원티드</h2>
	
	<div class="row">
		<div class="col-md-3" >
			<ul class="border sidebarList" >
				<li style="height: 320px;">
						<div class="mypage-profile"></div>
						<ul style="list-style-type: none; margin-top:30px; ">
							<li class="list-link" style="padding-right: 47px; "><a class="profile-name">이름</a></li>
							<li class="list-link" style="padding-right: 47px;"><a class="profile-email">이메일</a></li>
							<li class="list-link" style="padding-right: 47px;"><a class="profile-email">연락처</a></li>
						</ul>
				</li>
				
				<li class="border-top" style="height: 80px; line-height: 5;">
					지원현황<span class="badge bg-primary rounded-pill" style="margin-left:10px;">14</span>
					
				</li>
				
				<li class="border-top" style="height: 80px; line-height: 5;" >
				계정설정
				</li>
			
			</ul>
		</div>
	
		<div class="col-md-9">
			<div class="resume-status">
			
			</div>
		</div>
	
	
	</div>
</div>