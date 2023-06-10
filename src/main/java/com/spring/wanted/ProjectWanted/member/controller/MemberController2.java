package com.spring.wanted.ProjectWanted.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.spring.wanted.ProjectWanted.member.model.CareerVO;
import com.spring.wanted.ProjectWanted.member.model.LanguageVO;
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
	@GetMapping(value = "/myresume")
	public String resume_inputLoad() {
		// 이력서 작성 페이지를 불러오는 로직
		return "/member/resume_input.tiles1";
		// @RequestParam(value="tech_code", required=true) List<String> tech_code
	}
	
	
	// 이력서 작성 페이지의 작성된 이력서 DB에 저장하기
	@PostMapping(value = "/myresume")
	public String resume_input(@RequestBody ResumeVO resumevo ) {
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		System.out.println(gson.toJson(resumevo));
		
		return "/member/resume_input.tiles1";
	}
}
