package com.spring.wanted.ProjectWanted.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.wanted.ProjectWanted.member.service.InterMemberService;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

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
		
		// 이메일 입력시 
		@PostMapping(value="/login/checkUserid")
		public String checkUserid(@RequestParam String userid , HttpServletRequest request ) {
			String view = service.checkUserid(userid);
			request.setAttribute("userid", userid);
			return view ;
		}
		

}