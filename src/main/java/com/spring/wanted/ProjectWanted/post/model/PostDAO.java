package com.spring.wanted.ProjectWanted.post.model;

import java.util.List;
import java.util.Map;

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
	
}
