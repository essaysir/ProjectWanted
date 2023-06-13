package com.spring.wanted.ProjectWanted.post.model;

import java.util.List;
import java.util.Map;

public interface InterPostDAO {

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
	
	

}
