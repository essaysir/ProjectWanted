package com.spring.wanted.ProjectWanted.company.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.wanted.ProjectWanted.company.model.InterCompanyDAO_2;
import com.spring.wanted.ProjectWanted.post.model.PostVO;

@Service
public class CompanyService_2 implements InterCompanyService_2 {
	
	private final InterCompanyDAO_2 cdao;
	
	@Autowired
	public CompanyService_2(InterCompanyDAO_2 cdao) {
		this.cdao = cdao;
	}
	
	// job_select에필요한 값 가져오기	
	@Override
	public List<Map<String, String>> getJobList() {

		List<Map<String, String>> JobList = cdao.getJobList();
		
		return JobList;
	}
	
	// job_select에 따라 해당되는 duty_select 가져오기
	@Override
	public List<Map<String, String>> getDutyList(String jobCode) {

		List<Map<String, String>> dutyList = cdao.getDutyList(jobCode);
		
		return dutyList;
	}
	
	// TBL_POST에 등록하기
	@Override
	public void insertRecruit(PostVO postvo) {
		cdao.insertRecruit(postvo);
		
	}
	
	// 채용공고관리페이지 띄우기
	@Override
	public int getTotalPost(String id) {
		int totalPost = cdao.getTotalPost(id);
		
		return totalPost;
	}
	
	//ajax로 Post호출하기
	@Override
	public List<Map<String, String>> getPost(Map<String, String> paraMap) {
		List<Map<String, String>> postList = cdao.getPost(paraMap);
		
		return postList;
	}

}
