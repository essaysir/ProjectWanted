package com.spring.wanted.ProjectWanted.company.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_1;

public class CompanyController_1 implements InterCompanyMapper_1 {

	// 이력서소개 페이지
	@PostMapping(value = "/wanted/resume_info")
	public String resume_info() {
		
		
		return "resume/resume_info.tiles1" ;
	}
	
/*	
	// 회사 지원자 페이지
	@RequestMapping(value = "/company/company_candidateList.wanted")
	public ModelAndView company_candidateList(ModelAndView mav){
		
		mav.setViewName("company/company_candidateList.tiles2");
		
		return mav;
	}

	
	// 회사 지원자 통계 페이지
	@RequestMapping(value = "/company/company_chart.wanted")
	public ModelAndView company_statistics(ModelAndView mav){
		
		mav.setViewName("company/company_chart.tiles2");
		
		return mav;
	}
*/
	
	
}
