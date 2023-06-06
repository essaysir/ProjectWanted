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

	
	// 지원자List 페이징 위한
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = mapper.getTotalCount(paraMap);
		return n;
	}
	
	
	// 검색기능
	@Override
	public List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = mapper.listSearchWithPaging(paraMap);
		return candidateList;
	}

	
	// 지원자 이력서 가져오기
	@Override
	public List<Map<String, String>> getResume(Map<String, String> paraMap) {
		List<Map<String, String>> candidateResume = mapper.getResume(paraMap);
		return candidateResume;
	}
	
/*	
	@Override
	public List<String> wordSearchShow(Map<String, String> paraMap) {
		List<String> wordList = mapper.wordSearchShow(paraMap);
		return wordList;
	}
*/
	


	

}
