package com.spring.wanted.ProjectWanted.common.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.common.service.InterCommonService;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;

@RequestMapping(value="/wanted")
@Controller
public class CommonController {
	private final InterCommonService service ;
	
	@Autowired
	public CommonController(InterCommonService service ) {
		this.service = service;
	}
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	@GetMapping(value="")
	public String index(HttpServletRequest request) {
		/*
		 * Authentication authentication =
		 * SecurityContextHolder.getContext().getAuthentication(); String userid =
		 * authentication.getName();
		 * 
		 * System.out.println(" 확인용 userid : " + userid );
		 * 
		 * request.setAttribute("userid", userid);
		 */
		return "index.tiles1";
	}
	
	@GetMapping(value="/skill")
	public String login() {
		return "/post/mainPost2.tiles1";
	}
	
	@ResponseBody
	@GetMapping(value="/getSkill")
	public String getSkill() {
		String json  = service.getSkill();
		return json ;
	}
	@ResponseBody
	@GetMapping(value="/searchSkill")
	public String searchSkill(@RequestParam String input_val ) {
		String json = service.searchSkill(input_val);
		return json ;
	}
	
	@PostMapping(value="/company/checkUserid")
	public String checkUserid(@RequestParam String userid , HttpServletRequest request ) {
		String view = service.checkUserid(userid);
		request.setAttribute("userid", userid);
		return view ;
	}
	
	
}
