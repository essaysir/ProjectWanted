package com.spring.wanted.ProjectWanted.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spring.wanted.ProjectWanted.member.model.MemberVO;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;
import com.spring.wanted.ProjectWanted.member.service.InterMemberService2;

@Controller
@RequestMapping("/wanted")
public class MemberController2 {
		
	private final InterMemberService2 service2;
	
	@Autowired
	public MemberController2(InterMemberService2 service2) {
		this.service2 = service2;
	}

	
	// 이력서 작성 페이지 불러오기
	@GetMapping(value = "/member/myresume")
	public String resume_inputLoad(HttpServletRequest request) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		MemberVO mvo = (MemberVO) authentication.getPrincipal();
		request.setAttribute("mvo", mvo);
		
		
		System.out.println(mvo);
		return "/resume/resume_input.tiles1";
	}
	
	
	// 이력서 작성 페이지의 작성된 이력서 DB에 저장하기
	@ResponseBody
	@PostMapping(value = "/member/myresume")
	public String resume_input(@RequestBody ResumeVO resumevo) {
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		// System.out.println(" 확인용 resumevo : " + resumevo);
		// System.out.println(" 확인용 careervo : " + resumevo.getCareervoList());
		String introduce = resumevo.getIntroduce().replace("\r\n", "<br/>");
		introduce = introduce.replace("\n", "<br/>");
		
		resumevo.setIntroduce(introduce);
		
		System.out.println(gson.toJson(resumevo));
       int n = service2.insertResume(resumevo); // 이력서 insert 처리해주는 메소드 생성
	    
	    JSONObject json = new JSONObject();
	    
	    if (n == 1) {
	    	System.out.println(" 성공이다");
	        json.put("result", "success");
	    }
	    else {
	    	json.put("result", "fail");
	    	
	    }
	    
	    return json.toString();
	}
	 
	
}
