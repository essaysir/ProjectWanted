package com.spring.wanted.ProjectWanted.company.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_2;

@Controller
public class CompanyController_2 {
	
	@Autowired
	private InterCompanyService_2 service;
		
	@GetMapping(value="/wanted/recruit", produces = "text/plain;charset=UTF-8")
	public String recruit(HttpServletRequest request){
		
		List<String> JobList = service.getJobList();
		
		request.setAttribute("JobList", JobList);
		
		return "/company/company_recruit.tiles1";
	}
	

}
