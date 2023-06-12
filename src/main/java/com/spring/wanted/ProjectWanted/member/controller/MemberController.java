package com.spring.wanted.ProjectWanted.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.service.InterMemberService;

@RequestMapping(value="/wanted")
@Controller
public class MemberController {
	
	@Autowired
	public MemberController(InterMemberService service , PasswordEncoder passwordEncoder) {
		this.service = service;
		this.passwordEncoder = passwordEncoder ;
	}
	
	private final InterMemberService service ;
	private final PasswordEncoder passwordEncoder ;
	
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
		
		@PostMapping(value="/register")
		public String register(MemberVO mvo) {
			// System.out.println(" 확인용 mvo : " + mvo );
			mvo.setPwd(passwordEncoder.encode(mvo.getPwd()));
			mvo.setMobile(passwordEncoder.encode(mvo.getMobile()));
			
			// System.out.println(mvo.getMobile());
			// System.out.println(mvo.getPwd());
			
			service.register(mvo);
			
			return "/member/login.tiles1";
		}
		
		@GetMapping(value="/logout")
		public String logout (HttpServletRequest request , HttpServletResponse response) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication() ;
			if  ( authentication != null ) {
				new SecurityContextLogoutHandler().logout(request, response, authentication);
			}
			
			return "redirect:/wanted";
		}
		
		//  회원 가입 페이지
		@GetMapping(value="/detail")
		public String login2() {
				return "post/detailPost.tiles1";
		}
}// END OF PUBLIC CLASS MEMEBERCONTROLLER