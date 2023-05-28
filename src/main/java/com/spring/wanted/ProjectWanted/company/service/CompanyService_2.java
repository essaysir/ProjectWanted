package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;

@Service
public class CompanyService_2 implements InterCompanyService_2 {
	
	private final InterCompanyDAO_2 cdao;
	
	@Autowired
	public CompanyService_2(InterCompanyDAO_2 cdao) {
		this.cdao = cdao;
	}
	
	@Override
	public List<Map<String, String>> getJobList() {

		List<Map<String, String>> JobList = cdao.getJobList();
		
		return JobList;
	}

}
