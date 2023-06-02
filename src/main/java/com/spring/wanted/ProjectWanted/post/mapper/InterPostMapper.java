package com.spring.wanted.ProjectWanted.post.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InterPostMapper {

	// Job 데이터 불러오기
	List<Map<String, String>> getJobList();

	
	
}
