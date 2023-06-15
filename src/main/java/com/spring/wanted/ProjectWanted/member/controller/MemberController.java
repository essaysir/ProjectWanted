package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.service.InterMemberService;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

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
		
		@PostMapping(value="/member/register")
		public String register(MemberVO mvo) {
			System.out.println(" 확인용 mvo : " + mvo );
			mvo.setPwd(passwordEncoder.encode(mvo.getPwd()));
			
			// System.out.println(mvo.getMobile());
			// System.out.println(mvo.getPwd());
			
			service.register(mvo);
			
			return "redirect:/wanted/login";
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
		@GetMapping(value="/detail/{post_code}")
		public String postDetail(@PathVariable int post_code , HttpServletRequest request) {
				PostVO pvo = service.getPostVO(post_code);
				CompanyVO cvo = service.getCompanyVO(post_code);
				List<String> imageList = service.getImageList(cvo.getCompany_id());
				
				// System.out.println(" 확인용 pvo : " + pvo );
				request.setAttribute("pvo", pvo);
				// System.out.println(" 확인용 cvo : " + cvo );
				request.setAttribute("cvo", cvo);
				request.setAttribute("imageList", imageList);
				return "post/detailPost.tiles1";
		}
		
		// Detail JobPost 
		@ResponseBody
		@PostMapping(value="/member/apply")
		public String apply() {
			Authentication authenticate = SecurityContextHolder.getContext().getAuthentication();
			MemberVO mvo = (MemberVO)authenticate.getPrincipal();
			// System.out.println(" 확인용 auth : " + authenticate);
			System.out.println(" 확인용 mvo : " + mvo);
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("authenticate", authenticate);
			jsonObj.put("mvo", mvo);
			
			return jsonObj.toString() ;
		}
		
}// END OF PUBLIC CLASS MEMEBERCONTROLLER