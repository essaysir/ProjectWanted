package com.spring.wanted.ProjectWanted.company.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_2;

@Controller
public class CompanyController_2 {
	
	private final InterCompanyService_2 service ; 

	@Autowired
	public CompanyController_2(InterCompanyService_2 service ) {
	 this.service = service ;
	}	
		
	@GetMapping(value="/wanted/recruit", produces = "text/plain;charset=UTF-8")
	public String recruit(HttpServletRequest request){
		
		List<Map<String, String>> JobList = service.getJobList();
		
		request.setAttribute("JobList", JobList);
		
		return "company/company_recruit.tiles2";
	}
	

}
