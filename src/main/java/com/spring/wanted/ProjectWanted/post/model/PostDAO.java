package com.spring.wanted.ProjectWanted.post.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.post.mapper.InterPostMapper;

@Component
@Repository
public class PostDAO implements InterPostDAO {

	
	private final InterPostMapper mapper;
	
	@Autowired
	public PostDAO(InterPostMapper mapper) {
		this.mapper = mapper;
	}

	// Job 데이터 불러오기
	@Override
	public List<Map<String, String>> getJobList() {
		
		List<Map<String, String>> JobList = mapper.getJobList();
		
		return JobList;
	}

	// 공고리스트 불러오기
	@Override
	public List<Map<String, String>> getPostList() {
		List<Map<String, String>> PostList = mapper.getPostList();
		
		return PostList;
	}

	// Duty 데이터 불러오기
	@Override
	public List<Map<String, String>> getDutyList(String job_code) {
		List<Map<String, String>> DutyList = mapper.getDutyList(job_code);
		
		return DutyList;
	}

	// region 데이터 불러오기
	@Override
	public List<Map<String, String>> getRegionList() {
		List<Map<String, String>> RegionList = mapper.getRegionList();
		
		return RegionList;
	}

	// region_detail 데이터 불러오기
	@Override
	public List<Map<String, String>> getRegionDetailList(String region_code) {
		List<Map<String, String>> RegionDetailList = mapper.getRegionDetailList(region_code);
		
		return RegionDetailList;
	}

	// 검색필터를 거친 공고리스트 불러오기
	@Override
	public List<Map<String, String>> getPostListWithFilters(List<String> job_code, List<String> duty_code,
			List<String> tech_code) {
		
		List<Map<String, String>> PostList = mapper.getPostListWithFilters(job_code, duty_code, tech_code);
		
		return PostList;
	}
	
}
