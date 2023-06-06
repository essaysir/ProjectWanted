package com.spring.wanted.ProjectWanted.post.model;

import java.util.List;
import java.util.Map;

public interface InterPostDAO {

	// Job 데이터 불러오기
	List<Map<String, String>> getJobList();

	// 공고리스트 불러오기
	List<Map<String, String>> getPostList();
	
	

}
