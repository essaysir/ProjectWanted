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
	
	
	
	
}
