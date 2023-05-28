package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;

@Service
public class CompanyService_2 implements InterCompanyService_2 {
	
	@Autowired
	private InterCompanyDAO_2 cdao;
	
	@Override
	public List<String> getJobList() {

		List<String> JobList = cdao.getJobList();
		
		return JobList;
	}

}
