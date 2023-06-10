package com.spring.wanted.ProjectWanted.company.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterCompanyMapper_1 {
	
	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

	
	// 지원자List 페이징 위한
	int getTotalCount(Map<String, String> paraMap);


	// 검색기능
	List<Map<String, String>> listSearchWithPaging(Map<String, String> paraMap);


	// 지원자 이력서 가져오기
	List<Map<String, String>> getResume(Map<String, String> paraMap);
	
//	List<String> wordSearchShow(Map<String, String> paraMap);







	
	
	

}
