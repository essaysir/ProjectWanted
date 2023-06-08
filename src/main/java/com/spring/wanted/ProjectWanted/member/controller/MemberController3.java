package com.spring.wanted.ProjectWanted.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/wanted/member")
@Controller
public class MemberController3 {
	
	@GetMapping(value="/memberInfo")
	public String memberInfo() {
		
		
		return "member/memberInfo.tiles1";
		
	}
	
	@GetMapping(value="/memberInfo2")
	public String memberInfo2() {
		
		
		return "member/memberInfo.tiles3";
		
	}
	
}
