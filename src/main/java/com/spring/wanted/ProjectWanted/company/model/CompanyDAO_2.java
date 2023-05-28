package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_2;

@Component
@Repository
public class CompanyDAO_2 implements InterCompanyDAO_2 {
	
	@Autowired
	private InterCompanyMapper_2 mapper;
	
	@Override
	public List<String> getJobList() {
		
		List<String> JobList = mapper.getJobList();
		
		return JobList;
	}

}
