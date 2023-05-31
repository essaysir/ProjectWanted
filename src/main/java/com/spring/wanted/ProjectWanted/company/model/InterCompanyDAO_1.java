package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

public interface InterCompanyDAO_1 {

	// 회사 지원자List 불러오기
	List<Map<String, String>> getcandidateList(Map<String, String> paraMap);

}
