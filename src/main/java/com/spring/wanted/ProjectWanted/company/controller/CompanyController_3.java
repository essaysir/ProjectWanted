package com.spring.wanted.ProjectWanted.company.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.wanted.ProjectWanted.company.service.InterCompanyService_2;

@RequestMapping("/wanted/company")
@Controller
public class CompanyController_3 {
	private final InterCompanyService_2 service ; 

	@Autowired
	public CompanyController_3(InterCompanyService_2 service ) {
	 this.service = service ;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
