package com.spring.wanted.ProjectWanted.company.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_1;

@Component
@Repository
public class CompanyDAO_1 implements InterCompanyDAO_1 {
	
	@Autowired
	private InterCompanyMapper_1 mapper;

}
