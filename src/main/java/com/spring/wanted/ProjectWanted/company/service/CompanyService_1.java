package com.spring.wanted.ProjectWanted.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_1;

@Service
public class CompanyService_1 implements InterCompanyService_1 {
	
	@Autowired
	private InterCompanyDAO_1 cdao;

}
