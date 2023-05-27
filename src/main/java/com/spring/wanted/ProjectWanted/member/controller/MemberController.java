package com.spring.wanted.ProjectWanted.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MemberController {
	
		@GetMapping(value="/wanted/register")
		public String register() {
			
			
			return "/member/mypage.tiles1";
		}

	
	
	
	
	
	
	
	
	
}
