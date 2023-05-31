package com.spring.wanted.ProjectWanted.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService2;

@Controller
@RequestMapping("/wanted")
public class MemberController2 {
		
	private InterMemberService2 service2 ;
	
	@Autowired
	private MemberController2(InterMemberService2 service2) {
		this.service2 = service2;
	}

	@GetMapping(value = "/myresume")
	public String resume_input(HttpServletRequest request) {

		
		return "/member/resume_input.tiles1";
	}
	
	
	
	
	
	
	
	
}
