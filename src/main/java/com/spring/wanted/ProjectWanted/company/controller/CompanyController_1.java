package com.spring.wanted.ProjectWanted.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_1;

@Controller
public class CompanyController_1 {

	@Autowired  
	private InterCompanyService_1 service;
	
	
	// 이력서소개 페이지
	@GetMapping(value = "/wanted/resume_info")
	public String resume_info() {
		return "resume/resume_info.tiles1" ;
	}
	
	
	// 이력서List 페이지
		@GetMapping(value = "/wanted/resume_list")
		public String resume_list() {
			return "resume/resume_list.tiles1" ;
		}
	

	// 회사 지원자 관리 페이지
	@GetMapping(value = "/wanted/company_candidateList")
	public ModelAndView company_candidateList(ModelAndView mav){
		
		mav.setViewName("company/company_candidateList.tiles2");
		
		return mav;
	}

	
	// 회사 지원통계(차트) 페이지
	@GetMapping(value = "/wanted/company_chart")
	public ModelAndView company_statistics(ModelAndView mav){
		
		mav.setViewName("company/company_chart.tiles2");
		
		return mav;
	}

	
	
}
