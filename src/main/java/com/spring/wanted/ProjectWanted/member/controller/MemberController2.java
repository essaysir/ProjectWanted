package com.spring.wanted.ProjectWanted.member.controller;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.service.InterMemberService2;

@Controller
@RequestMapping("/wanted/member/myresume")
public class MemberController2 {
		
	private final InterMemberService2 service2;
	
	@Autowired
	public MemberController2(InterMemberService2 service2) {
		this.service2 = service2;
	}

	
	// 이력서 작성 페이지 불러오기
	@GetMapping(value = "/wanted/member/myresume")
	public String resume_inputLoad() {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		MemberVO mvo = (MemberVO) authentication.getPrincipal();
		
		System.out.println(mvo);
		return "/member/resume_input.tiles1";
	}
	
	
	// 이력서 작성 페이지의 작성된 이력서 DB에 저장하기
	@PostMapping(value = "/wanted/member/myresume")
	public String resume_input(@RequestBody ResumeVO resumevo) {
	//	Gson gson = new GsonBuilder().setPrettyPrinting().create();
	//	System.out.println(gson.toJson(resumevo));
		System.out.println(resumevo);
		
	    
       int n = service2.insertResume(resumevo); // 이력서 insert 처리해주는 메소드 생성
	    
	    JSONObject json = new JSONObject();
	    
	    if (n == 1) {
	        json.put("result", "success");
	    }
	    else {
	    	json.put("result", "fail");
	    	
	    }
	    
	    return json.toString();
	}
	 
	
}
