package com.spring.wanted.ProjectWanted.post.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface InterPostMapper {

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
	List<Map<String, String>> getPostListWithFilters(@Param("job_code") List<String> job_code, @Param("duty_code") List<String> duty_code,
													@Param("region_detail_code") List<String> region_detail_code,
													@Param("career") List<String> career, @Param("tech_code") List<String> tech_code);
	
}
