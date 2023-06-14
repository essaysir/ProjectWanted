package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import com.spring.wanted.ProjectWanted.member.model.ResumeVO;

public interface InterCompanyDAO_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	// 지원자List 페이징
	int getTotalCount(Map<String, String> paraMap);

	// 검색기능
	List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap);

	List<Map<String, String>> wordList(Map<String, String> paraMap);

	// 지원자 이력서 데이터 가져오기
	List<ResumeVO> resumeContent();

	




	



	



	


	
	

}
