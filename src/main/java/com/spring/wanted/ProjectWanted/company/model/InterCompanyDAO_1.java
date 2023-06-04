package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

public interface InterCompanyDAO_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	// 지원자List totalCount
	int getTotalCount(Map<String, String> paraMap);

	// 페이징처리  한 지원자List 불러오기
	List<Map<String, String>> candidateListSearchWithPaging(Map<String, String> paraMap);

	// 검색기능
	List<String> wordSearchShow(Map<String, String> paraMap);

}
