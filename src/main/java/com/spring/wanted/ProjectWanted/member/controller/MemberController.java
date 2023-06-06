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
			return "tiles1/member/login";
		}

		
		@GetMapping(value="/login2")
		public String login2() {
			return "/post/mainPost2.tiles1";
		}
		@GetMapping(value="/index")
		public String index() {
			return "/tiles1/post/test";
		}
			
		
		// 이메일 입력시 
		@PostMapping(value="/checkUserid")
		public String checkUserid(@RequestParam String userid , HttpServletRequest request ) {
			String view = service.checkUserid(userid);
			request.setAttribute("userid", userid);
			return view ;
		}
		
		@GetMapping(value="/register")
		public String test() {
			
			return "tiles1/member/signup";
		}
		

	
	
	
	
	
	
	
	
	
}
