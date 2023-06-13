package com.spring.wanted.ProjectWanted.post.service;

import java.util.List;
import java.util.Map;

public interface InterPostService {

	// Job 데이터 불러오기
	List<Map<String, String>> getJobList();

	// 공고리스트 불러오기
	List<Map<String, String>> getPostList();

	// Duty 데이터 불러오기
	List<Map<String, String>> getDutyList(String job_code);

	// region 데이터 불러오기
	List<Map<String, String>> getRegionList();

	// region_detail 데이터 불러오기
	List<Map<String, String>> getRegionDetailList(String region_code);

	// 검색필터를 거친 공고리스트 불러오기
	List<Map<String, String>> getPostListWithFilters(List<String> job_code, List<String> duty_code, List<String> tech_code);

	

}
