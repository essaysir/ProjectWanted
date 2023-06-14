package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.member.model.ResumeVO;

public interface InterCompanyService_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> candidateList(Map<String, String> paraMap);

	// 지원자List 페이징
	int getTotalCount(Map<String, String> paraMap);
	
	List<Map<String, String>> listhSearchWithPaging(Map<String, String> paraMap);

	// 검색
	List<Map<String, String>> wordSearchShow(Map<String, String> paraMap);

	// 지원자 이력서 데이터 가져오기
	List<ResumeVO> getApplyResume();

	


	

	






	

	

	


	

	
	
}
