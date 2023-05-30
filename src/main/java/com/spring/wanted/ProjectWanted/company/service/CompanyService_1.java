package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_1;
import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;

@Service
public class CompanyService_1 implements InterCompanyService_1 {
	
	@Autowired
	private final InterCompanyDAO_1 cdao;
	
	@Autowired
	public CompanyService_1(InterCompanyDAO_1 cdao) {
		this.cdao = cdao;
	}
	
	
	// 회사 지원자List 불러오기
	@Override
	public List<Map<String, String>> candidateList(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = cdao.getcandidateList(paraMap);
		return candidateList;
	}

}
