package com.spring.wanted.ProjectWanted.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.wanted.ProjectWanted.common.service.InterCommonService;
import com.spring.wanted.ProjectWanted.company.model.CompanyVO;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;

@RequestMapping(value = "/wanted")
@Controller
public class CommonController {
	private final InterCommonService service;
	private final PasswordEncoder passwordEncoder ;
	@Autowired
	public CommonController(InterCommonService service , PasswordEncoder passwordEncoder ) {
		this.service = service;
		this.passwordEncoder = passwordEncoder ; 
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	@GetMapping(value = "")
	public String index(HttpServletRequest request) {
		
		return "index.tiles1";
	}
	
	@ResponseBody
	@GetMapping(value="/member/getLogin")
	public String getLogin() {
		JSONObject jsonObj = new JSONObject();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); 
		System.out.println(" 확인용 authentication " + authentication);
		if ( authentication != null ) {
			MemberVO mvo = (MemberVO)authentication.getPrincipal();
			System.out.println("확인용 mvo "+mvo);
			jsonObj.append("userid", mvo.getUserid());
			jsonObj.append("image", mvo.getProfile_image());
		}

		return jsonObj.toString();
	}
	
	
	@GetMapping(value = "/skill")
	public String login() {
		return "/post/mainPost2.tiles1";
	}

	@ResponseBody
	@GetMapping(value = "/getSkill")
	public String getSkill() {
		String json = service.getSkill();
		return json;
	}

	@ResponseBody
	@GetMapping(value = "/searchSkill")
	public String searchSkill(@RequestParam String input_val) {
		String json = service.searchSkill(input_val);
		return json;
	}

	@PostMapping(value = "/company/checkUserid")
	public String checkUserid(@RequestParam String userid, HttpServletRequest request) {
		String view = service.checkUserid(userid);
		request.setAttribute("userid", userid);
		return view;
	}
	
	@PostMapping(value="/company/register")
	public String register_comp(CompanyVO cvo ) {
		System.out.println( " 확인용 cvo  : " + cvo);
		cvo.setPwd(passwordEncoder.encode(cvo.getPwd()));
		
		// System.out.println(mvo.getMobile());
		// System.out.println(mvo.getPwd());
		
		service.register(cvo);

		
		return "redirect:/wanted/company/login";
	}
	
	@GetMapping(value="/resume")
	public String resume_list() {
		return "/resume/resume_info.tiles1";
	}

}
