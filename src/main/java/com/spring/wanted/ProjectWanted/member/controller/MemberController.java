package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService;

import javax.servlet.http.HttpServletRequest;


@Controller
public class MemberController {
		
	@Autowired
	private InterMemberService service ;
	
		//  회원 가입 페이지
		@GetMapping(value="/wanted/register")
		public String register() {
			
			
			return "/member/mypage.tiles1";
		}

	
	
	
	
	
	
	
	
	
}
