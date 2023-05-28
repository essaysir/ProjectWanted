package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;

@Service
public class CompanyService_2 implements InterCompanyService_2 {
	
	@Autowired
	private InterCompanyDAO_2 cdao;
	
	@Override
	public List<Map<String, Object>> getJobList() {

		List<Map<String, Object>> JobList = cdao.getJobList();
		
		return JobList;
	}

}
