package com.spring.wanted.ProjectWanted.company.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_1;

@RequestMapping("/wanted")
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
	

	
	@GetMapping("/company")
	public String viewCandidateList() {
		return "company/company_candidateList.tiles2";
	}
	
	
	// 회사 지원자List 불러오기
	//@ResponseBody 
	@GetMapping(value = "/getCandidateList", produces = "text/plain;charset=UTF-8")
	public String candidateList(HttpServletRequest request){
		//String viewName="company/company_candidateList.tiles2";
		
		Map<String, String> paraMap = new HashMap<>();
		String status = request.getParameter("status");
		paraMap.put("status", status);
		
		List<Map<String,String>> candidateList = service.candidateList(paraMap);
//		ModelAndView mav = new ModelAndView("tiles2/company/content/company_candidateList_detail");
//		mav.addObject("candidateList", candidateList);
		
		request.setAttribute("candidateList", candidateList);
		
		return "tiles2/company/content/company_candidateList_detail";
	}

	
	// 회사 지원통계(차트) 페이지
	@GetMapping(value = "/wanted/company_chart")
	public ModelAndView company_statistics(ModelAndView mav){
		
		mav.setViewName("company/company_chart.tiles2");
		
		return mav;
	}

	
	
}
