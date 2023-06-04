package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_1;

@Component
@Repository
public class CompanyDAO_1 implements InterCompanyDAO_1 {
	
	private final InterCompanyMapper_1 mapper;
	
	@Autowired
	public CompanyDAO_1(InterCompanyMapper_1 mapper) {
		this.mapper = mapper;
	}

	
	// 회사 지원자List 불러오기
	@Override
	public List<Map<String, String>> getcandidateList(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.getcandidateList(paraMap);
		return candidateList;
	}


	// 지원자List totalCount
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = mapper.getTotalCount(paraMap);
		return n;
	}


	// 페이징처리  한 지원자List 불러오기
	@Override
	public List<Map<String, String>> candidateListSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.candidateListSearchWithPaging(paraMap);
		return candidateList;
	}


	@Override
	public List<String> wordSearchShow(Map<String, String> paraMap) {
		List<String> wordList = mapper.wordSearchShow(paraMap);
		return wordList;
	}

}
