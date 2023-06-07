package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

public interface InterCompanyService_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> candidateList(Map<String, String> paraMap);

	// 지원자List 페이징
	int getTotalCount(Map<String, String> paraMap);
	
	// 검색기능
	List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap);

	// 지원자 이력서  가져오기
	List<Map<String, String>> candidateResume(Map<String, String> paraMap);

//	String wordSearchShow(Map<String, String> paraMap);

	


	

	
	
}
