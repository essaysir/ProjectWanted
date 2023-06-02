package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService;

import javax.servlet.http.HttpServletRequest;

@RequestMapping(value="/wanted")
@Controller
public class MemberController {
		
	
	private final InterMemberService service ;
	
	@Autowired
	public MemberController(InterMemberService service ) {
		this.service = service;
	}
	
		//  회원 가입 페이지
		@GetMapping(value="/login")
		public String login() {
			return "tiles1/member/loginpassword";
		}
		
		//  회원 가입 로그인 시도시 페이지
		@PostMapping(value="/login")
		public String login(@RequestParam String userid) {
			
			return "";
		}
		@PostMapping(value="/checkUserid")
		public String checkUserid(@RequestParam String userid ) {
			String view = service.checkUserid(userid);
			return view ;
		}
		
		@GetMapping(value="/register")
		public String test() {
			
			return "tiles1/member/signup";
		}
		

	
	
	
	
	
	
	
	
	
}
