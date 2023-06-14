package com.spring.wanted.ProjectWanted.post.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.post.model.InterPostDAO;

@Service
public class PostService implements InterPostService {

	private final InterPostDAO pdao;
	
	public PostService(InterPostDAO pdao) {
		this.pdao = pdao;
	}

	// Job 데이터 불러오기
	@Override
	public List<Map<String, String>> getJobList() {
		
		List<Map<String, String>> JobList = pdao.getJobList();
		
		return JobList;
	}

	// 공고리스트 불러오기
	@Override
	public List<Map<String, String>> getPostList() {
		List<Map<String, String>> PostList = pdao.getPostList();
		
		return PostList;
	}

	// Duty 데이터 불러오기
	@Override
	public List<Map<String, String>> getDutyList(String job_code) {
		List<Map<String, String>> DutyList = pdao.getDutyList(job_code);
		
		return DutyList;
	}

	// region 데이터 불러오기
	@Override
	public List<Map<String, String>> getRegionList() {
		List<Map<String, String>> RegionList = pdao.getRegionList();
		
		return RegionList;
	}

	// region_detail 데이터 불러오기
	@Override
	public List<Map<String, String>> getRegionDetailList(String region_code) {
		List<Map<String, String>> RegionDetailList = pdao.getRegionDetailList(region_code);
		
		return RegionDetailList;
	}

	// 검색필터를 거친 공고리스트 불러오기
	@Override
	public List<Map<String, String>> getPostListWithFilters(List<String> job_code, List<String> duty_code,
			List<String> tech_code) {
		
		List<Map<String, String>> PostList = pdao.getPostListWithFilters(job_code, duty_code, tech_code);
		
		return PostList;
	}
	
	
	
	
	
	
}
