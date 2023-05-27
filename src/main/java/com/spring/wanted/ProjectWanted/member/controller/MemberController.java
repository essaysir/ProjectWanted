package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService;


@Controller
public class MemberController {
		
	@Autowired
	private InterMemberService service ;
	
	// 헤더에 포함되어 있는 TBL_DUTY , 와 JOB 불러오기
		@ResponseBody
		@GetMapping(value="/getDuty" ,  produces = "text/plain;charset=UTF-8")
		public String  getDuty() {
			List<String> JobList = service.getJob();
			JSONObject jsonObj = new JSONObject() ;
			jsonObj.put("JobList", JobList);
			return jsonObj.toString() ;
		}
		
		//  회원 가입 페이지
		@GetMapping(value="/wanted/register")
		public String register() {
			
			
			return "/member/mypage.tiles1";
		}

	
	
	
	
	
	
	
	
	
}
