package com.spring.wanted.ProjectWanted.company.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.spring.wanted.ProjectWanted.company.mapper.InterCompanyMapper_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Component
@Repository
public class CompanyDAO_2 implements InterCompanyDAO_2 {
	
	private final InterCompanyMapper_2 mapper;
	
	@Autowired
	public CompanyDAO_2(InterCompanyMapper_2 mapper) {
		this.mapper = mapper;
	}
	
	// job_select에필요한 값 가져오기	
	@Override
	public List<Map<String, String>> getJobList() {
		
		List<Map<String, String>> JobList = mapper.getJobList();
		
		return JobList;
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@Override
	public List<Map<String, String>> getDutyList(String jobCode) {
		List<Map<String, String>> dutyList = mapper.getDutyList(jobCode);
		return dutyList;
	}
	
	// TBL_POST에 등록하기
	@Override
	public void insertRecruit(PostVO postvo) {
		mapper.insertRecruit(postvo);
		
	}
	
	// 채용공고관리페이지 띄우기
	@Override
	public int getTotalPost(String id) {
		int totalPost = mapper.getTotalPost(id);
		
		return totalPost;
	}
	
	//ajax로 Post호출하기
	@Override
	public List<Map<String, String>> getPost(Map<String, String> paraMap) {
		List<Map<String, String>> postList = mapper.getPost(paraMap);
		return postList;
	}

}
