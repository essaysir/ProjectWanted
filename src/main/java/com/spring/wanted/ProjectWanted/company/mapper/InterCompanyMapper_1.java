package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterCompanyMapper_1 {
	
	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	// 지원자List totalCount
	int getTotalCount(Map<String, String> paraMap);

	// 페이징처리  한 지원자List 불러오기
	List<Map<String, String>> candidateListSearchWithPaging(Map<String, String> paraMap);

	// 검색기능
	List<String> wordSearchShow(Map<String, String> paraMap);
	

}
