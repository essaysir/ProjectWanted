package com.spring.wanted.ProjectWanted.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CompanyController_2 {
	
	@GetMapping(value="/wanted/index")
	public String index()
	{
		return "index.tiles1";
	}

}
