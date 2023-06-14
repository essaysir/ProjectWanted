package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_1;
import com.spring.wanted.ProjectWanted.member.model.ResumeVO;

@Service
public class CompanyService_1 implements InterCompanyService_1 {
	
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
	
	
	// 지원자List 페이징 위한 게시글 전체개수
	@Override
	public int getTotalCount(Map<String, String> paraMap) {
		int n = cdao.getTotalCount(paraMap);
		return n;
	}

	
	// 지원자List with 검색 및 페이징
	@Override 
	public List<Map<String, String>> listhSearchWithPaging(Map<String, String> paraMap) {
		List<Map<String, String>> candidateList = cdao.listSearchWithPaging(paraMap); 
		return candidateList;
	}
	

	// 검색 자동완성
	@Override
	public List<Map<String, String>> wordSearchShow(Map<String, String> paraMap) {
		List<Map<String, String>> wordSearchShow = cdao.wordList(paraMap);
		return wordSearchShow;
	}


	// 지원자 이력서 데이터 가져오기
	@Override
	public List<ResumeVO> getApplyResume() {
		List<ResumeVO> getApplyResume = cdao.resumeContent();
		return getApplyResume;
	}





	
	
	
	
	


	



	




	





	
	
	
	
	

}
